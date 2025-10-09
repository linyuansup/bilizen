import 'dart:convert';

import 'package:bilizen/ui/windows/page/home/center/setting/info/hotkey/provider.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'hotkey.freezed.dart';
part 'hotkey.g.dart';

const _hotkeySettingKey = "hotkey_setting";

@JsonSerializable()
class HotKeyStorageElement {
  final String action;
  final Map<String, dynamic>? jsonKey;
  final Map<String, dynamic>? globalJsonKey;

  HotKeyStorageElement({
    required this.action,
    required this.jsonKey,
    required this.globalJsonKey,
  });

  factory HotKeyStorageElement.fromJson(Map<String, dynamic> json) =>
      _$HotKeyStorageElementFromJson(json);

  Map<String, dynamic> toJson() => _$HotKeyStorageElementToJson(this);
}

@freezed
sealed class HotkeySetting with _$HotkeySetting {
  factory HotkeySetting.fromJson(Map<String, dynamic> json) =>
      _$HotkeySettingFromJson(json);

  const factory HotkeySetting({
    required List<HotKeyStorageElement> hotkeys,
  }) = _HotkeySetting;

  static HotkeySetting init() => HotkeySetting(
    hotkeys: [
      HotKeyStorageElement(
        action: HotKeyAction.playOrPause.name,
        jsonKey: null,
        globalJsonKey: null,
      ),
      HotKeyStorageElement(
        action: HotKeyAction.previous.name,
        jsonKey: null,
        globalJsonKey: null,
      ),
      HotKeyStorageElement(
        action: HotKeyAction.next.name,
        jsonKey: null,
        globalJsonKey: null,
      ),
    ],
  );
}

@singleton
class HotkeySettingStorage {
  final SharedPreferences _pref;

  HotkeySettingStorage(this._pref);

  HotkeySetting getHotkeySetting() {
    final jsonString = _pref.getString(_hotkeySettingKey);
    if (jsonString != null) {
      final Map<String, dynamic> json = Map<String, dynamic>.from(
        jsonDecode(jsonString),
      );
      return HotkeySetting.fromJson(json);
    }
    return HotkeySetting.init();
  }

  Future<void> setHotkeySetting(HotkeySetting setting) async {
    final jsonString = jsonEncode(setting.toJson());
    await _pref.setString(_hotkeySettingKey, jsonString);
  }
}
