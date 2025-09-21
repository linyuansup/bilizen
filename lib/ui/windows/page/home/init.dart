import 'dart:io';

import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/package/auto_update_manager.dart';
import 'package:bilizen/ui/windows/page/home/dialog/update/page.dart';
import 'package:bilizen/util/toastification.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:talker/talker.dart';

void initUpdate(BuildContext context) {
  final updater = getIt<AutoUpdateManager>();
  updater.hasNewVersion().then((hasNewVersion) async {
    if (hasNewVersion && context.mounted) {
      Toast.info(
        "发现新版本",
        onTap: () async {
          await showDialog(
            context: context,
            builder: (context) => UpdateDialog(),
          );
        },
      );
    }
    final updateFile = File('./bilizen-latest.zip');
    final hasUpdateFile = await updateFile.exists();
    getIt<Talker>().debug("检查更新文件: $hasUpdateFile");
    if (hasUpdateFile) {
      await updateFile.delete();
      if (!hasNewVersion) {
        Toast.success("更新完成");
      }
    }
  });
}
