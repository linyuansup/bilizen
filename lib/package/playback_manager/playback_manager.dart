import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/model/play_item.dart';
import 'package:bilizen/package/talker_extension/playback.dart';
import 'package:bilizen/package/video_online_manager.dart';
import 'package:bilizen/ui/windows/page/router.dart';
import 'package:bilizen/util/toastification.dart';
import 'package:injectable/injectable.dart';
import 'package:media_kit/media_kit.dart';
import 'package:rxdart/rxdart.dart';
import 'package:talker_flutter/talker_flutter.dart';

enum SwitchMode {
  random,
  order,
  repeat,
}

class PlayingItem {
  final PlayItem item;
  final Duration position;
  final bool isPlaying;
  final AudioUrl audioFormat;
  final VideoUrl videoFormat;
  final String onlineUser;

  PlayingItem({
    required this.item,
    required this.position,
    required this.isPlaying,
    required this.audioFormat,
    required this.videoFormat,
    required this.onlineUser,
  });
}

@singleton
class PlaybackManager {
  final BehaviorSubject<List<PlayItem>> playlist =
      BehaviorSubject<List<PlayItem>>.seeded([]);
  final BehaviorSubject<PlayingItem?> currentPlaying =
      BehaviorSubject<PlayingItem?>.seeded(null);
  final BehaviorSubject<double> volume = BehaviorSubject.seeded(100.0);
  final BehaviorSubject<SwitchMode> switchMode = BehaviorSubject.seeded(
    SwitchMode.order,
  );

  final Player player = Player(
    configuration: PlayerConfiguration(logLevel: MPVLogLevel.debug),
  );
  final Talker _talker;
  final VideoOnlineManager _videoOnlineManager;
  final WindowsRouter _router = getIt<WindowsRouter>();

  PlaybackManager({
    required Talker talker,
    required VideoOnlineManager videoOnlineManager,
  }) : _talker = talker,
       _videoOnlineManager = videoOnlineManager {
    player.stream.volume.listen((v) => volume.add(v));
    player.stream.log.listen((log) {
      _talker.playback(
        "Player log: ${log.text} (level: ${log.level}, prefix: ${log.prefix})",
      );
    });
    player.stream.completed.listen((complete) async {
      if (!complete) {
        return;
      }
      if (_router.video.context.mounted) {
        _talker.playback("In the video page, skip auto-next");
        return;
      }
      await next();
    });
    CombineLatestStream(
      [
        player.stream.position,
        player.stream.playing,
        _videoOnlineManager.stream,
      ],
      (value) {
        final current = currentPlaying.value;
        if (current == null) return null;
        return PlayingItem(
          item: current.item,
          position: value[0] as Duration,
          isPlaying: value[1] as bool,
          audioFormat: current.audioFormat,
          videoFormat: current.videoFormat,
          onlineUser: value[2] as String,
        );
      },
    ).listen((playingItem) => currentPlaying.add(playingItem));
  }

  Future<void> next() async {
    final current = currentPlaying.value;
    if (current == null) {
      await _startNew(playlist.value.first);
      return;
    }
    final int nextIndex;
    switch (switchMode.value) {
      case SwitchMode.random:
        nextIndex = (playlist.value..shuffle()).indexWhere(
          (item) => item != current.item,
        );
        break;
      case SwitchMode.order:
        nextIndex = _indexOfItem(current.item) + 1 > playlist.value.length - 1
            ? 0
            : _indexOfItem(current.item) + 1;
        break;
      case SwitchMode.repeat:
        nextIndex = _indexOfItem(current.item);
        break;
    }
    await _startNew(playlist.value[nextIndex]);
  }

  Future<void> previous() async {
    final current = currentPlaying.value;
    if (current == null) {
      await _startNew(playlist.value.last);
      return;
    }
    final int prevIndex;
    switch (switchMode.value) {
      case SwitchMode.random:
        prevIndex = (playlist.value..shuffle()).indexWhere(
          (item) => item != current.item,
        );
        break;
      case SwitchMode.order:
        prevIndex = _indexOfItem(current.item) - 1 < 0
            ? playlist.value.length - 1
            : _indexOfItem(current.item) - 1;
        break;
      case SwitchMode.repeat:
        prevIndex = _indexOfItem(current.item);
        break;
    }
    await _startNew(playlist.value[prevIndex]);
  }

  Future<void> seekTo(int index) async {
    if (playlist.value.isEmpty) {
      _talker.playback("Playlist is empty.");
      return;
    }
    if (index < 0 || index >= playlist.value.length) {
      _talker.playback("Index out of bounds: $index");
      return;
    }
    await _startNew(playlist.value[index]);
  }

  Future<void> seek(Duration duration) async {
    final playing = currentPlaying.value;
    if (playing == null) {
      _talker.playback("No item is currently playing.");
      return;
    }
    if ((await playing.item.video.playlist)[playing.item.pIndex - 1].duration <
        duration.inSeconds) {
      _talker.playback("Seeking beyond video duration.");
      return;
    }
    await player.seek(duration);
  }

  Future<void> play() async {
    if (currentPlaying.value == null) {
      _talker.playback("No item is currently playing.");
      return;
    }
    await player.play();
  }

  Future<void> pause() async => await player.pause();

  Future<void> setAudioFormat(AudioFormat format) async {
    final available = await currentPlaying.value?.item.audioUrl;
    final chosen = _selectByPredicate<AudioUrl>(
      available,
      (a) => a.format == format,
    );
    if (chosen == null) return;
    await _startNew(
      currentPlaying.value!.item,
      currentPlaying.value!.position,
      chosen,
      currentPlaying.value!.videoFormat,
    );
  }

  Future<void> setVideoFormat(VideoFormat format) async {
    final available = await currentPlaying.value?.item.videoUrl;
    final chosen = _selectByPredicate<VideoUrl>(
      available,
      (v) => v.format == format,
    );
    if (chosen == null) return;
    await _startNew(
      currentPlaying.value!.item,
      currentPlaying.value!.position,
      currentPlaying.value!.audioFormat,
      chosen,
    );
  }

  Future<void> setVolume(double vol) async {
    await player.setVolume(vol);
  }

  Future<void> addPlayItem(PlayItem item) async {
    if (_alreadyInPlaylist(item)) {
      _startNew(item);
      return;
    }
    if (playlist.value.isEmpty) {
      playlist.add([item]);
      await _startNew(item);
      return;
    }
    if (currentPlaying.value == null) {
      insertPlayItemAtLast(item);
      await _startNew(item);
      return;
    }
    final index = _indexOfItem(currentPlaying.value!.item);
    if (index == -1) {
      _talker.playback(
        "Item not found in playlist: ${currentPlaying.value!.item.video.bid} at p${currentPlaying.value!.item.pIndex}",
      );
      insertPlayItemAtLast(item);
      await _startNew(item);
      return;
    }
    insertPlayItem(index, item);
    await _startNew(item);
  }

  void insertPlayItem(int index, PlayItem item) {
    if (_alreadyInPlaylist(item)) {
      _startNew(item);
      return;
    }
    playlist.add([
      ...playlist.value.sublist(0, index + 1),
      item,
      ...playlist.value.sublist(index + 1),
    ]);
  }

  void insertPlayItemAtFirst(PlayItem item) =>
      playlist.add([item, ...playlist.value]);

  void insertPlayItemAtLast(PlayItem item) =>
      playlist.add([...playlist.value, item]);

  Future<void> removePlayItem(int index) async {
    if (currentPlaying.value?.item == playlist.value[index]) {
      await player.stop();
      currentPlaying.add(null);
    }
    playlist.add([
      ...playlist.value.sublist(0, index),
      ...playlist.value.sublist(index + 1),
    ]);
  }

  void setSwitchMode(SwitchMode mode) => switchMode.add(mode);

  int _indexOfItem(PlayItem item) =>
      playlist.value.indexWhere((e) => e == item);

  T? _selectByPredicate<T>(List<T>? list, bool Function(T) predicate) {
    if (list == null) return null;
    final idx = list.indexWhere(predicate);
    if (idx == -1) return null;
    return list[idx];
  }

  bool _alreadyInPlaylist(PlayItem item) => playlist.value.any(
    (e) => e.video.bid == item.video.bid && e.pIndex == item.pIndex,
  );

  Future<void> _startNew(
    PlayItem item, [
    Duration position = Duration.zero,
    AudioUrl? audioUrl,
    VideoUrl? videoUrl,
  ]) async {
    audioUrl ??= (await item.audioUrl).reduce(
      (a, b) => a.format.id > b.format.id ? a : b,
    );
    videoUrl ??= (await item.videoUrl).reduce(
      (a, b) => a.format.id > b.format.id ? a : b,
    );

    await player.pause();
    await player.open(
      Media(
        videoUrl.url,
        httpHeaders: {
          "accept": "*/*",
          "referer": "https://www.bilibili.com/video/${item.video.bid}/",
          "user-agent":
              "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0",
          "accept-encoding": "identity",
          "accept-language":
              "zh-CN,zh;q=0.9,en;q=0.8,en-GB;q=0.7,en-US;q=0.6,ja;q=0.5",
          "cache-control": "no-cache",
          "dnt": "1",
          "origin": "https://www.bilibili.com",
          "pragma": "no-cache",
          "priority": "u=1, i",
          "sec-ch-ua":
              "\"Not;A=Brand\";v=\"99\", \"Microsoft Edge\";v=\"139\", \"Chromium\";v=\"139\"",
          "sec-ch-ua-mobile": "?0",
          "sec-ch-ua-platform": "\"Windows\"",
          "sec-fetch-dest": "empty",
          "sec-fetch-mode": "cors",
          "sec-fetch-site": "cross-site",
        },
        start: position,
      ),
      play: false,
    );
    await (player.platform as NativePlayer).setProperty(
      "audio-files",
      audioUrl.url,
    );
    await _videoOnlineManager.changeTo(item.video.bid, await item.getCid());
    currentPlaying.add(
      PlayingItem(
        item: item,
        position: position,
        isPlaying: true,
        audioFormat: audioUrl,
        videoFormat: videoUrl,
        onlineUser: "0",
      ),
    );
    if (!_hasAudioDevices()) {
      Toast.error(
        "音频引擎启动失败",
        description: "请检查系统音频服务是否正常运行",
      );
      return;
    }
    await player.play();
  }

  bool _hasAudioDevices() => player.state.audioDevices.length > 1;
}
