import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/package/windows_router.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.g.dart';
part 'provider.freezed.dart';

@Riverpod(keepAlive: true, name: "settingProvider")
class SettingProvider extends _$SettingProvider {
  @override
  SettingState build() {
    getIt<WindowsRouter>().setting.currentPage.listen((page) {
      state = state.copyWith(
        selectedIndex: SettingTab.values.indexWhere(
          (element) => element.name == page.state.name,
        ),
      );
    });
    return SettingState(selectedIndex: 0);
  }
}

@freezed
sealed class SettingState with _$SettingState {
  const factory SettingState({
    required int selectedIndex,
  }) = _SettingState;
}

enum SettingTab {
  talker,
}
