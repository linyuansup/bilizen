import 'dart:io';

import 'package:bilizen/inject/inject.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:media_kit/media_kit.dart';
import 'package:smtc_windows/smtc_windows.dart';
import 'package:tray_manager/tray_manager.dart';
import 'package:window_manager/window_manager.dart';

Future<void> initWindowsManager() async {
  await windowManager.ensureInitialized();
  WindowOptions windowOptions = WindowOptions(
    minimumSize: const Size(800, 700),
    titleBarStyle: TitleBarStyle.hidden,
  );
  windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.show();
    await windowManager.focus();
  });
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

Future<void> init() async {
  WidgetsFlutterBinding.ensureInitialized();
  MediaKit.ensureInitialized();
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    await initWindowsManager();
    await initTrayIcon();
  }
  if (Platform.isWindows) {
    await SMTCWindows.initialize();
  }
  await configureDependencies();
}
