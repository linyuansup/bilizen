// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// FutureClassGenerator
// **************************************************************************

// ignore_for_file: unused_element
part of 'video.dart';

abstract class _$Video extends FutureClassBase {
  static const String _videosNumKey = 'videosNum';

  Future<int> get $videosNum async {
    if (isCached(_videosNumKey)) {
      return getCached<int>(_videosNumKey)!;
    }

    await plist();
    return getCached<int>(_videosNumKey)!;
  }

  void setVideosNum(int value) {
    setCached(_videosNumKey, value);
  }

  void clearVideosNum() {
    clearCached(_videosNumKey);
  }

  Future<void> plist();

  static const String _coverKey = 'cover';

  Future<String> get $cover async {
    if (isCached(_coverKey)) {
      return getCached<String>(_coverKey)!;
    }

    await cache();
    return getCached<String>(_coverKey)!;
  }

  void setCover(String value) {
    setCached(_coverKey, value);
  }

  void clearCover() {
    clearCached(_coverKey);
  }

  Future<void> cache();

  static const String _titleKey = 'title';

  Future<String> get $title async {
    if (isCached(_titleKey)) {
      return getCached<String>(_titleKey)!;
    }

    await cache();
    return getCached<String>(_titleKey)!;
  }

  void setTitle(String value) {
    setCached(_titleKey, value);
  }

  void clearTitle() {
    clearCached(_titleKey);
  }

  static const String _descriptionKey = 'description';

  Future<String> get $description async {
    if (isCached(_descriptionKey)) {
      return getCached<String>(_descriptionKey)!;
    }

    await basicInfo();
    return getCached<String>(_descriptionKey)!;
  }

  void setDescription(String value) {
    setCached(_descriptionKey, value);
  }

  void clearDescription() {
    clearCached(_descriptionKey);
  }

  Future<void> basicInfo();

  static const String _totalDurationKey = 'totalDuration';

  Future<int> get $totalDuration async {
    if (isCached(_totalDurationKey)) {
      return getCached<int>(_totalDurationKey)!;
    }

    await basicInfo();
    return getCached<int>(_totalDurationKey)!;
  }

  void setTotalDuration(int value) {
    setCached(_totalDurationKey, value);
  }

  void clearTotalDuration() {
    clearCached(_totalDurationKey);
  }

  static const String _uploaderKey = 'uploader';

  Future<User> get $uploader async {
    if (isCached(_uploaderKey)) {
      return getCached<User>(_uploaderKey)!;
    }

    await cache();
    return getCached<User>(_uploaderKey)!;
  }

  void setUploader(User value) {
    setCached(_uploaderKey, value);
  }

  void clearUploader() {
    clearCached(_uploaderKey);
  }

  static const String _argumentKey = 'argument';

  Future<String> get $argument async {
    if (isCached(_argumentKey)) {
      return getCached<String>(_argumentKey)!;
    }

    await basicInfo();
    return getCached<String>(_argumentKey)!;
  }

  void setArgument(String value) {
    setCached(_argumentKey, value);
  }

  void clearArgument() {
    clearCached(_argumentKey);
  }

  static const String _playlistKey = 'playlist';

  Future<List<VideoPlaylist>> get $playlist async {
    if (isCached(_playlistKey)) {
      return getCached<List<VideoPlaylist>>(_playlistKey)!;
    }

    await plist();
    return getCached<List<VideoPlaylist>>(_playlistKey)!;
  }

  void setPlaylist(List<VideoPlaylist> value) {
    setCached(_playlistKey, value);
  }

  void clearPlaylist() {
    clearCached(_playlistKey);
  }

  static const String _staffKey = 'staff';

  Future<List<Staff>> get $staff async {
    if (isCached(_staffKey)) {
      return getCached<List<Staff>>(_staffKey)!;
    }

    await basicInfo();
    return getCached<List<Staff>>(_staffKey)!;
  }

  void setStaff(List<Staff> value) {
    setCached(_staffKey, value);
  }

  void clearStaff() {
    clearCached(_staffKey);
  }

  static const String _viewKey = 'view';

  Future<int> get $view async {
    if (isCached(_viewKey)) {
      return getCached<int>(_viewKey)!;
    }

    await basicInfo();
    return getCached<int>(_viewKey)!;
  }

  void setView(int value) {
    setCached(_viewKey, value);
  }

  void clearView() {
    clearCached(_viewKey);
  }

  static const String _danmakuKey = 'danmaku';

  Future<int> get $danmaku async {
    if (isCached(_danmakuKey)) {
      return getCached<int>(_danmakuKey)!;
    }

    await basicInfo();
    return getCached<int>(_danmakuKey)!;
  }

  void setDanmaku(int value) {
    setCached(_danmakuKey, value);
  }

  void clearDanmaku() {
    clearCached(_danmakuKey);
  }

  static const String _replyKey = 'reply';

  Future<int> get $reply async {
    if (isCached(_replyKey)) {
      return getCached<int>(_replyKey)!;
    }

    await basicInfo();
    return getCached<int>(_replyKey)!;
  }

  void setReply(int value) {
    setCached(_replyKey, value);
  }

  void clearReply() {
    clearCached(_replyKey);
  }

  static const String _favoriteKey = 'favorite';

  Future<int> get $favorite async {
    if (isCached(_favoriteKey)) {
      return getCached<int>(_favoriteKey)!;
    }

    await basicInfo();
    return getCached<int>(_favoriteKey)!;
  }

  void setFavorite(int value) {
    setCached(_favoriteKey, value);
  }

  void clearFavorite() {
    clearCached(_favoriteKey);
  }

  static const String _coinKey = 'coin';

  Future<int> get $coin async {
    if (isCached(_coinKey)) {
      return getCached<int>(_coinKey)!;
    }

    await basicInfo();
    return getCached<int>(_coinKey)!;
  }

  void setCoin(int value) {
    setCached(_coinKey, value);
  }

  void clearCoin() {
    clearCached(_coinKey);
  }

  static const String _uploadTimeKey = 'uploadTime';

  Future<int> get $uploadTime async {
    if (isCached(_uploadTimeKey)) {
      return getCached<int>(_uploadTimeKey)!;
    }

    await basicInfo();
    return getCached<int>(_uploadTimeKey)!;
  }

  void setUploadTime(int value) {
    setCached(_uploadTimeKey, value);
  }

  void clearUploadTime() {
    clearCached(_uploadTimeKey);
  }

  static const String _shareKey = 'share';

  Future<int> get $share async {
    if (isCached(_shareKey)) {
      return getCached<int>(_shareKey)!;
    }

    await basicInfo();
    return getCached<int>(_shareKey)!;
  }

  void setShare(int value) {
    setCached(_shareKey, value);
  }

  void clearShare() {
    clearCached(_shareKey);
  }

  static const String _likeKey = 'like';

  Future<int> get $like async {
    if (isCached(_likeKey)) {
      return getCached<int>(_likeKey)!;
    }

    await basicInfo();
    return getCached<int>(_likeKey)!;
  }

  void setLike(int value) {
    setCached(_likeKey, value);
  }

  void clearLike() {
    clearCached(_likeKey);
  }
}
