import 'package:bilizen/data/api/video/video_stream_url.dart';
import 'package:bilizen/data/model/video.dart';
import 'package:bilizen/package/future_class/annotations.dart';
import 'package:bilizen/package/future_class/future_class_base.dart';
import 'package:bilizen/inject/inject.dart';

part 'play_item.future.dart';

@futureClass
class PlayItem extends _$PlayItem {
  final Video video;
  final int pIndex;

  final _videoStreamUrlApi = getIt<VideoStreamUrlApi>();

  PlayItem({required this.video, required this.pIndex});

  @FutureData(loader: "playback")
  Future<List<VideoUrl>> get videoUrl => $videoUrl;

  @FutureData(loader: "playback")
  Future<List<AudioUrl>> get audioUrl => $audioUrl;

  AudioUrl _createAudioUrl(Map<String, dynamic> data) {
    return AudioUrl(
      format: AudioFormatX.fromId(data["id"]),
      url: data["baseUrl"],
      backupUrl: (data["backupUrl"] as List).cast<String>(),
    );
  }

  VideoUrl _createVideoUrl(Map<String, dynamic> data) {
    return VideoUrl(
      format: VideoFormatX.fromId(data["id"]),
      url: data["baseUrl"],
      backupUrl: (data["backupUrl"] as List).cast<String>(),
    );
  }

  List<AudioUrl> _parseAudioUrls(Map<String, dynamic> dashData) {
    final audioUrls = (dashData["audio"] as List)
        .map((e) => _createAudioUrl(e))
        .toList();
    final flacAudio = dashData["flac"]?["audio"];
    if (flacAudio != null) {
      audioUrls.add(_createAudioUrl(flacAudio));
    }
    final dolbyAudio = dashData["dolby"]?["audio"];
    if (dolbyAudio != null) {
      audioUrls.add(_createAudioUrl(dolbyAudio));
    }

    return audioUrls;
  }

  List<VideoUrl> _parseVideoUrls(Map<String, dynamic> dashData) {
    return (dashData["video"] as List).map((e) => _createVideoUrl(e)).toList();
  }

  @override
  Future<void> playback() async {
    final playlist = await video.playlist;
    final targetItem = playlist.firstWhere(
      (item) => item.index == pIndex,
      orElse: () => throw ArgumentError('未找到对应的播放项: pIndex=$pIndex'),
    );
    final playUrl = await _videoStreamUrlApi.getPlayUrl(
      targetItem.bvid,
      targetItem.cid,
    );
    final dashData = playUrl["data"]["dash"];
    final videoUrls = _parseVideoUrls(dashData);
    final audioUrls = _parseAudioUrls(dashData);
    setVideoUrl(videoUrls);
    setAudioUrl(audioUrls);
  }
}

class VideoUrl {
  final VideoFormat format;
  final String url;
  final List<String> backupUrl;

  VideoUrl({required this.format, required this.url, required this.backupUrl});
}

class AudioUrl {
  final AudioFormat format;
  final String url;
  final List<String> backupUrl;

  AudioUrl({required this.format, required this.url, required this.backupUrl});
}

const _audioIdMap = {
  AudioFormat.k64: 30216,
  AudioFormat.k132: 30232,
  AudioFormat.k192: 30280,
  AudioFormat.dolby: 30250,
  AudioFormat.hires: 30251,
};

enum AudioFormat {
  k64,
  k132,
  k192,
  dolby,
  hires,
}

extension AudioFormatX on AudioFormat {
  int get id => _audioIdMap[this]!;

  static AudioFormat fromId(int id) {
    final entry = _audioIdMap.entries.firstWhere(
      (e) => e.value == id,
      orElse: () => throw ArgumentError('不支持的音频格式ID: $id'),
    );
    return entry.key;
  }
}

const _videoIdMap = {
  VideoFormat.p240: 6,
  VideoFormat.p360: 16,
  VideoFormat.p480: 32,
  VideoFormat.p720: 64,
  VideoFormat.p720fps60: 74,
  VideoFormat.p1080: 80,
  VideoFormat.aiRepair: 100,
  VideoFormat.p1080plus: 112,
  VideoFormat.p1080fps60: 116,
  VideoFormat.k4: 120,
  VideoFormat.hdr: 125,
  VideoFormat.dolby: 126,
  VideoFormat.k8: 127,
};

enum VideoFormat {
  p240,
  p360,
  p480,
  p720,
  p720fps60,
  p1080,
  aiRepair,
  p1080plus,
  p1080fps60,
  k4,
  hdr,
  dolby,
  k8,
}

extension VideoFormatX on VideoFormat {
  int get id => _videoIdMap[this]!;

  static VideoFormat fromId(int id) {
    final entry = _videoIdMap.entries.firstWhere(
      (e) => e.value == id,
      orElse: () => throw ArgumentError('不支持的视频格式ID: $id'),
    );
    return entry.key;
  }
}
