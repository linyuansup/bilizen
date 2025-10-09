import 'package:bilizen/ui/windows/widget/scroll_bar_single_child.dart';
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
    this.axis = Axis.horizontal,
    this.padding,
  });

  final int selectedIndex;
  final List<FluentTabBarItem> items;
  final ValueChanged<int>? onTap;
  final Color? backgroundColor;
  final double tabBarHeight;
  final double minTabWidth;
  final Axis axis;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    if (items.isEmpty) return nil;

    final theme = FluentTheme.of(context);

    if (axis == Axis.vertical) {
      return _buildVerticalTabBar(context, theme);
    }

    return SizedBox(
      height: tabBarHeight,
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

  Widget _buildVerticalTabBar(
    BuildContext context,
    FluentThemeData theme,
  ) {
    return IntrinsicWidth(
      child: Container(
        constraints: BoxConstraints(
          minWidth: minTabWidth,
        ),
        child: ScrollBarSingleChild(
          child: Column(
            children: items.asMap().entries.map((entry) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 4.0,
                  vertical: 2.0,
                ),
                child: _buildVerticalTabItem(context, entry.value, entry.key),
              );
            }).toList(),
          ),
        ),
      ),
    );
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
    return ScrollBarSingleChild(
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
    );
  }

  Widget _buildTabItem(
    BuildContext context,
    FluentTabBarItem item,
    int index,
    double tabWidth,
  ) {
    final theme = FluentTheme.of(context);
    final isSelected = index == selectedIndex;

    return RepaintBoundary(
      child: Padding(
        padding: const EdgeInsets.all(2),
        child: SizedBox(
          width: tabWidth,
          child: Button(
            onPressed: () => onTap?.call(index),
            style: _buildTabButtonStyle(theme, isSelected),
            child: _buildTabContent(theme, item, isSelected),
          ),
        ),
      ),
    );
  }

  Widget _buildVerticalTabItem(
    BuildContext context,
    FluentTabBarItem item,
    int index,
  ) {
    final theme = FluentTheme.of(context);
    final isSelected = index == selectedIndex;

    return RepaintBoundary(
      child: SizedBox(
        width: double.infinity,
        height: tabBarHeight,
        child: Button(
          onPressed: () => onTap?.call(index),
          style: _buildTabButtonStyle(theme, isSelected),
          child: _buildVerticalTabContent(theme, item, isSelected),
        ),
      ),
    );
  }

  ButtonStyle _buildTabButtonStyle(
    FluentThemeData theme,
    bool isSelected,
  ) {
    return ButtonStyle(
      backgroundColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.pressed)) {
          return theme.accentColor.withValues(alpha: 0.2);
        }
        if (states.contains(WidgetState.hovered)) {
          return theme.resources.subtleFillColorSecondary;
        }
        if (isSelected) {
          return theme.accentColor.withValues(alpha: 0.1);
        }
        return Colors.transparent;
      }),
      foregroundColor: WidgetStateProperty.all(Colors.transparent),
      padding: WidgetStateProperty.all(EdgeInsets.zero),
      shape: WidgetStateProperty.all(_buildTabShape(theme, isSelected)),
    );
  }

  RoundedRectangleBorder _buildTabShape(
    FluentThemeData theme,
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
    FluentThemeData theme,
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
          if (item.icon != null) ...[
            Icon(
              item.icon!,
              size: 16.0,
              color: _getTabColor(theme, isSelected),
            ),
            const SizedBox(width: 8.0),
          ],
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
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildVerticalTabContent(
    FluentThemeData theme,
    FluentTabBarItem item,
    bool isSelected,
  ) {
    return Container(
      margin: const EdgeInsets.all(4.0),
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (item.icon != null) ...[
            Icon(
              item.icon!,
              size: 18.0,
              color: _getTabColor(theme, isSelected),
            ),
            const SizedBox(height: 4.0),
          ],
          Text(
            item.label,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
              color: _getTabColor(theme, isSelected),
            ),
          ),
        ],
      ),
    );
  }

  Color _getTabColor(FluentThemeData theme, bool isSelected) {
    if (isSelected) return theme.accentColor;
    return theme.resources.textFillColorPrimary;
  }
}

class FluentTabBarItem {
  final String label;
  final IconData? icon;

  FluentTabBarItem({
    required this.label,
    this.icon,
  });
}
