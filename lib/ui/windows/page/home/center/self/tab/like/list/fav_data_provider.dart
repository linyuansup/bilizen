import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/model/play_item.dart';
import 'package:bilizen/model/user.dart';
import 'package:bilizen/model/video.dart';
import 'package:bilizen/package/fav_manager.dart';
import 'package:bilizen/package/playback_manager/playback_controller.dart';
import 'package:bilizen/ui/windows/widget/video_card.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'fav_data_provider.freezed.dart';

part 'fav_data_provider.g.dart';

@Riverpod(keepAlive: true, name: "favDataProvider")
class FavDataProvider extends _$FavDataProvider {
  final _favManager = getIt<FavManager>();
  FavListResult? _currentFavListResult;
  final _playbackManager = getIt<PlaybackController>();

  @override
  FavDataState build() {
    return const FavDataState.loading();
  }

  Future<void> addAll() async {
    if (_currentFavListResult == null) {
      return;
    }
    if (state is! _Success) {
      return;
    }
    final currentState = state as _Success;
    final currentItem = List<Video>.from(
      currentState.items.map((e) {
        final video = Video(bid: e.bvid);
        video.setTitle(e.title);
        video.setCover(e.cover);
        final user = User(id: e.uid);
        user.setAvatar(e.uploaderAvatar);
        user.setNickName(e.uploader);
        video.setUploader(user);
        video.setDanmaku(e.danmakuCount);
        video.setTotalDuration(e.totalDuration);
        video.setView(e.viewCount);
        return video;
      }),
    );
    while (true) {
      _currentFavListResult = await _currentFavListResult!.next();
      if (_currentFavListResult!.videos.isEmpty) {
        break;
      }
      currentItem.addAll(_currentFavListResult!.videos);
    }
    final playItems = currentItem
        .map(
          (e) => PlayItem(
            video: e,
            pIndex: 1,
          ),
        )
        .toList();
    _playbackManager.insertAllAtLast(playItems);
    state = currentState.copyWith(
      items: await Future.wait(
        currentItem.map((video) async {
          return await VideoCardData.fromVideo(video);
        }),
      ),
    );
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
