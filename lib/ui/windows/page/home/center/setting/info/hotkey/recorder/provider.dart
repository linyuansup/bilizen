import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.freezed.dart';
part 'provider.g.dart';

@Riverpod(name: "hotkeyRecorderProvider", keepAlive: true)
class HotkeyRecorderProvider extends _$HotkeyRecorderProvider {
  @override
  HotkeyRecorderState build() {
    return HotkeyRecorderState(
      currentKey: null,
    );
  }

  void setCurrentKey(Map<String, dynamic>? key) {
    state = state.copyWith(currentKey: key);
  }
}

@freezed
sealed class HotkeyRecorderState with _$HotkeyRecorderState {
  const factory HotkeyRecorderState({
    required Map<String, dynamic>? currentKey,
  }) = _HotkeyRecorderState;
}
