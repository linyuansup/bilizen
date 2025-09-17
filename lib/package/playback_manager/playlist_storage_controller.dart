import 'package:bilizen/data/storage/db/playing_list.dart';
import 'package:bilizen/data/storage/pref/playing_item.dart';
import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/model/play_item.dart';
import 'package:bilizen/model/video.dart';

mixin PlaylistStorageController {
  final _playListService = getIt<PlayListService>();
  final _playingItemStorage = getIt<PlayingItemStorage>();

  Future<void> savePlaylistToLocal(List<PlayItem> items) async {
    _playListService.clearAndPutAll(
      items
          .map(
            (e) => PlayList(
              videoBvid: e.video.bid,
              pIndex: e.pIndex,
            ),
          )
          .toList(),
    );
  }

  Future<void> saveCurrentPlayState(PlayingItem? item) async {
    await _playingItemStorage.setPlayingItem(item);
  }

  Future<PlayingItem?> loadCurrentPlayState() async {
    return await _playingItemStorage.getPlayingItem();
  }

  List<PlayItem> loadPlaylistFromLocal() {
    final playList = _playListService.getAll();
    return playList
        .map(
          (e) => PlayItem(
            video: Video(bid: e.videoBvid),
            pIndex: e.pIndex,
          ),
        )
        .toList();
  }
}
