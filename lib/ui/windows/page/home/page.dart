import 'package:bilizen/ui/windows/page/home/bottom_bar/bottom_bar.dart';
import 'package:bilizen/ui/windows/page/home/center/page.dart';
import 'package:bilizen/ui/windows/page/home/left_bar/page.dart';
import 'package:bilizen/ui/windows/page/home/top_bar/page.dart';
import 'package:bilizen/ui/windows/widget/window_draggable.dart';
import 'package:fluent_ui/fluent_ui.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      padding: EdgeInsets.zero,
      content: Stack(
        children: [
          Column(
            children: [
              WindowDraggable(child: TopBar()),
              Expanded(
                child: Row(
                  children: [
                    LeftBar(),
                    Expanded(
                      child: CenterPage(),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            left: 16,
            right: 16,
            bottom: 16,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: BottomBar(),
            ),
          ),
        ],
      ),
    );
  }
}
