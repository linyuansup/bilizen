import 'package:bilizen/ui/windows/page/home/center/setting/info/playback/provider.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:media_kit/media_kit.dart';

class PlaybackPage extends StatelessWidget {
  const PlaybackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 24,
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
          [
                _PlayOnStart(),
                _PlaybackDevice(),
              ]
              .map(
                (e) => RepaintBoundary(child: e),
              )
              .toList(),
    );
  }
}

class _PlaybackDevice extends StatelessWidget {
  const _PlaybackDevice();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '播放设备',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Consumer(
          builder: (context, ref, child) {
            final state = ref.watch(playbackProvider);
            return RepaintBoundary(
              child: ComboBox<AudioDevice>(
                isExpanded: true,
                value:
                    state.currentAudioDeviceIndex != null &&
                        state.currentAudioDeviceIndex! < state.devices.length
                    ? state.devices[state.currentAudioDeviceIndex!]
                    : null,
                items: state.devices
                    .map(
                      (e) => ComboBoxItem<AudioDevice>(
                        value: e,
                        child: Text("${e.name} (${e.description})"),
                      ),
                    )
                    .toList(),
                onChanged: (value) async {
                  await ref
                      .read(playbackProvider.notifier)
                      .setAudioDevice(value);
                },
              ),
            );
          },
        ),
      ],
    );
  }
}

class _PlayOnStart extends ConsumerWidget {
  const _PlayOnStart();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Checkbox(
      checked: ref.watch(playbackProvider).playOnStart,
      onChanged: (value) {
        if (value == null) return;
        final state = ref.read(playbackProvider);
        ref
            .read(playbackProvider.notifier)
            .update(state.copyWith(playOnStart: value));
      },
      content: const Text('启动时自动播放上次播放的视频'),
    );
  }
}
