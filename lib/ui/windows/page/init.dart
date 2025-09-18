import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/package/auto_update_manager.dart';
import 'package:bilizen/ui/windows/page/update_toast.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:smtc_windows/smtc_windows.dart';
import 'package:talker/talker.dart';
import 'package:toastification/toastification.dart';

void initUpdate(BuildContext context) {
  final updater = getIt<AutoUpdateManager>();
  updater.hasNewVersion().then((hasNew) {
    if (hasNew && context.mounted) {
      getIt<Talker>().debug("New version available");
      return Toastification().showCustom(
        builder: (context, holder) {
          return UpdateToast();
        },
      );
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
