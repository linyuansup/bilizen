import 'package:bilizen/data/storage/pref/setting/common.dart';
import 'package:bilizen/inject/inject.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.g.dart';
part 'provider.freezed.dart';

@Riverpod(keepAlive: true, name: 'commonProvider')
class CommonProvider extends _$CommonProvider {
  final _storage = getIt<CommonSettingStorage>();

  @override
  CommonState build() {
    final setting = _storage.getCommonSetting();
    return CommonState(
      enablePlaybackHardwareAcceleration:
          setting.enablePlaybackHardwareAcceleration,
    );
  }

  Future<void> update(CommonState state) async {
    await _storage.setCommonSetting(
      CommonSetting(
        enablePlaybackHardwareAcceleration:
            state.enablePlaybackHardwareAcceleration,
      ),
    );
    this.state = state;
  }
}

@freezed
sealed class CommonState with _$CommonState {
  const factory CommonState({
    required bool enablePlaybackHardwareAcceleration,
  }) = _CommonState;
}
