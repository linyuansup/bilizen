import 'package:fluent_ui/fluent_ui.dart' as fluent;
import 'package:fluent_ui/fluent_ui.dart';
import 'package:nil/nil.dart';

class FluentTabBar extends StatelessWidget {
  static const double _defaultTabBarHeight = 46.0;
  static const double _defaultMinTabWidth = 50.0;

  const FluentTabBar({
    super.key,
    required this.selectedIndex,
    required this.items,
    this.onTap,
    this.backgroundColor,
    this.tabBarHeight = _defaultTabBarHeight,
    this.minTabWidth = _defaultMinTabWidth,
  });

  final int selectedIndex;
  final List<FluentTabBarItem> items;
  final ValueChanged<int>? onTap;
  final Color? backgroundColor;
  final double tabBarHeight;
  final double minTabWidth;

  @override
  Widget build(BuildContext context) {
    if (items.isEmpty) return nil;

    final theme = fluent.FluentTheme.of(context);

    return Container(
      height: tabBarHeight,
      decoration: BoxDecoration(
        color:
            backgroundColor ?? theme.micaBackgroundColor.withValues(alpha: 0.8),
        border: Border(
          bottom: BorderSide(
            color: theme.resources.dividerStrokeColorDefault,
            width: 1.0,
          ),
        ),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) => _buildTabBar(context, constraints),
      ),
    );
  }

  Widget _buildTabBar(BuildContext context, BoxConstraints constraints) {
    final availableWidth = constraints.maxWidth;
    final tabCount = items.length;
    final minTotalWidth = tabCount * minTabWidth;

    return minTotalWidth <= availableWidth
        ? _buildFixedTabBar(availableWidth, context)
        : _buildScrollableTabBar(context);
  }

  Widget _buildFixedTabBar(double availableWidth, BuildContext context) {
    final tabWidth = availableWidth / items.length;

    return Row(
      children: items.asMap().entries.map((entry) {
        return SizedBox(
          width: tabWidth,
          child: _buildTabItem(context, entry.value, entry.key, tabWidth),
        );
      }).toList(),
    );
  }

  Widget _buildScrollableTabBar(BuildContext context) {
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: items.asMap().entries.map((entry) {
            return _buildTabItem(
              context,
              entry.value,
              entry.key,
              minTabWidth,
            );
          }).toList(),
        ),
      ),
    );
  }

  Widget _buildTabItem(
    BuildContext context,
    FluentTabBarItem item,
    int index,
    double tabWidth,
  ) {
    final theme = fluent.FluentTheme.of(context);
    final isSelected = index == selectedIndex;

    return RepaintBoundary(
      child: Padding(
        padding: const EdgeInsets.all(2),
        child: SizedBox(
          width: tabWidth,
          child: fluent.Button(
            onPressed: () => onTap?.call(index),
            style: _buildTabButtonStyle(theme, isSelected),
            child: _buildTabContent(theme, item, isSelected),
          ),
        ),
      ),
    );
  }

  fluent.ButtonStyle _buildTabButtonStyle(
    fluent.FluentThemeData theme,
    bool isSelected,
  ) {
    return fluent.ButtonStyle(
      backgroundColor: fluent.WidgetStateProperty.resolveWith((states) {
        if (states.contains(fluent.WidgetState.pressed)) {
          return theme.accentColor.withValues(alpha: 0.2);
        }
        if (states.contains(fluent.WidgetState.hovered)) {
          return theme.resources.subtleFillColorSecondary;
        }
        if (isSelected) {
          return theme.accentColor.withValues(alpha: 0.1);
        }
        return Colors.transparent;
      }),
      foregroundColor: fluent.WidgetStateProperty.all(Colors.transparent),
      padding: fluent.WidgetStateProperty.all(EdgeInsets.zero),
      shape: fluent.WidgetStateProperty.all(_buildTabShape(theme, isSelected)),
    );
  }

  RoundedRectangleBorder _buildTabShape(
    fluent.FluentThemeData theme,
    bool isSelected,
  ) {
    return RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(6.0),
      side: isSelected
          ? BorderSide(
              color: theme.accentColor.withValues(alpha: 0.3),
              width: 1.0,
            )
          : BorderSide.none,
    );
  }

  Widget _buildTabContent(
    fluent.FluentThemeData theme,
    FluentTabBarItem item,
    bool isSelected,
  ) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2.0, vertical: 6.0),
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            item.icon,
            size: 16.0,
            color: _getTabColor(theme, isSelected),
          ),
          const SizedBox(width: 8.0),
          Flexible(
            child: Text(
              item.label,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
                color: _getTabColor(theme, isSelected),
                fontFamily: "Microsoft YaHei",
              ),
            ),
          ),
        ],
      ),
    );
  }

  Color _getTabColor(fluent.FluentThemeData theme, bool isSelected) {
    if (isSelected) return theme.accentColor;
    return theme.resources.textFillColorPrimary;
  }
}

class FluentTabBarItem {
  final String label;
  final IconData icon;

  FluentTabBarItem({
    required this.label,
    required this.icon,
  });
}
