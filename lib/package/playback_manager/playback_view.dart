import 'package:fluent_ui/fluent_ui.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';

class PlaybackView extends StatefulWidget {
  const PlaybackView({super.key, required this.player});

  final Player player;

  @override
  State<PlaybackView> createState() => _PlaybackViewState();
}

class _PlaybackViewState extends State<PlaybackView> {
  @override
  void initState() {
    super.initState();
    widget.player.setVideoTrack(widget.player.state.tracks.video.last);
  }

  @override
  void dispose() {
    widget.player.setVideoTrack(VideoTrack.no());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: Video(
        controller: VideoController(
          widget.player,
        ),
      ),
    );
  }
}
