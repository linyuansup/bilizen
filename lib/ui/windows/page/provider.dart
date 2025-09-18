import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.freezed.dart';
part 'provider.g.dart';

@Riverpod(keepAlive: true, name: "updateToastRiverpod")
class UpdateToastRiverpod extends _$UpdateToastRiverpod {
  @override
  UpdateToastState build() {
    return UpdateToastState.waiting();
  }
}

@freezed
sealed class UpdateToastState with _$UpdateToastState {
  const factory UpdateToastState.downloading(double progress) = _Downloading;
  const factory UpdateToastState.checking() = _Checking;
  const factory UpdateToastState.waiting() = _Waiting;
  const factory UpdateToastState.completed() = _Completed;
}
