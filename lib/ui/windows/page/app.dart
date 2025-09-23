import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/package/windows_router.dart';
import 'package:bilizen/package/windows_toast/windows_toast_wrapper.dart';
import 'package:bilizen/ui/windows/page/home/page.dart';
import 'package:bilizen/ui/windows/page/video/page.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:talker/talker.dart';
import 'package:talker_riverpod_logger/talker_riverpod_logger.dart';

final _router = GoRouter(
  navigatorKey: getIt<WindowsRouter>().main.key,
  observers: [getIt<WindowsRouter>().main.observer],
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        return WindowsToastWrapper(child: child);
      },
      routes: [
        GoRoute(
          path: "/",
          builder: (context, state) {
            return HomePage();
          },
        ),
        GoRoute(
          path: "/video",
          name: "video",
          builder: (context, state) {
            return VideoPage();
          },
        ),
      ],
    ),
  ],
);

class WindowsApp extends StatelessWidget {
  const WindowsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      observers: [TalkerRiverpodObserver(talker: getIt<Talker>())],
      child: FluentApp.router(
        debugShowCheckedModeBanner: false,
        theme: FluentThemeData(
          accentColor: Colors.blue,
          fontFamily: 'Microsoft YaHei',
        ),
        routerConfig: _router,
      ),
    );
  }
}
