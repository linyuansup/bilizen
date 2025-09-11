import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.freezed.dart';
part 'provider.g.dart';

@Riverpod(keepAlive: true, name: "leftBarProvider")
class LeftBarProvider extends _$LeftBarProvider {
  @override
  LeftBarState build() {
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

enum HomePageKind { suggest, focus, self, setting, unknown }
