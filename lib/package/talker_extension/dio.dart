import 'package:talker/talker.dart';

class DioLog extends TalkerLog {
  DioLog(String super.message);

  @override
  String get title => 'dio';

  @override
  AnsiPen get pen => AnsiPen()..blue();
}

extension DioLogExtension on Talker {
  void dio(String message) {
    logCustom(DioLog(message));
  }
}
