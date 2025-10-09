// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playing_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PlayingItem _$PlayingItemFromJson(Map<String, dynamic> json) => _PlayingItem(
  bvid: json['bvid'] as String,
  pIndex: (json['pIndex'] as num).toInt(),
  position: (json['position'] as num).toInt(),
);

Map<String, dynamic> _$PlayingItemToJson(_PlayingItem instance) =>
    <String, dynamic>{
      'bvid': instance.bvid,
      'pIndex': instance.pIndex,
      'position': instance.position,
    };
