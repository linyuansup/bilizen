import 'package:bilizen/logic/video_recommend/homepage.dart';
import 'package:bilizen/logic/video_recommend/video_recommend.dart';
import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/ui/windows/widget/video_card.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.freezed.dart';
part 'provider.g.dart';

@Riverpod(keepAlive: true, name: 'homePageProvider')
class HomePageProvider extends _$HomePageProvider {
  final _videoRecommend = getIt<VideoRecommend>();
  HomepageVideoRecommender? _homepageVideoRecommender;

  @override
  HomePageState build() {
    return const HomePageState.loading();
  }

  Future<void> fetch() async {
    if (_homepageVideoRecommender == null) {
      _homepageVideoRecommender = await _videoRecommend.homepage();
      await _loadCurrentHomepageVideos();
      return;
    }
    _homepageVideoRecommender = await _homepageVideoRecommender!.nextPage();
    await _loadCurrentHomepageVideos();
  }

  Future<void> _loadCurrentHomepageVideos() async {
    if (state is HomePageStateLoading) {
      state = HomePageState.loaded(
        await Future.wait(
          _homepageVideoRecommender!.current.map((video) async {
            return await VideoCardData.fromVideo(video);
          }).toList(),
        ),
      );
    } else if (state is HomePageStateLoaded) {
      final currentVideos = (state as HomePageStateLoaded).videoInfo;
      final newVideos = await Future.wait(
        _homepageVideoRecommender!.current.map((video) async {
          return await VideoCardData.fromVideo(video);
        }).toList(),
      );
      state = HomePageState.loaded([...currentVideos, ...newVideos]);
    }
  }
}

@freezed
sealed class HomePageState with _$HomePageState {
  const factory HomePageState.loading() = HomePageStateLoading;
  const factory HomePageState.loaded(List<VideoCardData> videoInfo) =
      HomePageStateLoaded;
}
