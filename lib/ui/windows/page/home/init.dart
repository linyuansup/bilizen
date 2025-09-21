import 'dart:io';

import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/package/auto_update_manager.dart';
import 'package:bilizen/package/playback_manager/playback_controller.dart';
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
  final playbackController = getIt<PlaybackController>();
  smtc.buttonPressStream.listen((event) async {
    switch (event) {
      case PressedButton.play:
        await playbackController.play();
        break;
      case PressedButton.pause:
        await playbackController.pause();
        break;
      case PressedButton.next:
        await playbackController.next();
        break;
      case PressedButton.previous:
        await playbackController.previous();
        break;
      default:
        break;
    }
  });
  playbackController.currentPlaying.listen((media) async {
    if (media == null) {
      return;
    } else {
      await smtc.setPlaybackStatus(
        media.isPlaying ? PlaybackStatus.playing : PlaybackStatus.paused,
      );
      final nickname = await (await media.item.video.uploader).nickName;
      await smtc.setTitle(await media.item.video.title);
      await smtc.setArtist(nickname);
      await smtc.setThumbnail(await media.item.video.cover);
      final totalDuration =
          (await media.item.video.playlist)[media.item.pIndex].duration;
      await smtc.setEndTime(Duration(seconds: totalDuration));
      await smtc.setPosition(media.position);
    }
  });
  smtc.setStartTime(Duration.zero);
}
