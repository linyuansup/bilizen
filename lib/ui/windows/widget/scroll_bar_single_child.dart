import 'package:dyn_mouse_scroll/dyn_mouse_scroll.dart';
import 'package:fluent_ui/fluent_ui.dart';

typedef OnBottom = Future<void> Function();

class ScrollBarSingleChild extends StatefulWidget {
  const ScrollBarSingleChild({
    super.key,
    required this.child,
    this.padding,
    this.scrollDirection = Axis.vertical,
    this.onBottom,
  });

  final Widget child;
  final EdgeInsetsGeometry? padding;
  final Axis scrollDirection;
  final OnBottom? onBottom;

  @override
  State<ScrollBarSingleChild> createState() => _ScrollBarSingleChildState();
}

class _ScrollBarSingleChildState extends State<ScrollBarSingleChild> {
  late ScrollController _controller;
  bool _isFetching = false;
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
    return currentScroll >= maxScroll - 200; // 距离底部200像素时触发
  }

  @override
  Widget build(BuildContext context) {
    return DynMouseScroll(
      builder: (context, controller, physics) {
        _controller = controller;
        _addListener();
        return Scrollbar(
          controller: _controller,
          child: SingleChildScrollView(
            physics: physics,
            scrollDirection: widget.scrollDirection,
            controller: _controller,
            padding: _calculatePadding(),
            child: widget.child,
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
