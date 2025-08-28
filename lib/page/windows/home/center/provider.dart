import 'package:bilizen/data/logic/homepage_router.dart';
import 'package:bilizen/inject/inject.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.freezed.dart';
part 'provider.g.dart';

@Riverpod(keepAlive: true, name: "centerProvider")
class CenterProvider extends _$CenterProvider {
  @override
  CenterState build() {
    getIt<HomepageRouter>().homePageKindStream.stream.listen((page) {
      state = CenterState(page: page);
    });
    return CenterState(
      page: getIt<HomepageRouter>().homePageKindStream.value,
    );
  }
}

@freezed
sealed class CenterState with _$CenterState {
  const factory CenterState({
    required RouterInfo page,
  }) = _CenterState;
}
