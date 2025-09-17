import 'dart:async';

import 'package:bilizen/data/api/video/online.dart';
import 'package:bilizen/inject/inject.dart';
import 'package:rxdart/rxdart.dart';

mixin VideoOnlineController {
  final userCountstream = BehaviorSubject<String>.seeded("0");

  Timer? _timer;

  Future<String> _fetchOnlineCount(
    String bvid,
    int cid,
  ) async {
    final response = await getIt<VideoOnlineApi>().total(bvid, cid);
    return response["data"]["total"];
  }

  Future<void> userCountstreamChangeTo(String bvid, int cid) async {
    _timer?.cancel();
    userCountstream.add(await _fetchOnlineCount(bvid, cid));
    _timer = Timer.periodic(const Duration(seconds: 10), (_) async {
      userCountstream.add(await _fetchOnlineCount(bvid, cid));
    });
  }
}
