import 'dart:async';
import 'dart:io';

import 'package:bilizen/init.dart';
import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/ui/windows/page/app.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:media_kit/media_kit.dart';
import 'package:talker/talker.dart';

void main() async {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      MediaKit.ensureInitialized();
      await configureDependencies();
      if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
        await initWindowsManager();
      }
      Widget app;
      if (Platform.isWindows) {
        app = WindowsApp();
      } else {
        app = WindowsApp();
      }
      runApp(ProviderScope(child: app));
    },
    (error, stackTrace) {
      getIt<Talker>().handle(error, stackTrace, 'Uncaught app exception');
    },
  );
}
