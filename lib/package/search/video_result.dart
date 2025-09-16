import 'package:bilizen/data/api/search/request.dart';
import 'package:bilizen/model/user.dart';
import 'package:bilizen/model/video.dart';
import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/util/string.dart';

class VideoResult {
  final List<Video> videos;
  final int page;
  final String keyword;

  final _api = getIt<SearchRequestApi>();

  VideoResult({
    required this.videos,
    required this.page,
    required this.keyword,
  });

  Future<VideoResult> next() async {
    final result = await _api.search("video", keyword, page + 1);
    final data = (result["data"]["result"] as List).map((e) {
      return buildVideo(e);
    }).toList();
    return VideoResult(videos: data, page: page + 1, keyword: keyword);
  }
}

Video buildVideo(dynamic e) {
  final user = User(id: e["mid"]);
  user.setNickName(e["author"]);
  user.setAvatar(e["upic"]);
  final video = Video(bid: e["bvid"]);
  video.setTitle(
    (e["title"] as String)
        .replaceAll("<em class=\"keyword\">", "")
        .replaceAll("</em>", ""),
  );
  video.setDescription(e["description"]);
  final cover = e["pic"] as String;
  if (cover.startsWith("http")) {
    video.setCover(cover);
  } else {
    video.setCover("https:$cover");
  }
  video.setView(e["play"]);
  video.setDanmaku(e["video_review"]);
  video.setFavorite(e["favorites"]);
  video.setReply(e["review"]);
  video.setTotalDuration(formatDurationToSecond(e["duration"]));
  video.setUploader(user);
  return video;
}
