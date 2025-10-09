// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// FutureClassGenerator
// **************************************************************************

// ignore_for_file: unused_element
part of 'self.dart';

abstract class _$Self extends FutureClassBase {
  static const String _userKey = 'user';

  Future<User> get $user async {
    if (isCached(_userKey)) {
      return getCached<User>(_userKey)!;
    }

    await selfUserLoader();
    return getCached<User>(_userKey)!;
  }

  void setUser(User value) {
    setCached(_userKey, value);
  }

  void clearUser() {
    clearCached(_userKey);
  }

  Future<void> selfUserLoader();
}
