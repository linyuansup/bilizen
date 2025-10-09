// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playback.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PlaybackSetting _$PlaybackSettingFromJson(Map<String, dynamic> json) =>
    _PlaybackSetting(
      playOnStart: json['playOnStart'] as bool,
      audioDevice: json['audioDevice'] as String?,
    );

Map<String, dynamic> _$PlaybackSettingToJson(_PlaybackSetting instance) =>
    <String, dynamic>{
      'playOnStart': instance.playOnStart,
      'audioDevice': instance.audioDevice,
    };
