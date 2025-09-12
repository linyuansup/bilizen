import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/ui/windows/page/home/page.dart';
import 'package:bilizen/ui/windows/page/router.dart';
import 'package:bilizen/ui/windows/page/video/page.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:talker/talker.dart';
import 'package:talker_riverpod_logger/talker_riverpod_logger.dart';
import 'package:toastification/toastification.dart';

final _router = GoRouter(
  navigatorKey: getIt<WindowsRouter>().main.key,
  observers: [getIt<WindowsRouter>().main.observer],
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
);

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
          routerConfig: _router,
        ),
      ),
    );
  }
}
