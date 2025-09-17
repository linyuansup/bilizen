import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/ui/windows/page/home/center/setting/provider.dart';
import 'package:bilizen/ui/windows/page/home/center/setting/talker/page.dart';
import 'package:bilizen/ui/windows/page/router.dart';
import 'package:bilizen/ui/windows/widget/tab_bar.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final _router = GoRouter(
  initialLocation: "/talker",
  observers: [getIt<WindowsRouter>().setting.observer],
  navigatorKey: getIt<WindowsRouter>().setting.key,
  routes: [
    GoRoute(
      path: "/talker",
      name: "talker",
      builder: (context, state) => SettingTalkerPage(),
    ),
  ],
);

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RepaintBoundary(
          child: Consumer(
            builder: (_, WidgetRef ref, _) {
              final selectedIndex = ref.watch(
                settingProvider.select((state) => state.selectedIndex),
              );
              return FluentTabBar(
                selectedIndex: selectedIndex,
                items: [
                  FluentTabBarItem(
                    label: "Talker",
                    icon: FluentIcons.data_flow,
                  ),
                ],
                onTap: (value) {
                  GoRouter.of(
                    getIt<WindowsRouter>().setting.context,
                  ).goNamed(SettingTab.values[value].name);
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
