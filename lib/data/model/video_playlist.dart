import 'package:bilizen/data/api/video/online.dart';
import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/package/future_class/annotations.dart';
import 'package:bilizen/package/future_class/future_class_base.dart';

part 'video_playlist.future.dart';

@futureClass
class VideoPlaylist extends _$VideoPlaylist {
  final _videoOnlineApi = getIt<VideoOnlineApi>();

  final int cid;
  final int index;
  final String bvid;
  final String title;
  final int duration;

  VideoPlaylist({
    required this.cid,
    required this.index,
    required this.bvid,
    required this.title,
    required this.duration,
  });

  @FutureData(loader: "online")
  Future<String> get onlineUser => $onlineUser;

  @override
  Future<void> online() async {
    final info = await _videoOnlineApi.total(bvid, cid);
    setOnlineUser(info["data"]["total"]);
  }
}
