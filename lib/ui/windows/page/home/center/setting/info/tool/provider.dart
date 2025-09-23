import 'package:bilizen/data/storage/pref/setting/tool.dart';
import 'package:bilizen/inject/inject.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.g.dart';
part 'provider.freezed.dart';

@Riverpod(keepAlive: true, name: "toolPageProvider")
class ToolPageProvider extends _$ToolPageProvider {
  final _storage = getIt<ToolSettingStorage>();

  @override
  ToolPageState build() {
    final setting = _storage.getToolSetting();
    return ToolPageState(
      useProxy: setting.useProxy,
      proxyAddress: setting.proxyAddress,
      proxyPort: setting.proxyPort,
    );
  }

  Future<void> setToolSetting(ToolPageState state) async {
    final setting = ToolSetting(
      useProxy: state.useProxy,
      proxyAddress: state.proxyAddress,
      proxyPort: state.proxyPort,
    );
    await _storage.setToolSetting(setting);
    this.state = state;
  }
}

@freezed
sealed class ToolPageState with _$ToolPageState {
  const factory ToolPageState({
    required bool useProxy,
    String? proxyAddress,
    String? proxyPort,
  }) = _ToolPageState;
}
