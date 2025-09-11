import 'package:bilizen/package/router_observer/current_route_manager.dart';
import 'package:bilizen/package/router_observer/router_observer.dart';
import 'package:bilizen/ui/windows/page/home/center/focus/page.dart';
import 'package:bilizen/ui/windows/page/home/center/search/page.dart';
import 'package:bilizen/ui/windows/page/home/center/search/provider.dart';
import 'package:bilizen/ui/windows/page/home/center/self/page.dart';
import 'package:bilizen/ui/windows/page/home/center/setting/page.dart';
import 'package:bilizen/ui/windows/page/home/center/suggest/page.dart';
import 'package:bilizen/ui/windows/page/home/page.dart';
import 'package:bilizen/ui/windows/page/video/page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';

@singleton
class WindowsAppRouter {
  final mainRouter = CurrentRouteManager();
  final homepageRouter = CurrentRouteManager();

  late final router = GoRouter(
    initialLocation: "/suggest",
    observers: [
      RouterObserver(mainRouter),
    ],
    routes: [
      GoRoute(
        path: "/video",
        name: "video",
        builder: (context, state) {
          return VideoPage();
        },
      ),
      ShellRoute(
        observers: [
          RouterObserver(homepageRouter),
        ],
        builder: (context, state, child) {
          return HomePage(center: child);
        },
        routes: [
          GoRoute(
            path: "/suggest",
            name: "suggest",
            builder: (context, state) {
              return SuggestPage();
            },
          ),
          GoRoute(
            path: "/setting",
            name: "setting",
            builder: (context, state) {
              return SettingPage();
            },
          ),
          GoRoute(
            path: "/focus",
            name: "focus",
            builder: (context, state) {
              return FocusPage();
            },
          ),
          GoRoute(
            path: "/self",
            name: "self",
            builder: (context, state) {
              return SelfPage();
            },
          ),
          GoRoute(
            path: "/search/:keyword",
            name: "search",
            builder: (context, state) {
              return Consumer(
                builder: (context, ref, child) {
                  Future.delayed(Duration.zero, () async {
                    ref.read(searchPageProvider.notifier).clear();
                  });
                  return SearchPage(keyword: state.pathParameters['keyword']!);
                },
              );
            },
          ),
        ],
      ),
    ],
  );
}
