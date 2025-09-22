import 'package:fluent_ui/fluent_ui.dart';

class PlaybackPage extends StatelessWidget {
  const PlaybackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 12,
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
          [
                _PlayOnStart(),
              ]
              .map(
                (e) => RepaintBoundary(child: e),
              )
              .toList(),
    );
  }
}

class _PlayOnStart extends StatelessWidget {
  const _PlayOnStart();

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      checked: false,
      onChanged: (value) {},
      content: const Text('启动时自动播放上次播放的视频'),
    );
  }
}
