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
            state = state.copyWith(
              basicInfo: VideoBasicInfo.loading(),
              recommendInfo: VideoRecommendInfo.loading(),
            );
            return;
          }
          state = state.copyWith(
            basicInfo: VideoBasicInfo.loaded(
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
              onlineUser: await (await video.video.playlist)[video.pIndex - 1]
                  .onlineUser,
            ),
          );
        });
    return VideoInfoState.initial(
      basicInfo: VideoBasicInfo.loading(),
      recommendInfo: VideoRecommendInfo.loading(),
    );
  }
}

@freezed
sealed class VideoInfoState with _$VideoInfoState {
  const factory VideoInfoState.initial({
    required VideoBasicInfo basicInfo,
    required VideoRecommendInfo recommendInfo,
  }) = VideoInfoStateInitial;
}

@freezed
sealed class VideoBasicInfo with _$VideoBasicInfo {
  const factory VideoBasicInfo.loading() = VideoBasicInfoLoading;
  const factory VideoBasicInfo.loaded({
    required List<Staff> staffs,
    required int view,
    required int danmaku,
    required int uploadTime,
    required String onlineUser,
  }) = VideoBasicInfoLoaded;
}

@freezed
sealed class Staff with _$Staff {
  const factory Staff({
    required String role,
    required String name,
    required String avatar,
  }) = _Staff;
}

@freezed
sealed class VideoRecommendInfo with _$VideoRecommendInfo {
  const factory VideoRecommendInfo.loading() = VideoRecommendInfoLoading;
  const factory VideoRecommendInfo.loaded() = VideoRecommendInfoLoaded;
}
