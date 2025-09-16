import 'package:bilizen/data/api/video/recommend.dart';
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
      current: (data["item"] as List)
          .map((e) => Video(bid: e["bvid"]))
          .toList(growable: false),
      page: 1,
    );
  }
}
