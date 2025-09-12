import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/ui/windows/page/home/center/focus/page.dart';
import 'package:bilizen/ui/windows/page/home/center/search/page.dart';
import 'package:bilizen/ui/windows/page/home/center/search/provider.dart';
import 'package:bilizen/ui/windows/page/home/center/self/page.dart';
import 'package:bilizen/ui/windows/page/home/center/setting/page.dart';
import 'package:bilizen/ui/windows/page/home/center/suggest/page.dart';
import 'package:bilizen/ui/windows/page/router.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final _router = GoRouter(
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
      builder: (context, state) => Consumer(
        builder: (_, WidgetRef ref, __) {
          Future.delayed(Duration.zero, () {
            ref.read(searchPageProvider.notifier).clear();
          });
          return SearchPage(keyword: state.extra as String);
        },
      ),
    ),
  ],
);

class CenterPage extends StatelessWidget {
  const CenterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Router.withConfig(
      config: _router,
    );
  }
}

enum HomePageKind { suggest, focus, self, setting, search, unknown }

extension HomePageKindExtension on HomePageKind {
  static HomePageKind fromName(String? name) {
    switch (name) {
      case "suggest":
        return HomePageKind.suggest;
      case "focus":
        return HomePageKind.focus;
      case "self":
        return HomePageKind.self;
      case "setting":
        return HomePageKind.setting;
      case "search":
        return HomePageKind.search;
      default:
        return HomePageKind.unknown;
    }
  }
}
