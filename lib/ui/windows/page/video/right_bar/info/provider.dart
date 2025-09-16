import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/package/playback_manager/playback_manager.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.freezed.dart';
part 'provider.g.dart';

@Riverpod(keepAlive: true, name: "videoInfoProvider")
class VideoInfoProvider extends _$VideoInfoProvider {
  final _playbackManager = getIt<PlaybackManager>();

  @override
  VideoInfoState build() {
    _playbackManager.currentPlaying.distinct().listen((item) async {
      if (item == null) {
        state = VideoInfoState.loading();
        return;
      }
      final video = item.item;
      state = VideoInfoState.loaded(
        staffs: await Future.wait(
          (await video.video.staff).map((e) async {
            return Staff(
              role: e.role,
              name: await e.user.nickName,
              avatar: await e.user.avatar,
            );
          }).toList(),
        ),
        view: await video.video.view,
        danmaku: await video.video.danmaku,
        uploadTime: await video.video.uploadTime,
        onlineUser: item.onlineUser,
        description: await video.video.description,
      );
    });
    return VideoInfoState.loading();
  }
}

@freezed
sealed class VideoInfoState with _$VideoInfoState {
  const factory VideoInfoState.loading() = _Loading;

  const factory VideoInfoState.loaded({
    required List<Staff> staffs,
    required int view,
    required int danmaku,
    required int uploadTime,
    required String onlineUser,
    required String description,
  }) = _Loaded;
}

@freezed
sealed class Staff with _$Staff {
  const factory Staff({
    required String role,
    required String name,
    required String avatar,
  }) = _Staff;
}
