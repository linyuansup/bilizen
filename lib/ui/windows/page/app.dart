import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/ui/windows/router.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:talker/talker.dart';
import 'package:talker_riverpod_logger/talker_riverpod_logger.dart';
import 'package:toastification/toastification.dart';

class WindowsApp extends StatelessWidget {
  const WindowsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      observers: [TalkerRiverpodObserver(talker: getIt<Talker>())],
      child: ToastificationWrapper(
        child: FluentApp.router(
          debugShowCheckedModeBanner: false,
          theme: FluentThemeData(
            accentColor: Colors.blue,
            fontFamily: 'Microsoft YaHei',
          ),
          routerConfig: getIt<WindowsAppRouter>().router,
        ),
      ),
    );
  }
}
