import 'package:injectable/injectable.dart';
import 'package:smtc_windows/smtc_windows.dart';

@module
abstract class SmtcInjectable {
  @singleton
  SMTCWindows get smtc => SMTCWindows(
    config: const SMTCConfig(
      fastForwardEnabled: true,
      nextEnabled: true,
      pauseEnabled: true,
      playEnabled: true,
      rewindEnabled: true,
      prevEnabled: true,
      stopEnabled: false,
    ),
    shuffleEnabled: true,
  );
}
