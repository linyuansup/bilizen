import 'package:bilizen/page/windows/video/center/page.dart';
import 'package:bilizen/page/windows/video/right_bar/page.dart';
import 'package:bilizen/page/windows/video/top_bar/page.dart';
import 'package:bilizen/widget/window_draggable.dart';
import 'package:fluent_ui/fluent_ui.dart';

const _rightBarMinWidth = 380.0;

class VideoPage extends StatelessWidget {
  const VideoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      padding: EdgeInsets.zero,
      content: Column(
        children: [
          WindowDraggable(child: TopBar()),
          Expanded(
            child: LayoutBuilder(
              builder: (context, constraints) {
                return Row(
                  children: [
                    CenterArea(
                      size: _calculateCenterAreaSize(constraints),
                    ),
                    Expanded(child: RightArea()),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Size _calculateCenterAreaSize(BoxConstraints constraints) {
    if (constraints.maxHeight / 9 * 16 <
        constraints.maxWidth - _rightBarMinWidth) {
      return _preferHeight(constraints);
    }
    return _preferWidth(constraints);
  }

  Size _preferWidth(BoxConstraints constraints) {
    return Size(
      constraints.maxWidth - _rightBarMinWidth,
      constraints.maxHeight,
    );
  }

  Size _preferHeight(BoxConstraints constraints) {
    return Size(constraints.maxHeight / 9 * 16, constraints.maxHeight);
  }
}
