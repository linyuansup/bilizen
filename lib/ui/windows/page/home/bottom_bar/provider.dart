import 'package:bilizen/model/play_item.dart';
import 'package:bilizen/model/video.dart';
import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/package/playback_manager/playback_controller.dart';
import 'package:bilizen/package/talker_extension/playback.dart';
import 'package:clipboard/clipboard.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:talker/talker.dart';

part 'provider.freezed.dart';
part 'provider.g.dart';

@Riverpod(keepAlive: true, name: "bottomBarProvider")
class BottomBarProvider extends _$BottomBarProvider {
  final _playbackManager = getIt<PlaybackController>();

  @override
  BottomBarState build() {
    _playbackManager.playlist.listen((playlist) async {
      if (playlist.isEmpty) {
        await _setNotPlaying();
        return;
      }
      if (state is _NotPlaying) {
        await _fullSet();
        return;
      }
      state = (state as _Playing).copyWith(
        videos: await Future.wait(
          _playbackManager.playlist.value.map(
            (element) async {
              return await VideoState.fromVideo(element.video, element.pIndex);
            },
          ).toList(),
        ),
      );
    });

    _playbackManager.currentPlaying.listen((playing) async {
      if (playing == null) {
        await _setNotPlaying();
        return;
      }
      if (state is _NotPlaying) {
        await _fullSet();
        return;
      }
      state = (state as _Playing).copyWith(
        video: await VideoState.fromVideo(
          playing.item.video,
          playing.item.pIndex,
        ),
        process: playing.position.inSeconds,
        isPlaying: playing.isPlaying,
      );
    });

    _playbackManager.switchMode.listen((switchMode) async {
      if (state is _NotPlaying) {
        await _fullSet();
        return;
      }
      state = state.copyWith(switchMode: switchMode);
    });

    _playbackManager.volume.listen((volume) async {
      if (state is _Playing) {
        await _fullSet();
        return;
      }
      state = state.copyWith(volume: volume);
    });

    return BottomBarState.notPlaying(
      volume: _playbackManager.volume.value,
      switchMode: _playbackManager.switchMode.value,
      videos: [],
    );
  }

  Future<void> _setNotPlaying() async {
    state = BottomBarState.notPlaying(
      videos: await Future.wait(
        _playbackManager.playlist.value
            .map(
              (element) async =>
                  await VideoState.fromVideo(element.video, element.pIndex),
            )
            .toList(),
      ),
      volume: _playbackManager.volume.value,
      switchMode: _playbackManager.switchMode.value,
    );
  }

  Future<void> seek(int second) async {
    await _playbackManager.seek(Duration(seconds: second));
  }

  Future<void> _fullSet() async {
    final value = _playbackManager.currentPlaying.value;
    if (value == null) {
      state = BottomBarState.notPlaying(
        volume: _playbackManager.volume.value,
        switchMode: _playbackManager.switchMode.value,
        videos: [
          for (final element in _playbackManager.playlist.value)
            await VideoState.fromVideo(element.video, element.pIndex),
        ],
      );
      return;
    }
    final item = value.item;
    state = BottomBarState.playing(
      video: await VideoState.fromVideo(item.video, item.pIndex),
      process: value.position.inSeconds,
      isPlaying: value.isPlaying,
      volume: _playbackManager.volume.value,
      switchMode: _playbackManager.switchMode.value,
      audioFormat: value.audioFormat.format,
      videoFormat: value.videoFormat.format,
      videos: await Future.wait(
        _playbackManager.playlist.value
            .map(
              (element) async =>
                  await VideoState.fromVideo(element.video, element.pIndex),
            )
            .toList(),
      ),
    );
  }

  Future<void> changePlayMode() async {
    _playbackManager.setSwitchMode(
      SwitchMode.values[(_playbackManager.switchMode.value.index + 1) %
          SwitchMode.values.length],
    );
  }

  Future<void> setVolume(double value) async {
    await _playbackManager.setVolume(value);
  }

  Future<void> copyLink() async {
    final bvid = _playbackManager.currentPlaying.value?.item.video.bid;
    if (bvid == null) {
      getIt<Talker>().playback("fail on copy link, bvid is null");
      return;
    }
    await FlutterClipboard.copy("https://www.bilibili.com/video/$bvid");
  }

  Future<void> changePlaying() async {
    if (_playbackManager.currentPlaying.value?.isPlaying == true) {
      await _playbackManager.pause();
    } else {
      await _playbackManager.play();
    }
  }

  Future<void> previous() async {
    await _playbackManager.previous();
  }

  Future<void> next() async {
    await _playbackManager.next();
  }

  Future<void> playAt(int index) async {
    await _playbackManager.seekTo(index);
  }

  Future<void> removeAt(int index) async {
    await _playbackManager.removePlayItem(index);
  }

  Future<void> clear() async {
    await _playbackManager.clear();
  }
}

@freezed
sealed class BottomBarState with _$BottomBarState {
  const factory BottomBarState.notPlaying({
    required double volume,
    required SwitchMode switchMode,
    required List<VideoState> videos,
  }) = _NotPlaying;
  const factory BottomBarState.playing({
    required VideoState video,
    required int process,
    required bool isPlaying,
    required double volume,
    required SwitchMode switchMode,
    required AudioFormat audioFormat,
    required VideoFormat videoFormat,
    required List<VideoState> videos,
  }) = _Playing;
}

@freezed
sealed class VideoState with _$VideoState {
  const factory VideoState.data({
    required String title,
    required String cover,
    required int duration,
    required String uploaderAvatar,
    required String uploader,
    required int pIndex,
  }) = VideoStateData;

  static Future<VideoState> fromVideo(Video video, int pIndex) async {
    return VideoState.data(
      title: await video.title,
      duration: (await video.playlist)[pIndex - 1].duration,
      cover: await video.cover,
      uploaderAvatar: await (await video.uploader).avatar,
      uploader: await (await video.uploader).nickName,
      pIndex: pIndex,
    );
  }
}
