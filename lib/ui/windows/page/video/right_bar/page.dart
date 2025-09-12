import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/ui/windows/page/router.dart';
import 'package:bilizen/ui/windows/page/video/right_bar/comment/page.dart';
import 'package:bilizen/ui/windows/page/video/right_bar/info/page.dart';
import 'package:bilizen/ui/windows/page/video/right_bar/provider.dart';
import 'package:bilizen/ui/windows/page/video/right_bar/recommend/page.dart';
import 'package:bilizen/ui/windows/widget/tab_bar.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final _router = GoRouter(
  initialLocation: "/info",
  observers: [getIt<WindowsRouter>().video.observer],
  navigatorKey: getIt<WindowsRouter>().video.key,
  routes: [
    GoRoute(
      path: "/info",
      name: "info",
      builder: (context, state) => VideoInfoPage(),
    ),
    GoRoute(
      path: "/comment",
      name: "comment",
      builder: (context, state) => VideoCommentPage(),
    ),
    GoRoute(
      path: "/recommend",
      name: "recommend",
      builder: (context, state) => VideoInnerRecommendPage(),
    ),
  ],
);

class RightArea extends ConsumerWidget {
  const RightArea({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(rightBarProvider);
    return Column(
      children: [
        RepaintBoundary(
          child: FluentTabBar(
            selectedIndex: state.page.index,
            items: [
              FluentTabBarItem(
                label: "简介",
                icon: FluentIcons.info,
              ),
              FluentTabBarItem(
                label: "评论",
                icon: FluentIcons.comment,
              ),
              FluentTabBarItem(
                label: "推荐",
                icon: FluentIcons.like,
              ),
            ],
            onTap: (value) {
              GoRouter.of(getIt<WindowsRouter>().video.context).goNamed(
                VideoRightBarPage.values[value].name,
              );
            },
          ),
        ),
        Expanded(
          child: Router.withConfig(
            config: _router,
          ),
        ),
      ],
    );
  }
}
