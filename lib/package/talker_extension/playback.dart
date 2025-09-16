import 'package:talker/talker.dart';

class PlaybackLog extends TalkerLog {
  PlaybackLog(String super.message);

  static get getTitle => 'playback';

  @override
  String get title => getTitle;

  @override
  AnsiPen get pen => AnsiPen()..yellow();
}

extension PlaybackLogExtension on Talker {
  void playback(String message) {
    logCustom(PlaybackLog(message));
  }
}
