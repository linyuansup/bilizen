import 'package:bilizen/model/video.dart';

class HistoryVideo {
  final Video video;
  final int process;
  final int viewTime;

  HistoryVideo({
    required this.video,
    required this.process,
    required this.viewTime,
  });
}
