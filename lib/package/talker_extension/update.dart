import 'package:talker/talker.dart';

class UpdateLog extends TalkerLog {
  UpdateLog(String super.message);

  @override
  String get title => 'update';

  @override
  AnsiPen get pen => AnsiPen()..cyan();
}

extension UpdateLogExtension on Talker {
  void update(String message) {
    logCustom(UpdateLog(message));
  }
}
