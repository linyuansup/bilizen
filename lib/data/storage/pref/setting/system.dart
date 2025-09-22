import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'system.freezed.dart';
part 'system.g.dart';

const _systemSettingKey = "system_setting";

@freezed
sealed class SystemSetting with _$SystemSetting {
  factory SystemSetting.fromJson(Map<String, dynamic> json) =>
      _$SystemSettingFromJson(json);

  const factory SystemSetting({
    required bool closeMainPanelToTray,
  }) = _SystemSetting;

  static SystemSetting init() => SystemSetting(
    closeMainPanelToTray: true,
  );
}

@singleton
class SystemSettingStorage {
  final SharedPreferences _pref;

  SystemSettingStorage(this._pref);

  SystemSetting getSystemSetting() {
    final jsonString = _pref.getString(_systemSettingKey);
    if (jsonString != null) {
      final Map<String, dynamic> json = Map<String, dynamic>.from(
        jsonDecode(jsonString),
      );
      return SystemSetting.fromJson(json);
    }
    return SystemSetting.init();
  }

  Future<void> setSystemSetting(SystemSetting setting) async {
    final jsonString = jsonEncode(setting.toJson());
    await _pref.setString(_systemSettingKey, jsonString);
  }
}
