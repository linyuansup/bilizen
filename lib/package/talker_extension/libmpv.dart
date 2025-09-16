import 'package:talker/talker.dart';

class LibmpvLog extends TalkerLog {
  LibmpvLog(String super.message);

  static get getTitle => 'libmpv';

  @override
  String get title => getTitle;

  @override
  AnsiPen get pen => AnsiPen()..magenta();
}

extension LibmpvLogExtension on Talker {
  void libmpv(String message) {
    logCustom(LibmpvLog(message));
  }
}
