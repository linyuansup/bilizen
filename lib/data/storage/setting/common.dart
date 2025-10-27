import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'common.freezed.dart';
part 'common.g.dart';

const _commonSettingKey = "common_setting";

@freezed
sealed class CommonSetting with _$CommonSetting {
  factory CommonSetting.fromJson(Map<String, dynamic> json) =>
      _$CommonSettingFromJson(json);

  const factory CommonSetting({
    required bool enablePlaybackHardwareAcceleration,
  }) = _CommonSetting;

  static CommonSetting init() => CommonSetting(
    enablePlaybackHardwareAcceleration: true,
  );
}

@singleton
class CommonSettingStorage {
  final SharedPreferences _pref;

  CommonSettingStorage(this._pref);

  CommonSetting getCommonSetting() {
    final jsonString = _pref.getString(_commonSettingKey);
    if (jsonString != null) {
      final Map<String, dynamic> json = Map<String, dynamic>.from(
        jsonDecode(jsonString),
      );
      return CommonSetting.fromJson(json);
    }
    return CommonSetting.init();
  }

  Future<void> setCommonSetting(CommonSetting setting) async {
    final jsonString = jsonEncode(setting.toJson());
    await _pref.setString(_commonSettingKey, jsonString);
  }
}
