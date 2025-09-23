import 'package:bilizen/data/storage/pref/setting/system.dart';
import 'package:bilizen/inject/inject.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.freezed.dart';
part 'provider.g.dart';

@Riverpod(keepAlive: true, name: "systemProvider")
class SystemProvider extends _$SystemProvider {
  final _storage = getIt<SystemSettingStorage>();

  @override
  SystemState build() {
    final setting = _storage.getSystemSetting();
    return SystemState(
      closeMainPanelAction: setting.closeMainPanelToTray
          ? CloseMainPanelAction.toTray
          : CloseMainPanelAction.exit,
    );
  }

  Future<void> update(SystemState state) async {
    await _storage.setSystemSetting(
      SystemSetting(
        closeMainPanelToTray:
            state.closeMainPanelAction == CloseMainPanelAction.toTray,
      ),
    );
    this.state = state;
  }
}

@freezed
sealed class SystemState with _$SystemState {
  const factory SystemState({
    required CloseMainPanelAction closeMainPanelAction,
  }) = _SystemState;
}

enum CloseMainPanelAction {
  toTray,
  exit,
}
