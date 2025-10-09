import 'package:dyn_mouse_scroll/dyn_mouse_scroll.dart';
import 'package:fluent_ui/fluent_ui.dart';

typedef OnBottom = Future<void> Function();

class ScrollBarListView extends StatefulWidget {
  const ScrollBarListView({
    super.key,
    required this.itemBuilder,
    this.padding,
    required this.itemCount,
    this.scrollDirection = Axis.vertical,
    this.onBottom,
  });

  final Widget? Function(BuildContext, int) itemBuilder;
  final EdgeInsetsGeometry? padding;
  final Axis scrollDirection;
  final int itemCount;
  final OnBottom? onBottom;

  @override
  State<ScrollBarListView> createState() => _ScrollBarListViewState();
}

class _ScrollBarListViewState extends State<ScrollBarListView> {
  late ScrollController _controller;
  bool _isFetching = false;
  bool _hasCheckedInitialLoad = false;
  late Function() _listener;

  void _addListener() {
    _listener = () async {
      if (_isBottom && !_isFetching) {
        _isFetching = true;
        await widget.onBottom?.call();
        _isFetching = false;
      }
    };
    _controller.addListener(_listener);
  }

  void _checkInitialLoad() {
    if (_hasCheckedInitialLoad || !_controller.hasClients) return;
    _hasCheckedInitialLoad = true;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!_controller.hasClients) return;

      final maxScroll = _controller.position.maxScrollExtent;
      if (maxScroll == 0 && widget.onBottom != null) {
        Future.microtask(() async {
          if (!_isFetching) {
            _isFetching = true;
            await widget.onBottom?.call();
            _isFetching = false;
          }
        });
      }
    });
  }

  @override
  void dispose() {
    _controller.removeListener(_listener);
    _controller.dispose();
    super.dispose();
  }

  bool get _isBottom {
    if (!_controller.hasClients) return false;
    final maxScroll = _controller.position.maxScrollExtent;
    final currentScroll = _controller.offset;
    return currentScroll >= maxScroll - 200;
  }

  @override
  Widget build(BuildContext context) {
    return DynMouseScroll(
      builder: (context, controller, physics) {
        _controller = controller;
        _addListener();
        _checkInitialLoad();
        return Scrollbar(
          controller: _controller,
          child: ListView.builder(
            physics: physics,
            scrollDirection: widget.scrollDirection,
            controller: _controller,
            itemCount: widget.itemCount,
            padding: _calculatePadding(),
            itemBuilder: widget.itemBuilder,
          ),
        );
      },
    );
  }

  EdgeInsetsGeometry _calculatePadding() {
    const scrollbarWidth = 8.0;
    EdgeInsetsGeometry basePadding = widget.padding ?? EdgeInsets.zero;
    if (widget.scrollDirection == Axis.vertical) {
      return basePadding.add(const EdgeInsets.only(right: scrollbarWidth));
    } else {
      return basePadding.add(const EdgeInsets.only(bottom: scrollbarWidth));
    }
  }
}
