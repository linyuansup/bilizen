import 'dart:async';

import 'package:bilizen/data/api/video/online.dart';
import 'package:bilizen/inject/inject.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

@singleton
class VideoOnlineManager {
  final stream = BehaviorSubject<String>.seeded("0");

  Timer? _timer;

  Future<String> _fetchOnlineCount(
    String bvid,
    int cid,
  ) async {
    final response = await getIt<VideoOnlineApi>().total(bvid, cid);
    return response["data"]["total"];
  }

  Future<void> changeTo(String bvid, int cid) async {
    _timer?.cancel();
    stream.add(await _fetchOnlineCount(bvid, cid));
    _timer = Timer.periodic(const Duration(seconds: 10), (_) async {
      stream.add(await _fetchOnlineCount(bvid, cid));
    });
  }
}
