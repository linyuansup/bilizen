import 'package:bilizen/ui/windows/page/home/center/setting/info/account/page.dart';
import 'package:bilizen/ui/windows/page/home/center/setting/info/common/page.dart';
import 'package:bilizen/ui/windows/page/home/center/setting/info/hotkey/page.dart';
import 'package:bilizen/ui/windows/page/home/center/setting/info/playback/page.dart';
import 'package:bilizen/ui/windows/page/home/center/setting/info/system/page.dart';
import 'package:bilizen/ui/windows/page/home/center/setting/info/tool/page.dart';
import 'package:bilizen/ui/windows/widget/scroll_bar_single_child.dart';
import 'package:fluent_ui/fluent_ui.dart';

class SettingInfoPage extends StatelessWidget {
  const SettingInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScrollBarSingleChild(
      padding: const EdgeInsets.fromLTRB(12, 12, 12, 90),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
            [
                  _LiveSavePart(),
                  Expander(
                    header: Text('账号'),
                    content: AccountPage(),
                  ),
                  Expander(
                    header: Text('常规'),
                    content: CommonPage(),
                  ),
                  Expander(
                    header: Text('播放'),
                    content: PlaybackPage(),
                  ),
                  // Expander(
                  //   header: Text('下载'),
                  //   content: DownloadPage(),
                  // ),
                  Expander(
                    header: Text('工具'),
                    content: ToolPage(),
                  ),
                  Expander(
                    header: Text('系统'),
                    content: SystemPage(),
                  ),
                  Expander(
                    header: Text('快捷键'),
                    content: HotkeyPage(),
                  ),
                ]
                .map(
                  (e) => Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: RepaintBoundary(child: e),
                  ),
                )
                .toList(),
      ),
    );
  }
}

class _LiveSavePart extends StatelessWidget {
  const _LiveSavePart();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: InfoBar(
        title: Text(
          "设置内容实时保存",
          style: FluentTheme.of(context).typography.body!,
        ),
      ),
    );
  }
}
