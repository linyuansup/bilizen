import 'package:bilizen/data/api/video/recommend.dart';
import 'package:bilizen/model/video.dart';
import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/package/video_recommend/video_recommend.dart';

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
      current: get(data),
      page: page + 1,
    );
  }
}
