import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/ui/windows/page/home/page.dart';
import 'package:bilizen/ui/windows/page/video/page.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:talker/talker.dart';
import 'package:talker_riverpod_logger/talker_riverpod_logger.dart';
import 'package:toastification/toastification.dart';

part 'app.g.dart';

@TypedGoRoute<HomePageRoute>(
  path: '/',
  routes: [
    TypedGoRoute<VideoPageRoute>(
      path: '/video',
    ),
  ],
)
@immutable
class HomePageRoute extends GoRouteData with _$HomePageRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomePage();
  }
}

@immutable
class VideoPageRoute extends GoRouteData with _$VideoPageRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const VideoPage();
  }
}

final _router = GoRouter(
  routes: $appRoutes,
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
