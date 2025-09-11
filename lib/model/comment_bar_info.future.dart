// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// FutureClassGenerator
// **************************************************************************

// ignore_for_file: unused_element
part of 'comment_bar_info.dart';

abstract class _$CommentBarInfo extends FutureClassBase {
  static const String _readOnlyKey = 'readOnly';

  Future<bool> get $readOnly async {
    if (isCached(_readOnlyKey)) {
      return getCached<bool>(_readOnlyKey)!;
    }

    await basicInfo();
    return getCached<bool>(_readOnlyKey)!;
  }

  void setReadOnly(bool value) {
    setCached(_readOnlyKey, value);
  }

  void clearReadOnly() {
    clearCached(_readOnlyKey);
  }

  Future<void> basicInfo();

  static const String _userKey = 'user';

  Future<User> get $user async {
    if (isCached(_userKey)) {
      return getCached<User>(_userKey)!;
    }

    await basicInfo();
    return getCached<User>(_userKey)!;
  }

  void setUser(User value) {
    setCached(_userKey, value);
  }

  void clearUser() {
    clearCached(_userKey);
  }
}
