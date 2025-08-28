// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// FutureClassGenerator
// **************************************************************************

// ignore_for_file: unused_element
part of 'play_item.dart';

abstract class _$PlayItem extends FutureClassBase {
  static const String _videoUrlKey = 'videoUrl';

  Future<List<VideoUrl>> get $videoUrl async {
    if (isCached(_videoUrlKey)) {
      return getCached<List<VideoUrl>>(_videoUrlKey)!;
    }

    await playback();
    return getCached<List<VideoUrl>>(_videoUrlKey)!;
  }

  void setVideoUrl(List<VideoUrl> value) {
    setCached(_videoUrlKey, value);
  }

  void clearVideoUrl() {
    clearCached(_videoUrlKey);
  }

  Future<void> playback();

  static const String _audioUrlKey = 'audioUrl';

  Future<List<AudioUrl>> get $audioUrl async {
    if (isCached(_audioUrlKey)) {
      return getCached<List<AudioUrl>>(_audioUrlKey)!;
    }

    await playback();
    return getCached<List<AudioUrl>>(_audioUrlKey)!;
  }

  void setAudioUrl(List<AudioUrl> value) {
    setCached(_audioUrlKey, value);
  }

  void clearAudioUrl() {
    clearCached(_audioUrlKey);
  }
}
