import 'package:injectable/injectable.dart';
import 'package:talker/talker.dart';

@module
abstract class LoggerInjectable {
  @singleton
  Talker get talker => Talker();
}
