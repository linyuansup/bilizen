import 'dart:async';
import 'dart:io';

import 'package:bilizen/init.dart';
import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/ui/windows/page/app.dart';
import 'package:flutter/material.dart';
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
      if (Platform.isWindows) {
        runApp(const WindowsApp());
      }
    },
    (error, stackTrace) {
      getIt<Talker>().handle(error, stackTrace, 'Uncaught app exception');
    },
  );
}
