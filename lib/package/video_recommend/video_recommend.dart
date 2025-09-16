import 'package:bilizen/data/api/video/recommend.dart';
import 'package:bilizen/model/user.dart';
import 'package:bilizen/package/video_recommend/homepage.dart';
import 'package:bilizen/model/video.dart';
import 'package:injectable/injectable.dart';

@singleton
class VideoRecommend {
  final VideoRecommendApi _videoRecommendApi;

  VideoRecommend(this._videoRecommendApi);

  Future<HomepageVideoRecommender> homepage() async {
    final data = (await _videoRecommendApi.homepage(1))["data"];
    return HomepageVideoRecommender(
      current: get(data),
      page: 1,
    );
  }
}

List<Video> get(Map<String, dynamic> data) {
  return (data["item"] as List)
      .where((e) => e["show_info"] == 1)
      .map((e) {
        final video = Video(bid: e["bvid"]);
        video.setTotalDuration(e["duration"]);
        final user = User(id: e["owner"]["mid"]);
        user.setNickName(e["owner"]["name"]);
        user.setAvatar(e["owner"]["face"]);
        video.setUploader(user);
        video.setCover(e["pic"]);
        video.setUploadTime(e["pubdate"]);
        video.setTitle(e["title"]);
        video.setView(e["stat"]["view"]);
        video.setDanmaku(e["stat"]["danmaku"]);
        video.setLike(e["stat"]["like"]);
        return video;
      })
      .toList(growable: false);
}
