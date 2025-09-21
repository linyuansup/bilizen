import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/package/auto_update_manager/auto_update_manager.dart';
import 'package:bilizen/ui/windows/page/home/bottom_bar/bottom_bar.dart';
import 'package:bilizen/ui/windows/page/home/center/page.dart';
import 'package:bilizen/ui/windows/page/home/left_bar/page.dart';
import 'package:bilizen/ui/windows/page/home/top_bar/page.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:tray_manager/tray_manager.dart';
import 'package:window_manager/window_manager.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TrayListener {
  @override
  void initState() {
    trayManager.addListener(this);
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      getIt<AutoUpdateManager>().checkUpdate(context);
    });
    super.initState();
  }

  @override
  void onTrayIconMouseDown() {
    windowManager.show();
  }

  @override
  void onTrayIconRightMouseDown() {
    trayManager.popUpContextMenu();
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      padding: EdgeInsets.zero,
      content: Stack(
        children: [
          Column(
            children: [
              DragToMoveArea(child: RepaintBoundary(child: TopBar())),
              Expanded(
                child: Row(
                  children: [
                    RepaintBoundary(child: LeftBar()),
                    Expanded(child: RepaintBoundary(child: CenterPage())),
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
