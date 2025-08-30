import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/package/playback_manager/playback_manager.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.g.dart';
part 'provider.freezed.dart';

@Riverpod(keepAlive: true, name: "videoInfoProvider")
class VideoInfoProvider extends _$VideoInfoProvider {
  final _playbackManager = getIt<PlaybackManager>();

  @override
  VideoInfoState build() {
    _playbackManager.currentPlaying
        .map((item) {
          return item?.item;
        })
        .distinct()
        .listen((video) async {
          if (video == null) {
            state = VideoInfoState.loading();
            return;
          }
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
            onlineUser:
                await (await video.video.playlist)[video.pIndex - 1].onlineUser,
            description: await video.video.description,
          );
        });
    return VideoInfoState.loading();
  }
}

@freezed
sealed class VideoInfoState with _$VideoInfoState {
  const factory VideoInfoState.loading() = VideoInfoStateLoading;

  const factory VideoInfoState.loaded({
    required List<Staff> staffs,
    required int view,
    required int danmaku,
    required int uploadTime,
    required String onlineUser,
    required String description,
  }) = VideoInfoStateLoaded;
}

@freezed
sealed class Staff with _$Staff {
  const factory Staff({
    required String role,
    required String name,
    required String avatar,
  }) = _Staff;
}
