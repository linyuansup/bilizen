import 'package:talker/talker.dart';

class CacheLog extends TalkerLog {
  CacheLog(String super.message);

  @override
  String get title => 'cache_db';

  @override
  AnsiPen get pen => AnsiPen()..cyan();
}

extension CacheLogExtension on Talker {
  void cache(String message) {
    logCustom(CacheLog(message));
  }
}
