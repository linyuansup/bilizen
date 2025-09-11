import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/ui/windows/page/home/center/focus/page.dart';
import 'package:bilizen/ui/windows/page/home/center/search/page.dart';
import 'package:bilizen/ui/windows/page/home/center/self/page.dart';
import 'package:bilizen/ui/windows/page/home/center/setting/page.dart';
import 'package:bilizen/ui/windows/page/home/center/suggest/page.dart';
import 'package:bilizen/ui/windows/page/router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CenterPage extends StatelessWidget {
  const CenterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Router.withConfig(
      config: GoRouter(
        observers: [getIt<WindowsRouter>().home.observer],
        navigatorKey: getIt<WindowsRouter>().home.key,
        initialLocation: "/suggest",
        routes: [
          GoRoute(
            path: '/suggest',
            name: "suggest",
            builder: (context, state) => SuggestPage(),
          ),
          GoRoute(
            path: '/focus',
            name: "focus",
            builder: (context, state) => FocusPage(),
          ),
          GoRoute(
            path: '/self',
            name: "self",
            builder: (context, state) => SelfPage(),
          ),
          GoRoute(
            path: '/setting',
            name: "setting",
            builder: (context, state) => SettingPage(),
          ),
          GoRoute(
            path: '/search',
            name: "search",
            builder: (context, state) =>
                SearchPage(keyword: state.extra as String),
          ),
        ],
      ),
    );
  }
}
