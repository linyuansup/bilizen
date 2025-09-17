import 'package:bilizen/util/time.dart';

mixin CacheService {
  int expireTime = 7 * 24 * 3600;

  bool isExpired(int createTime) {
    return createTime < DateTime.now().secondsSinceEpoch() - expireTime;
  }
}
