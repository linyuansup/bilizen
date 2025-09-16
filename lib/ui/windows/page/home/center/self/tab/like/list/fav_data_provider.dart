import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/package/fav_manager/fav_list_result.dart';
import 'package:bilizen/package/fav_manager/fav_manager.dart';
import 'package:bilizen/ui/windows/widget/video_card.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'fav_data_provider.freezed.dart';
part 'fav_data_provider.g.dart';

@Riverpod(keepAlive: true, name: "favDataProvider")
class FavDataProvider extends _$FavDataProvider {
  final _favManager = getIt<FavManager>();
  FavListResult? _currentFavListResult;

  @override
  FavDataState build() {
    return const FavDataState.loading();
  }

  Future<void> load(int id) async {
    _currentFavListResult = await _favManager.getFavList(id);
    state = FavDataState.success(
      items: await Future.wait(
        _currentFavListResult!.videos.map((video) async {
          return await VideoCardData.fromVideo(video);
        }),
      ),
    );
  }

  Future<void> next() async {
    if (_currentFavListResult == null) {
      return;
    }
    _currentFavListResult = await _currentFavListResult!.next();
    final currentState = state;
    if (currentState is _Success) {
      state = FavDataState.success(
        items: [
          ...currentState.items,
          ...await Future.wait(
            _currentFavListResult!.videos.map((video) async {
              return await VideoCardData.fromVideo(video);
            }),
          ),
        ],
      );
    }
  }
}

@freezed
sealed class FavDataState with _$FavDataState {
  const factory FavDataState.loading() = _Loading;
  const factory FavDataState.success({
    required List<VideoCardData> items,
  }) = _Success;
}
