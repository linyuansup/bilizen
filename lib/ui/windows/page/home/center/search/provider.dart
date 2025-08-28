import 'package:bilizen/data/logic/search/search_manager.dart';
import 'package:bilizen/data/logic/search/video_result.dart';
import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/ui/windows/widget/video_card.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.freezed.dart';
part 'provider.g.dart';

@Riverpod(keepAlive: true, name: "searchPageProvider")
class SearchPageProvider extends _$SearchPageProvider {
  final _searchManager = getIt<SearchManager>();
  late VideoResult _videoResult;

  @override
  SearchPageState build() {
    return SearchPageState.loading();
  }

  void clear() {
    state = SearchPageState.loading();
  }

  Future<void> load(String keyword) async {
    _videoResult = await _searchManager.searchVideo(keyword);
    await _loadVideo();
  }

  Future<void> next() async {
    _videoResult = await _videoResult.next();
    await _loadVideo();
  }

  Future<void> _loadVideo() async {
    if (state is SearchPageStateLoading) {
      state = SearchPageState.loaded(
        await Future.wait(
          _videoResult.videos.map((video) async {
            return await VideoCardData.fromVideo(video);
          }),
        ),
      );
    } else if (state is SearchPageStateLoaded) {
      final currentVideos = (state as SearchPageStateLoaded).results;
      final newVideos = await Future.wait(
        _videoResult.videos.map((video) async {
          return await VideoCardData.fromVideo(video);
        }),
      );
      state = SearchPageState.loaded([...currentVideos, ...newVideos]);
    }
  }
}

@freezed
sealed class SearchPageState with _$SearchPageState {
  const factory SearchPageState.loading() = SearchPageStateLoading;
  const factory SearchPageState.loaded(List<VideoCardData> results) =
      SearchPageStateLoaded;
}
