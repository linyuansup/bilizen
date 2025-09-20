import 'package:injectable/injectable.dart';
import 'package:smtc_windows/smtc_windows.dart';

@module
abstract class SmtcInjectable {
  @singleton
  SMTCWindows get smtc => SMTCWindows(
    metadata: const MusicMetadata(
      title: 'Title',
      album: 'Album',
      albumArtist: 'Album Artist',
      artist: 'Artist',
      thumbnail:
          'https://media.glamour.com/photos/5f4c44e20c71c58fc210d35f/master/w_2560%2Cc_limit/mgid_ao_image_mtv.jpg',
    ),
    timeline: const PlaybackTimeline(
      startTimeMs: 0,
      endTimeMs: 1000,
      positionMs: 0,
      minSeekTimeMs: 0,
      maxSeekTimeMs: 1000,
    ),
    config: const SMTCConfig(
      fastForwardEnabled: true,
      nextEnabled: true,
      pauseEnabled: true,
      playEnabled: true,
      rewindEnabled: true,
      prevEnabled: true,
      stopEnabled: false,
    ),
  );
}
