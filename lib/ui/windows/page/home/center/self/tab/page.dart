import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/ui/windows/page/home/center/self/tab/history/page.dart';
import 'package:bilizen/ui/windows/page/home/center/self/tab/late/page.dart';
import 'package:bilizen/ui/windows/page/home/center/self/tab/like/page.dart';
import 'package:bilizen/ui/windows/page/home/center/self/tab/provider.dart';
import 'package:bilizen/ui/windows/page/router.dart';
import 'package:bilizen/ui/windows/widget/tab_bar.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final _router = GoRouter(
  initialLocation: "/like",
  observers: [getIt<WindowsRouter>().userInfo.observer],
  navigatorKey: getIt<WindowsRouter>().userInfo.key,
  routes: [
    GoRoute(
      path: "/like",
      name: "like",
      builder: (context, state) => LikePage(),
    ),
    GoRoute(
      path: "/history",
      name: "history",
      builder: (context, state) => HistoryPage(),
    ),
    GoRoute(
      path: "/late",
      name: "late",
      builder: (context, state) => LatePage(),
    ),
  ],
);

class UserInfoTabPage extends StatelessWidget {
  const UserInfoTabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RepaintBoundary(
          child: Consumer(
            builder: (_, WidgetRef ref, _) {
              final selectedIndex = ref.watch(
                userInfoTabProvider.select((state) => state.selectedIndex),
              );
              return FluentTabBar(
                selectedIndex: selectedIndex,
                items: [
                  FluentTabBarItem(
                    label: "收藏",
                    icon: FluentIcons.like,
                  ),
                  // TODO
                  // FluentTabBarItem(
                  //   label: "历史记录",
                  //   icon: FluentIcons.full_history,
                  // ),
                  // FluentTabBarItem(
                  //   label: "稍后再看",
                  //   icon: FluentIcons.red_eye,
                  // ),
                ],
                onTap: (value) {
                  GoRouter.of(
                    getIt<WindowsRouter>().userInfo.context,
                  ).goNamed(UserInfoTab.values[value].name);
                },
              );
            },
          ),
        ),
        Expanded(
          child: RepaintBoundary(
            child: Router.withConfig(config: _router),
          ),
        ),
      ],
    );
  }
}
