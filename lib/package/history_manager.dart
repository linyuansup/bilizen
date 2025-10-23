import 'package:bilizen/data/api/history_to_view/history.dart';
import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/model/history_video.dart';
import 'package:bilizen/model/user.dart';
import 'package:bilizen/model/video.dart';
import 'package:injectable/injectable.dart';

@singleton
class HistoryManager {
  final HistoryApi _historyApi;

  HistoryManager(this._historyApi);

  Future<HistoryVideoList> video() async {
    final data = (await _historyApi.getHistoryList(type: "archive"))["data"];
    return HistoryVideoList(
      current: (data["list"] as List).map((e) {
        return _getVideo(e);
      }).toList(),
      cursor: HistoryListCursor.fromMap(data["cursor"]),
    );
  }
}

class HistoryListCursor {
  final int lastId;
  final int ps;
  final String business;
  final int lastTime;

  HistoryListCursor({
    required this.lastId,
    required this.ps,
    required this.business,
    required this.lastTime,
  });

  factory HistoryListCursor.fromMap(Map<String, dynamic> map) {
    return HistoryListCursor(
      lastId: map["max"],
      ps: map["ps"],
      business: map["business"],
      lastTime: map["view_at"],
    );
  }
}

class HistoryVideoList {
  final HistoryListCursor cursor;
  final List<HistoryVideo> current;

  HistoryVideoList({
    required this.current,
    required this.cursor,
  });

  Future<HistoryVideoList> nextPage() async {
    final data = (await getIt<HistoryApi>().getHistoryList(
      type: "archive",
      lastId: cursor.lastId,
      ps: cursor.ps,
      lastBusiness: cursor.business,
      time: cursor.lastTime,
    ))["data"];
    return HistoryVideoList(
      current: (data["list"] as List).map((e) {
        return _getVideo(e);
      }).toList(),
      cursor: HistoryListCursor.fromMap(data["cursor"]),
    );
  }
}

HistoryVideo _getVideo(Map<String, dynamic> data) {
  final video = Video(bid: data["history"]["bvid"]);
  video.setTotalDuration(data["duration"]);
  final user = User(id: data["author_mid"]);
  user.setNickName(data["author_name"]);
  user.setAvatar(data["author_face"]);
  video.setUploader(user);
  video.setCover(data["cover"]);
  video.setTitle(data["title"]);
  final historyVideo = HistoryVideo(
    video: video,
    viewTime: data["view_at"],
    process: data["progress"],
  );
  return historyVideo;
}
