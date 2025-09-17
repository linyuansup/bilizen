import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/package/playback_manager/playback_controller.dart';
import 'package:bilizen/package/playback_manager/playback_view.dart';
import 'package:fluent_ui/fluent_ui.dart';

class CenterArea extends StatelessWidget {
  CenterArea({super.key, required this.size});

  final Size size;
  final _playbackManager = getIt<PlaybackController>();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SizedBox(
          width: size.width,
          height: size.height,
          child: PlaybackView(player: _playbackManager.player),
        );
      },
    );
  }
}
