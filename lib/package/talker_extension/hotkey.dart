import 'package:talker/talker.dart';

class HotkeyLog extends TalkerLog {
  HotkeyLog(String super.message);

  @override
  String get title => 'hotkey';

  @override
  AnsiPen get pen => AnsiPen()..cyan();
}

extension HotkeyLogExtension on Talker {
  void hotkey(String message) {
    logCustom(HotkeyLog(message));
  }
}
