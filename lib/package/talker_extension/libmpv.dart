import 'package:talker/talker.dart';

class LibmpvLog extends TalkerLog {
  LibmpvLog(String super.message);

  @override
  String get title => 'libmpv';

  @override
  AnsiPen get pen => AnsiPen()..magenta();
}

extension LibmpvLogExtension on Talker {
  void libmpv(String message) {
    logCustom(LibmpvLog(message));
  }
}
