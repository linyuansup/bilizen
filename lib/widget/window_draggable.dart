import 'package:fluent_ui/fluent_ui.dart';
import 'package:window_manager/window_manager.dart';

class WindowDraggable extends StatelessWidget {
  const WindowDraggable({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTapDown: (_) {
        windowManager.startDragging();
      },
      child: child,
    );
  }
}
