import 'package:dyn_mouse_scroll/dyn_mouse_scroll.dart';
import 'package:fluent_ui/fluent_ui.dart';

class ScrollBarListView extends StatefulWidget {
  const ScrollBarListView({
    super.key,
    required this.itemBuilder,
    this.padding,
    required this.itemCount,
    this.scrollDirection = Axis.vertical,
  });

  final Widget? Function(BuildContext, int) itemBuilder;
  final EdgeInsetsGeometry? padding;
  final Axis scrollDirection;
  final int itemCount;

  @override
  State<ScrollBarListView> createState() => _ScrollBarListViewState();
}

class _ScrollBarListViewState extends State<ScrollBarListView> {
  late ScrollController _controller;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DynMouseScroll(
      builder: (context, controller, physics) {
        _controller = controller;
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
    const scrollbarWidth = 16.0;
    EdgeInsetsGeometry basePadding = widget.padding ?? EdgeInsets.zero;
    if (widget.scrollDirection == Axis.vertical) {
      return basePadding.add(const EdgeInsets.only(right: scrollbarWidth));
    } else {
      return basePadding.add(const EdgeInsets.only(bottom: scrollbarWidth));
    }
  }
}
