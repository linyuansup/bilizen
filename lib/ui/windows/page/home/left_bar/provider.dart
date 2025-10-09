import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/ui/windows/page/home/center/page.dart';
import 'package:bilizen/package/windows_router.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.freezed.dart';
part 'provider.g.dart';

@Riverpod(keepAlive: true, name: "leftBarProvider")
class LeftBarProvider extends _$LeftBarProvider {
  final router = getIt<WindowsRouter>().home.currentPage;

  @override
  LeftBarState build() {
    router.stream.listen((current) {
      state = state.copyWith(
        page: HomePageKindExtension.fromName(current.state.name),
      );
    });
    return LeftBarState(
      page: HomePageKind.unknown,
    );
  }
}

@freezed
sealed class LeftBarState with _$LeftBarState {
  const factory LeftBarState({
    required HomePageKind page,
  }) = _LeftBarState;
}
