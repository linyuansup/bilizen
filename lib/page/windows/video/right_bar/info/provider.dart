import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.g.dart';
part 'provider.freezed.dart';

@Riverpod(keepAlive: true, name: "videoInfoProvider")
class VideoInfoProvider extends _$VideoInfoProvider {
  @override
  VideoInfoState build() {
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
    required int onlineUser,
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
