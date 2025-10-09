part of 'playback_controller.dart';

mixin PlaylistStorageController {
  final _playListService = getIt<PlayListService>();
  final _playingItemStorage = getIt<storage.PlayingItemStorage>();

  Future<void> _savePlaylistToLocal(List<PlayItem> items) async {
    await _playListService.clearAndPutAll(
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

  Future<void> _saveCurrentPlayState(storage.PlayingItem? item) async {
    await _playingItemStorage.setPlayingItem(item);
  }

  Future<storage.PlayingItem?> _loadCurrentPlayState() async {
    return await _playingItemStorage.getPlayingItem();
  }

  Future<List<PlayItem>> _loadPlaylistFromLocal() async {
    final playList = await _playListService.getAll();
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
