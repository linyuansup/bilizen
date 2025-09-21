part of 'playback_controller.dart';

mixin SmtcController {
  void initSmtc(PlaybackController playbackController) {
    final smtc = getIt<SMTCWindows>();
    smtc.buttonPressStream.listen((event) async {
      switch (event) {
        case PressedButton.play:
          await playbackController.play();
          break;
        case PressedButton.pause:
          await playbackController.pause();
          break;
        case PressedButton.next:
          await playbackController.next();
          break;
        case PressedButton.previous:
          await playbackController.previous();
          break;
        default:
          break;
      }
    });
    playbackController.currentPlaying
        .asyncMap((e) async {
          if (e == null) {
            return null;
          }
          return MusicMetadata(
            title: await e.item.video.title,
            artist: await (await e.item.video.uploader).nickName,
            thumbnail: await e.item.video.cover,
          );
        })
        .distinct()
        .listen((metadata) async {
          if (metadata == null) {
            return;
          } else {
            smtc.updateMetadata(metadata);
          }
        });
    playbackController.currentPlaying
        .map((e) => e?.isPlaying)
        .distinct()
        .listen((
          isPlaying,
        ) async {
          if (isPlaying == null) {
            return;
          } else {
            await smtc.setPlaybackStatus(
              isPlaying ? PlaybackStatus.playing : PlaybackStatus.paused,
            );
          }
        });
    playbackController.currentPlaying.map((e) => e?.position).distinct().listen(
      (
        position,
      ) async {
        final media = playbackController.currentPlaying.value;
        if (media == null) {
          return;
        } else {
          final totalDuration =
              (await media.item.video.playlist)[media.item.pIndex - 1].duration;
          smtc.updateTimeline(
            PlaybackTimeline(
              startTimeMs: 0,
              endTimeMs: totalDuration * 1000,
              positionMs: position?.inMilliseconds ?? 0,
            ),
          );
        }
      },
    );
  }
}
