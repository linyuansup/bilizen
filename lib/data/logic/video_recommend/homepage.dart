import 'package:bilizen/data/api/video/recommend.dart';
import 'package:bilizen/data/model/video.dart';
import 'package:bilizen/inject/inject.dart';

class HomepageVideoRecommender {
  final List<Video> current;
  final int page;

  HomepageVideoRecommender({
    required this.current,
    required this.page,
  });

  Future<HomepageVideoRecommender> nextPage() async {
    final data = (await getIt<VideoRecommendApi>().homepage(page + 1))["data"];
    return HomepageVideoRecommender(
      current: (data["item"] as List)
          .map((e) => Video(bid: e["bvid"]))
          .toList(growable: false),
      page: page + 1,
    );
  }
}
