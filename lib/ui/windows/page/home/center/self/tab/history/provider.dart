import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/package/history_manager.dart';
import 'package:bilizen/ui/windows/widget/history_video_card.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.freezed.dart';
part 'provider.g.dart';

@Riverpod(keepAlive: true, name: "historyProvider")
class HistoryProvider extends _$HistoryProvider {
  final _historyManager = getIt<HistoryManager>();

  HistoryVideoList? _historyVideoList;

  @override
  HistoryState build() {
    return const HistoryState.loading();
  }

  Future<void> fetch() async {
    if (_historyVideoList == null) {
      _historyVideoList = await _historyManager.video();
      await _loadCurrentHomepageVideos();
      return;
    }
    _historyVideoList = await _historyVideoList!.nextPage();
    await _loadCurrentHomepageVideos();
  }

  Future<void> _loadCurrentHomepageVideos() async {
    if (state is _Loading) {
      state = HistoryState.loaded(
        videos: await Future.wait(
          _historyVideoList!.current.map((video) async {
            return await HistoryVideoCardData.fromHistoryVideo(video);
          }).toList(),
        ),
      );
    } else if (state is _Loaded) {
      final currentVideos = (state as _Loaded).videos;
      final newVideos = await Future.wait(
        _historyVideoList!.current.map((video) async {
          return await HistoryVideoCardData.fromHistoryVideo(video);
        }).toList(),
      );
      state = HistoryState.loaded(videos: [...currentVideos, ...newVideos]);
    }
  }
}

@freezed
sealed class HistoryState with _$HistoryState {
  const factory HistoryState.loading() = _Loading;
  const factory HistoryState.loaded({
    required List<HistoryVideoCardData> videos,
  }) = _Loaded;
}
