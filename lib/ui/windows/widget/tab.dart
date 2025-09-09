import 'package:fluent_ui/fluent_ui.dart';

class FluentTab extends StatefulWidget {
  static const double _defaultTabBarHeight = 46.0;
  static const double _defaultMinTabWidth = 50.0;
  static const Duration _defaultAnimationDuration = Duration(milliseconds: 200);

  final List<FluentTabItem> tabs;
  final int currentIndex;
  final ValueChanged<int>? onChanged;
  final bool showCloseButton;
  final ValueChanged<int>? onClose;
  final Color? backgroundColor;
  final double tabBarHeight;
  final double minTabWidth;
  final double? maxTabWidth;
  final bool enableAnimation;
  final Duration animationDuration;

  const FluentTab({
    super.key,
    required this.tabs,
    this.currentIndex = 0,
    this.onChanged,
    this.showCloseButton = false,
    this.onClose,
    this.backgroundColor,
    this.tabBarHeight = _defaultTabBarHeight,
    this.minTabWidth = _defaultMinTabWidth,
    this.maxTabWidth,
    this.enableAnimation = true,
    this.animationDuration = _defaultAnimationDuration,
  });

  @override
  State<FluentTab> createState() => _FluentTabState();
}

class _FluentTabState extends State<FluentTab> with TickerProviderStateMixin {
  late int _currentIndex;
  late AnimationController _animationController;
  late Animation<double> _slideAnimation;
  final GlobalKey _tabBarKey = GlobalKey();
  final List<GlobalKey> _tabKeys = [];

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.currentIndex;
    _initializeAnimation();
    _initializeTabKeys();
    _animationController.forward();
  }

  void _initializeAnimation() {
    _animationController = AnimationController(
      duration: widget.animationDuration,
      vsync: this,
    );
    _slideAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOutCubic,
      ),
    );
  }

  void _initializeTabKeys() {
    _tabKeys.clear();
    _tabKeys.addAll(List.generate(widget.tabs.length, (_) => GlobalKey()));
  }

  @override
  void didUpdateWidget(FluentTab oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (_shouldUpdateCurrentIndex(oldWidget)) {
      _updateCurrentIndex();
    }

    if (widget.tabs.length != oldWidget.tabs.length) {
      _initializeTabKeys();
    }
  }

  bool _shouldUpdateCurrentIndex(FluentTab oldWidget) {
    return widget.currentIndex != oldWidget.currentIndex;
  }

  void _updateCurrentIndex() {
    _currentIndex = widget.currentIndex;
    if (widget.enableAnimation) {
      _resetAndPlayAnimation();
    }
  }

  void _resetAndPlayAnimation() {
    _animationController.reset();
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _handleTabTap(int index) {
    if (_shouldIgnoreTabTap(index)) return;

    setState(() => _currentIndex = index);

    if (widget.enableAnimation) {
      _resetAndPlayAnimation();
    }

    widget.onChanged?.call(index);
  }

  bool _shouldIgnoreTabTap(int index) {
    return index == _currentIndex || widget.tabs[index].disabled;
  }

  void _handleTabClose(int index) => widget.onClose?.call(index);

  @override
  Widget build(BuildContext context) {
    if (widget.tabs.isEmpty) return const SizedBox.shrink();

    return Column(
      children: [
        _buildTabBarContainer(context),
        Expanded(child: _buildTabBody()),
      ],
    );
  }

  Widget _buildTabBarContainer(BuildContext context) {
    final theme = FluentTheme.of(context);

    return Container(
      key: _tabBarKey,
      height: widget.tabBarHeight,
      decoration: _buildTabBarDecoration(theme),
      child: LayoutBuilder(builder: _buildTabBar),
    );
  }

  BoxDecoration _buildTabBarDecoration(FluentThemeData theme) {
    return BoxDecoration(
      color:
          widget.backgroundColor ??
          theme.micaBackgroundColor.withValues(alpha: 0.8),
      border: Border(
        bottom: BorderSide(
          color: theme.resources.dividerStrokeColorDefault,
          width: 1.0,
        ),
      ),
    );
  }

  Widget _buildTabBody() {
    return widget.enableAnimation
        ? _buildAnimatedTabBody()
        : _buildCurrentTabBody();
  }

  Widget _buildAnimatedTabBody() {
    return AnimatedBuilder(
      animation: _slideAnimation,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(0, (1 - _slideAnimation.value) * 20),
          child: Opacity(
            opacity: _slideAnimation.value,
            child: _buildCurrentTabBody(),
          ),
        );
      },
    );
  }

  Widget _buildCurrentTabBody() {
    return _isValidTabIndex(_currentIndex)
        ? widget.tabs[_currentIndex].body
        : const SizedBox.shrink();
  }

  bool _isValidTabIndex(int index) {
    return index >= 0 && index < widget.tabs.length;
  }

  Widget _buildTabBar(BuildContext context, BoxConstraints constraints) {
    final availableWidth = constraints.maxWidth;
    final tabCount = widget.tabs.length;
    final minTotalWidth = tabCount * widget.minTabWidth;

    return minTotalWidth <= availableWidth
        ? _buildFixedTabBar(availableWidth)
        : _buildScrollableTabBar(context);
  }

  Widget _buildFixedTabBar(double availableWidth) {
    final tabWidth = availableWidth / widget.tabs.length;

    return Row(
      children: widget.tabs.asMap().entries.map((entry) {
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
          children: widget.tabs.asMap().entries.map((entry) {
            return _buildTabItem(
              context,
              entry.value,
              entry.key,
              widget.minTabWidth,
            );
          }).toList(),
        ),
      ),
    );
  }

  Widget _buildTabItem(
    BuildContext context,
    FluentTabItem tab,
    int index,
    double tabWidth,
  ) {
    final theme = FluentTheme.of(context);
    final isSelected = index == _currentIndex;
    final isDisabled = tab.disabled;

    return Padding(
      padding: const EdgeInsets.all(2),
      child: SizedBox(
        key: _tabKeys[index],
        width: tabWidth,
        child: RepaintBoundary(
          child: Button(
            onPressed: isDisabled ? null : () => _handleTabTap(index),
            style: _buildTabButtonStyle(theme, isSelected),
            child: _buildTabContent(theme, tab, index, isSelected, isDisabled),
          ),
        ),
      ),
    );
  }

  ButtonStyle _buildTabButtonStyle(FluentThemeData theme, bool isSelected) {
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
    FluentTabItem tab,
    int index,
    bool isSelected,
    bool isDisabled,
  ) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2.0, vertical: 6.0),
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          ..._buildTabIcon(theme, tab, isSelected, isDisabled),
          _buildTabLabel(theme, tab, isSelected, isDisabled),
          ..._buildTabBadge(theme, tab),
          ..._buildCloseButton(theme, index, isDisabled),
        ],
      ),
    );
  }

  List<Widget> _buildTabIcon(
    FluentThemeData theme,
    FluentTabItem tab,
    bool isSelected,
    bool isDisabled,
  ) {
    if (tab.icon == null) return [];

    return [
      AnimatedContainer(
        duration: widget.animationDuration,
        child: Icon(
          tab.icon,
          size: 16.0,
          color: _getTabColor(theme, isSelected, isDisabled),
        ),
      ),
      const SizedBox(width: 8.0),
    ];
  }

  Widget _buildTabLabel(
    FluentThemeData theme,
    FluentTabItem tab,
    bool isSelected,
    bool isDisabled,
  ) {
    return Flexible(
      child: AnimatedDefaultTextStyle(
        duration: widget.animationDuration,
        style: TextStyle(
          fontSize: 14.0,
          fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
          color: _getTabColor(theme, isSelected, isDisabled),
        ),
        child: Text(
          tab.label,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          textAlign: TextAlign.center,
          style: const TextStyle(fontFamily: "Microsoft YaHei"),
        ),
      ),
    );
  }

  List<Widget> _buildTabBadge(FluentThemeData theme, FluentTabItem tab) {
    if (tab.badge == null) return [];

    return [
      const SizedBox(width: 6.0),
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 2.0),
        decoration: BoxDecoration(
          color: theme.accentColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Text(
          tab.badge!,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 11.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    ];
  }

  List<Widget> _buildCloseButton(
    FluentThemeData theme,
    int index,
    bool isDisabled,
  ) {
    if (!widget.showCloseButton || isDisabled) return [];

    return [
      const SizedBox(width: 8.0),
      MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: () => _handleTabClose(index),
          child: Container(
            padding: const EdgeInsets.all(2.0),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(3.0)),
            child: Icon(
              FluentIcons.chrome_close,
              size: 12.0,
              color: theme.resources.textFillColorSecondary,
            ),
          ),
        ),
      ),
    ];
  }

  Color _getTabColor(FluentThemeData theme, bool isSelected, bool isDisabled) {
    if (isDisabled) return theme.resources.textFillColorDisabled;
    if (isSelected) return theme.accentColor;
    return theme.resources.textFillColorPrimary;
  }
}

class FluentTabItem {
  final String label;
  final IconData? icon;
  final Widget body;
  final String? badge;
  final bool disabled;
  final String? tooltip;

  const FluentTabItem({
    required this.label,
    required this.body,
    this.icon,
    this.badge,
    this.disabled = false,
    this.tooltip,
  });
}

class TabItem {
  final Widget text;
  final Widget? icon;
  final Widget body;
  final Widget? badge;
  final bool disabled;
  const TabItem({
    required this.text,
    this.icon,
    required this.body,
    this.badge,
    this.disabled = false,
  });
}
