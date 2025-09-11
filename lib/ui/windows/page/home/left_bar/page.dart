import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/ui/windows/page/home/left_bar/provider.dart';
import 'package:bilizen/ui/windows/page/router.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class LeftBar extends StatelessWidget {
  const LeftBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      decoration: BoxDecoration(
        color: FluentTheme.of(context).micaBackgroundColor,
        border: Border(
          right: BorderSide(
            color: FluentTheme.of(context).inactiveColor.withValues(alpha: 0.2),
            width: 0.5,
          ),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 10),
          _buildNavItem(FluentIcons.home, HomePageKind.suggest),
          const SizedBox(height: 5),
          _buildNavItem(FluentIcons.heart, HomePageKind.focus),
          const SizedBox(height: 5),
          _buildNavItem(FluentIcons.contact, HomePageKind.self),
          const SizedBox(height: 5),
          _buildNavItem(FluentIcons.settings, HomePageKind.setting),
          const Spacer(),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, HomePageKind item) {
    return Consumer(
      builder: (context, ref, child) {
        final leftSelectedItem = ref.watch(leftBarProvider);
        return Container(
          width: 40,
          height: 40,
          margin: const EdgeInsets.symmetric(horizontal: 5),
          child: RepaintBoundary(
            child: Button(
              style: ButtonStyle(
                padding: WidgetStateProperty.all(EdgeInsets.zero),
                backgroundColor: WidgetStateProperty.resolveWith((states) {
                  if (leftSelectedItem.page == item) {
                    return FluentTheme.of(
                      context,
                    ).accentColor.withValues(alpha: 0.15);
                  }
                  if (states.contains(WidgetState.hovered)) {
                    return FluentTheme.of(
                      context,
                    ).inactiveColor.withValues(alpha: 0.1);
                  }
                  return Colors.transparent;
                }),
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                    side: BorderSide.none,
                  ),
                ),
              ),
              onPressed: () async {
                await GoRouter.of(
                  getIt<WindowsRouter>().home.context,
                ).pushNamed(item.name);
              },
              child: Icon(
                icon,
                size: 18,
                color: leftSelectedItem.page == item
                    ? FluentTheme.of(context).accentColor
                    : FluentTheme.of(context).typography.body?.color,
              ),
            ),
          ),
        );
      },
    );
  }
}
