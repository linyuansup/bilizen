import 'package:bilizen/package/future_class/annotations.dart';
import 'package:bilizen/package/future_class/future_class_base.dart';

part 'video_playlist.future.dart';

@futureClass
class VideoPlaylist extends _$VideoPlaylist {
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
}
