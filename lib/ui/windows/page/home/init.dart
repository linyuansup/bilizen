import 'dart:io';

import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/package/auto_update_manager.dart';
import 'package:bilizen/ui/windows/page/home/dialog/update/page.dart';
import 'package:bilizen/util/toastification.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:smtc_windows/smtc_windows.dart';
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

void initSmtc() {
  final smtc = getIt<SMTCWindows>();
  smtc.buttonPressStream.listen((event) {
    switch (event) {
      case PressedButton.play:
        // Update playback status
        smtc.setPlaybackStatus(PlaybackStatus.playing);
        break;
      case PressedButton.pause:
        smtc.setPlaybackStatus(PlaybackStatus.paused);
        break;
      case PressedButton.next:
        break;
      case PressedButton.previous:
        break;
      case PressedButton.stop:
        smtc.setPlaybackStatus(PlaybackStatus.stopped);
        smtc.disableSmtc();
        break;
      default:
        break;
    }
  });
}
