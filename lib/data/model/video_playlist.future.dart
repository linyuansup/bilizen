// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// FutureClassGenerator
// **************************************************************************

// ignore_for_file: unused_element
part of 'video_playlist.dart';

abstract class _$VideoPlaylist extends FutureClassBase {
  static const String _onlineUserKey = 'onlineUser';

  Future<String> get $onlineUser async {
    if (isCached(_onlineUserKey)) {
      return getCached<String>(_onlineUserKey)!;
    }

    await online();
    return getCached<String>(_onlineUserKey)!;
  }

  void setOnlineUser(String value) {
    setCached(_onlineUserKey, value);
  }

  void clearOnlineUser() {
    clearCached(_onlineUserKey);
  }

  Future<void> online();
}
