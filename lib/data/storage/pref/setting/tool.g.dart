// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tool.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ToolSetting _$ToolSettingFromJson(Map<String, dynamic> json) => _ToolSetting(
  useProxy: json['useProxy'] as bool,
  proxyAddress: json['proxyAddress'] as String?,
  proxyPort: json['proxyPort'] as String?,
);

Map<String, dynamic> _$ToolSettingToJson(_ToolSetting instance) =>
    <String, dynamic>{
      'useProxy': instance.useProxy,
      'proxyAddress': instance.proxyAddress,
      'proxyPort': instance.proxyPort,
    };
