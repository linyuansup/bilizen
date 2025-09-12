import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/ui/windows/page/router.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.g.dart';
part 'provider.freezed.dart';

@Riverpod(keepAlive: true, name: "rightBarProvider")
class RightBarProvider extends _$RightBarProvider {
  @override
  RightBarState build() {
    getIt<WindowsRouter>().video.currentPage.listen((page) {
      state = state.copyWith(
        page: VideoRightBarPage.values.byName(page.state.name!),
      );
    });

    return RightBarState.initial(
      page: VideoRightBarPage.info,
    );
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
  recommend,
}
