import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/ui/windows/router.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.freezed.dart';
part 'provider.g.dart';

@Riverpod(keepAlive: true, name: "leftBarProvider")
class LeftBarProvider extends _$LeftBarProvider {
  final router = getIt<WindowsAppRouter>().homepageRouter;

  @override
  LeftBarState build() {
    router.stream.listen((current) {
      _updateRoute(current.state);
    });
    return LeftBarState(
      page: HomePageKind.unknown,
    );
  }

  void _updateRoute(GoRouterState current) {
    switch (current.name) {
      case "suggest":
        state = state.copyWith(page: HomePageKind.suggest);
        break;
      case "setting":
        state = state.copyWith(page: HomePageKind.setting);
        break;
      case "focus":
        state = state.copyWith(page: HomePageKind.focus);
        break;
      case "self":
        state = state.copyWith(page: HomePageKind.self);
        break;
      default:
        state = state.copyWith(page: HomePageKind.unknown);
    }
  }
}

@freezed
sealed class LeftBarState with _$LeftBarState {
  const factory LeftBarState({
    required HomePageKind page,
  }) = _LeftBarState;
}

enum HomePageKind { suggest, focus, self, setting, unknown }
