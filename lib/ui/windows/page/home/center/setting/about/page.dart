import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/package/auto_update_manager/auto_update_manager.dart';
import 'package:fluent_ui/fluent_ui.dart';

class SettingAboutPage extends StatelessWidget {
  const SettingAboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 128,
            height: 128,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: const DecorationImage(
                image: AssetImage('assets/app_icon.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 24),
          Text(
            '版本 ${getIt<AutoUpdateManager>().currentVersion}',
            style: FluentTheme.of(context).typography.body,
          ),
          const SizedBox(height: 24),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '关于应用',
                    style: FluentTheme.of(context).typography.subtitle,
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    '一个专注于音频播放的跨平台 Bilibili 客户端',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    '基于 Flutter 开发的跨平台 Bilibili 客户端，专注于提供类似网易云音乐的音频播放体验。让你可以更纯粹地享受 Bilibili 上的音频内容，无论是音乐、有声书还是播客。\n\n但我们仍然为视频播放相关功能提供支持！',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
