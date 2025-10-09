import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'tool.freezed.dart';
part 'tool.g.dart';

const _toolSettingKey = "tool_setting";

@freezed
sealed class ToolSetting with _$ToolSetting {
  factory ToolSetting.fromJson(Map<String, dynamic> json) =>
      _$ToolSettingFromJson(json);

  const factory ToolSetting({
    required bool useProxy,
    String? proxyAddress,
    String? proxyPort,
  }) = _ToolSetting;

  static ToolSetting init() => ToolSetting(
    useProxy: false,
    proxyAddress: null,
    proxyPort: null,
  );
}

@singleton
class ToolSettingStorage {
  final SharedPreferences _pref;

  ToolSettingStorage(this._pref);

  ToolSetting getToolSetting() {
    final jsonString = _pref.getString(_toolSettingKey);
    if (jsonString != null) {
      final Map<String, dynamic> json = Map<String, dynamic>.from(
        jsonDecode(jsonString),
      );
      return ToolSetting.fromJson(json);
    }
    return ToolSetting.init();
  }

  Future<void> setToolSetting(ToolSetting setting) async {
    final jsonString = jsonEncode(setting.toJson());
    await _pref.setString(_toolSettingKey, jsonString);
  }
}
