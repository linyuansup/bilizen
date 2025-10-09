import 'package:bilizen/data/storage/pref/setting/hotkey.dart';
import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/package/talker_extension/hotkey.dart';
import 'package:bilizen/ui/windows/page/home/center/setting/info/hotkey/provider.dart';
import 'package:hotkey_manager/hotkey_manager.dart';
import 'package:talker_flutter/talker_flutter.dart';

Future<void> registerHotkey() async {
  await hotKeyManager.unregisterAll();
  getIt<HotkeySettingStorage>().getHotkeySetting().hotkeys.forEach((setting) {
    try {
      if (setting.jsonKey != null) {
        _register(HotKey.fromJson(setting.jsonKey!), setting);
      }
      if (setting.globalJsonKey != null) {
        _register(HotKey.fromJson(setting.globalJsonKey!), setting);
      }
    } catch (e) {
      getIt<Talker>().hotkey(
        'Failed to register hotkey: ${setting.action}, error: $e',
      );
    }
  });
}

void _register(HotKey hotKey, HotKeyStorageElement setting) {
  hotKeyManager.register(
    hotKey,
    keyDownHandler: (hotKey) {
      HotKeyAction.values.firstWhere((e) => e.name == setting.action).action();
    },
  );
  getIt<Talker>().hotkey(
    'Registered hotkey: ${setting.action}, key: ${setting.jsonKey}',
  );
}
