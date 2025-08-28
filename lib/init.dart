import 'dart:ui';

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
