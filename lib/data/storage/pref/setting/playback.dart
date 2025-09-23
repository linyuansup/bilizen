import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'playback.freezed.dart';
part 'playback.g.dart';

const _playbackSettingKey = "playback_setting";

@freezed
sealed class PlaybackSetting with _$PlaybackSetting {
  factory PlaybackSetting.fromJson(Map<String, dynamic> json) =>
      _$PlaybackSettingFromJson(json);

  const factory PlaybackSetting({
    required bool playOnStart,
    required String? audioDevice,
  }) = _PlaybackSetting;

  static PlaybackSetting init() =>
      PlaybackSetting(playOnStart: true, audioDevice: null);
}

@singleton
class PlaybackSettingStorage {
  final SharedPreferences _pref;

  PlaybackSettingStorage(this._pref);

  PlaybackSetting getPlaybackSetting() {
    final jsonString = _pref.getString(_playbackSettingKey);
    if (jsonString != null) {
      final Map<String, dynamic> json = Map<String, dynamic>.from(
        jsonDecode(jsonString),
      );
      return PlaybackSetting.fromJson(json);
    }
    return PlaybackSetting.init();
  }

  Future<void> setPlaybackSetting(PlaybackSetting setting) async {
    final jsonString = jsonEncode(setting.toJson());
    await _pref.setString(_playbackSettingKey, jsonString);
  }
}
