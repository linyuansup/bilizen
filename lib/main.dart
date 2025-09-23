import 'dart:async';
import 'dart:io';

import 'package:bilizen/init.dart';
import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/ui/windows/page/app.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:talker/talker.dart';

void main(List<String> args) async {
  runZonedGuarded(
    () async {
      await init(args);
      Widget app;
      if (Platform.isWindows) {
        app = WindowsApp();
      } else {
        app = WindowsApp();
      }
      runApp(app);
    },
    (error, stackTrace) {
      getIt<Talker>().handle(error, stackTrace, 'Uncaught app exception');
    },
  );
}
