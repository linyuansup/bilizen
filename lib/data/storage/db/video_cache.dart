import 'package:bilizen/data/storage/db/db.dart';
import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/model/video.dart';
import 'package:bilizen/objectbox.g.dart';
import 'package:bilizen/package/talker_extension/cache.dart';
import 'package:bilizen/util/bilibili.dart';
import 'package:bilizen/util/time.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
// ignore: unnecessary_import
import 'package:objectbox/objectbox.dart';
import 'package:talker/talker.dart';

@Entity()
class VideoCache {
  int createTime;
  @Id(assignable: true)
  int aid;
  int uid;
  String cover;
  String title;

  VideoCache({
    required this.uid,
    required this.aid,
    required this.cover,
    required this.title,
  }) : createTime = DateTime.now().secondsSinceEpoch();

  static Future<VideoCache> fromVideo(Video video) async {
    return VideoCache(
      aid: toAv(video.bid),
      uid: (await video.uploader).id,
      cover: (await video.cover),
      title: (await video.title),
    );
  }
}

@singleton
class VideoCacheService with CacheService {
  final Store _store;
  late final box = _store.box<VideoCache>();

  VideoCacheService(this._store);

  Future<VideoCache?> findByBvid(String bvid) async {
    final aid = toAv(bvid);
    VideoCache? videoCache;
    if (kDebugMode) {
      videoCache = box
          .query(
            VideoCache_.aid.equals(aid),
          )
          .build()
          .findUnique();
    } else {
      videoCache = await box
          .query(
            VideoCache_.aid.equals(aid),
          )
          .build()
          .findUniqueAsync();
    }
    if (videoCache == null) {
      return null;
    }
    if (isExpired(videoCache.createTime)) {
      if (kDebugMode) {
        box.remove(aid);
      } else {
        await box.removeAsync(aid);
      }
      return null;
    }
    getIt<Talker>().cache("Use cache data for video $bvid");
    return videoCache;
  }

  Future<void> put(VideoCache item) async {
    if (kDebugMode) {
      box.put(item);
    } else {
      await box.putAsync(item);
    }
  }
}
