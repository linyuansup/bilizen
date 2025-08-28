import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.g.dart';
part 'provider.freezed.dart';

@Riverpod(keepAlive: true, name: "rightBarProvider")
class RightBarProvider extends _$RightBarProvider {
  @override
  RightBarState build() {
    return RightBarState.initial(
      page: VideoRightBarPage.info,
    );
  }

  set page(VideoRightBarPage page) {
    state = state.copyWith(page: page);
  }
}

@freezed
sealed class RightBarState with _$RightBarState {
  const factory RightBarState.initial({
    required VideoRightBarPage page,
  }) = RightBarStateInitial;
}

enum VideoRightBarPage {
  info,
  comment,
}
