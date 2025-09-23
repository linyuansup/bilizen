// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotkey.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HotKeyStorageElement _$HotKeyStorageElementFromJson(
  Map<String, dynamic> json,
) => HotKeyStorageElement(
  action: json['action'] as String,
  jsonKey: json['jsonKey'] as Map<String, dynamic>?,
  globalJsonKey: json['globalJsonKey'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$HotKeyStorageElementToJson(
  HotKeyStorageElement instance,
) => <String, dynamic>{
  'action': instance.action,
  'jsonKey': instance.jsonKey,
  'globalJsonKey': instance.globalJsonKey,
};

_HotkeySetting _$HotkeySettingFromJson(Map<String, dynamic> json) =>
    _HotkeySetting(
      hotkeys: (json['hotkeys'] as List<dynamic>)
          .map((e) => HotKeyStorageElement.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HotkeySettingToJson(_HotkeySetting instance) =>
    <String, dynamic>{'hotkeys': instance.hotkeys};
