import 'package:bilizen/ui/windows/page/home/center/setting/info/common/provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluent_ui/fluent_ui.dart';

class CommonPage extends StatelessWidget {
  const CommonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 24,
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
          [
                _EnablePlaybackHardwareCheckbox(),
              ]
              .map(
                (e) => RepaintBoundary(child: e),
              )
              .toList(),
    );
  }
}

class _EnablePlaybackHardwareCheckbox extends ConsumerWidget {
  const _EnablePlaybackHardwareCheckbox();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      spacing: 12,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RepaintBoundary(
          child: Checkbox(
            content: Text('启动播放器硬件加速'),
            checked: ref
                .watch(commonProvider)
                .enablePlaybackHardwareAcceleration,
            onChanged: (value) {
              if (value == null) return;
              final state = ref.read(commonProvider);
              ref
                  .read(commonProvider.notifier)
                  .update(
                    state.copyWith(
                      enablePlaybackHardwareAcceleration: value,
                    ),
                  );
            },
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: InfoBar(
            title: const Text('关于播放器硬件加速'),
            content: const Text(
              '启用硬件加速可以提高视频播放性能，但可能会导致某些设备出现黑屏。如果遇到播放问题，请尝试关闭此选项。',
            ),
            severity: InfoBarSeverity.info,
            isLong: true,
          ),
        ),
      ],
    );
  }
}
