import 'package:bilizen/data/storage/db/db.dart';
import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/model/user.dart';
import 'package:bilizen/objectbox.g.dart';
import 'package:bilizen/package/talker_extension/cache.dart';
import 'package:bilizen/util/time.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
// ignore: unnecessary_import
import 'package:objectbox/objectbox.dart';
import 'package:talker_flutter/talker_flutter.dart';

@Entity()
class UserCache {
  int createTime;
  @Id(assignable: true)
  int uid;
  String name;
  String face;

  UserCache({
    required this.uid,
    required this.name,
    required this.face,
  }) : createTime = DateTime.now().secondsSinceEpoch();

  static Future<UserCache> fromUser(User user) async {
    return UserCache(
      uid: user.id,
      name: await user.nickName,
      face: await user.avatar,
    );
  }
}

@singleton
class UserCacheService with CacheService {
  final Store _store;
  late final box = _store.box<UserCache>();

  UserCacheService(this._store);

  Future<UserCache?> findByUid(int uid) async {
    UserCache? userCache;
    if (kDebugMode) {
      userCache = box
          .query(
            UserCache_.uid.equals(uid),
          )
          .build()
          .findUnique();
    } else {
      userCache = await box
          .query(
            UserCache_.uid.equals(uid),
          )
          .build()
          .findUniqueAsync();
    }
    if (userCache == null) {
      return null;
    }
    if (isExpired(userCache.createTime)) {
      if (kDebugMode) {
        box.remove(userCache.uid);
      } else {
        await box.removeAsync(userCache.uid);
      }
      return null;
    }
    getIt<Talker>().cache("Use cache data for user $uid");
    return userCache;
  }

  Future<void> put(UserCache item) async {
    if (kDebugMode) {
      box.put(item);
    } else {
      await box.putAsync(item);
    }
  }
}
