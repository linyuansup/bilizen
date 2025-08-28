// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// FutureClassGenerator
// **************************************************************************

// ignore_for_file: unused_element
part of 'user.dart';

abstract class _$User extends FutureClassBase {
  static const String _nickNameKey = 'nickName';

  Future<String> get $nickName async {
    if (isCached(_nickNameKey)) {
      return getCached<String>(_nickNameKey)!;
    }

    await basicInfo();
    return getCached<String>(_nickNameKey)!;
  }

  void setNickName(String value) {
    setCached(_nickNameKey, value);
  }

  void clearNickName() {
    clearCached(_nickNameKey);
  }

  Future<void> basicInfo();

  static const String _avatarKey = 'avatar';

  Future<String> get $avatar async {
    if (isCached(_avatarKey)) {
      return getCached<String>(_avatarKey)!;
    }

    await basicInfo();
    return getCached<String>(_avatarKey)!;
  }

  void setAvatar(String value) {
    setCached(_avatarKey, value);
  }

  void clearAvatar() {
    clearCached(_avatarKey);
  }

  static const String _sexKey = 'sex';

  Future<String> get $sex async {
    if (isCached(_sexKey)) {
      return getCached<String>(_sexKey)!;
    }

    await basicInfo();
    return getCached<String>(_sexKey)!;
  }

  void setSex(String value) {
    setCached(_sexKey, value);
  }

  void clearSex() {
    clearCached(_sexKey);
  }

  static const String _levelKey = 'level';

  Future<int> get $level async {
    if (isCached(_levelKey)) {
      return getCached<int>(_levelKey)!;
    }

    await basicInfo();
    return getCached<int>(_levelKey)!;
  }

  void setLevel(int value) {
    setCached(_levelKey, value);
  }

  void clearLevel() {
    clearCached(_levelKey);
  }

  static const String _isFollowedKey = 'isFollowed';

  Future<bool> get $isFollowed async {
    if (isCached(_isFollowedKey)) {
      return getCached<bool>(_isFollowedKey)!;
    }

    await basicInfo();
    return getCached<bool>(_isFollowedKey)!;
  }

  void setIsFollowed(bool value) {
    setCached(_isFollowedKey, value);
  }

  void clearIsFollowed() {
    clearCached(_isFollowedKey);
  }

  static const String _archiveCountKey = 'archiveCount';

  Future<int> get $archiveCount async {
    if (isCached(_archiveCountKey)) {
      return getCached<int>(_archiveCountKey)!;
    }

    await cardInfo();
    return getCached<int>(_archiveCountKey)!;
  }

  void setArchiveCount(int value) {
    setCached(_archiveCountKey, value);
  }

  void clearArchiveCount() {
    clearCached(_archiveCountKey);
  }

  Future<void> cardInfo();

  static const String _likeNumKey = 'likeNum';

  Future<int> get $likeNum async {
    if (isCached(_likeNumKey)) {
      return getCached<int>(_likeNumKey)!;
    }

    await cardInfo();
    return getCached<int>(_likeNumKey)!;
  }

  void setLikeNum(int value) {
    setCached(_likeNumKey, value);
  }

  void clearLikeNum() {
    clearCached(_likeNumKey);
  }

  static const String _fansKey = 'fans';

  Future<int> get $fans async {
    if (isCached(_fansKey)) {
      return getCached<int>(_fansKey)!;
    }

    await cardInfo();
    return getCached<int>(_fansKey)!;
  }

  void setFans(int value) {
    setCached(_fansKey, value);
  }

  void clearFans() {
    clearCached(_fansKey);
  }

  static const String _focusKey = 'focus';

  Future<int> get $focus async {
    if (isCached(_focusKey)) {
      return getCached<int>(_focusKey)!;
    }

    await cardInfo();
    return getCached<int>(_focusKey)!;
  }

  void setFocus(int value) {
    setCached(_focusKey, value);
  }

  void clearFocus() {
    clearCached(_focusKey);
  }

  static const String _signKey = 'sign';

  Future<String> get $sign async {
    if (isCached(_signKey)) {
      return getCached<String>(_signKey)!;
    }

    await cardInfo();
    return getCached<String>(_signKey)!;
  }

  void setSign(String value) {
    setCached(_signKey, value);
  }

  void clearSign() {
    clearCached(_signKey);
  }
}
