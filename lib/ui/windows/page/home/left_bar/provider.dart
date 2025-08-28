import 'package:bilizen/data/logic/homepage_router.dart';
import 'package:bilizen/inject/inject.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.freezed.dart';
part 'provider.g.dart';

@Riverpod(keepAlive: true, name: "leftBarProvider")
class LeftBarProvider extends _$LeftBarProvider {
  @override
  LeftBarState build() {
    getIt<HomepageRouter>().homePageKindStream.stream.listen((page) {
      state = LeftBarState(page: page);
    });
    return LeftBarState(
      page: getIt<HomepageRouter>().homePageKindStream.value,
    );
  }

  void selectItem(HomePageKind item) {
    getIt<HomepageRouter>().navigateTo(item);
  }
}

@freezed
sealed class LeftBarState with _$LeftBarState {
  const factory LeftBarState({
    required RouterInfo page,
  }) = _LeftBarState;
}
