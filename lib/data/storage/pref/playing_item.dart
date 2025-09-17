import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'playing_item.freezed.dart';
part 'playing_item.g.dart';

const String _playingItemKey = 'playing_item';

@freezed
sealed class PlayingItem with _$PlayingItem {
  factory PlayingItem.fromJson(Map<String, dynamic> json) =>
      _$PlayingItemFromJson(json);

  const factory PlayingItem({
    required String bvid,
    required int pIndex,
    required int position,
  }) = _PlayingItem;
}

@singleton
class PlayingItemStorage {
  final SharedPreferences _pref;

  PlayingItemStorage(this._pref);

  Future<PlayingItem?> getPlayingItem() async {
    final jsonString = _pref.getString(_playingItemKey);
    if (jsonString != null) {
      final Map<String, dynamic> json = Map<String, dynamic>.from(
        jsonDecode(jsonString),
      );
      return PlayingItem.fromJson(json);
    }
    return null;
  }

  Future<void> setPlayingItem(PlayingItem? item) async {
    if (item == null) {
      await _pref.remove(_playingItemKey);
      return;
    }
    final jsonString = jsonEncode(item.toJson());
    await _pref.setString(_playingItemKey, jsonString);
  }
}
