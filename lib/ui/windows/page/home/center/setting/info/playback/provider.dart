import 'package:bilizen/data/storage/pref/setting/playback.dart';
import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/package/playback_manager/playback_controller.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:media_kit/media_kit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.freezed.dart';
part 'provider.g.dart';

@Riverpod(keepAlive: true, name: 'playbackProvider')
class PlaybackProvider extends _$PlaybackProvider {
  final _playbackController = getIt<PlaybackController>();
  final _storage = getIt<PlaybackSettingStorage>();

  @override
  PlaybackState build() {
    _playbackController.audioDevices.listen((event) {
      state = state.copyWith(
        devices: event.devices,
        currentAudioDeviceIndex: event.currentIndex,
      );
    });
    return PlaybackState(
      devices: _playbackController.audioDevices.value.devices,
      currentAudioDeviceIndex:
          _playbackController.audioDevices.value.currentIndex,
      playOnStart: _storage.getPlaybackSetting().playOnStart,
    );
  }

  Future<void> setAudioDevice(AudioDevice? value) async {
    if (value == null) return;
    await _playbackController.setAudioDevice(value);
  }

  Future<void> update(PlaybackState state) async {
    await _storage.setPlaybackSetting(
      PlaybackSetting(
        playOnStart: state.playOnStart,
        audioDevice: state.currentAudioDeviceIndex == null
            ? null
            : state.devices[state.currentAudioDeviceIndex!].name,
      ),
    );
    this.state = state;
  }
}

@freezed
sealed class PlaybackState with _$PlaybackState {
  const factory PlaybackState({
    required List<AudioDevice> devices,
    required int? currentAudioDeviceIndex,
    required bool playOnStart,
  }) = _PlaybackState;
}
