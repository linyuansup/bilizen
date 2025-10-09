import 'package:talker/talker.dart';

class PlaybackLog extends TalkerLog {
  PlaybackLog(String super.message);

  @override
  String get title => 'playback';

  @override
  AnsiPen get pen => AnsiPen()..yellow();
}

extension PlaybackLogExtension on Talker {
  void playback(String message) {
    logCustom(PlaybackLog(message));
  }
}
