import 'dart:io';

import 'package:bilizen/inject/inject.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:media_kit/media_kit.dart';
import 'package:smtc_windows/smtc_windows.dart';
import 'package:tray_manager/tray_manager.dart';
import 'package:window_manager/window_manager.dart';
import 'package:windows_single_instance/windows_single_instance.dart';

Future<void> initWindowsManager() async {
  await windowManager.ensureInitialized();
  WindowOptions windowOptions = WindowOptions(
    minimumSize: const Size(800, 700),
    titleBarStyle: TitleBarStyle.hidden,
  );
  await windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.show();
    await windowManager.focus();
  });
  await windowManager.setPreventClose(true);
}

Future<void> initTrayIcon() async {
  await trayManager.setIcon('assets/app_icon.ico');
  await trayManager.setContextMenu(
    Menu(
      items: [
        MenuItem(
          key: 'exit',
          label: '退出',
          onClick: (menuItem) async {
            await windowManager.close();
          },
        ),
      ],
    ),
  );
}

Future<void> init(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isWindows) {
    await WindowsSingleInstance.ensureSingleInstance(
      args,
      "bilizen_single_instance_pipe",
    );
    await SMTCWindows.initialize();
  }
  MediaKit.ensureInitialized();
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    await initWindowsManager();
    await initTrayIcon();
  }
  await configureDependencies();
}
