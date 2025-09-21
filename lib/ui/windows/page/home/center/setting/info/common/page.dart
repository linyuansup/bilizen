import 'package:bilizen/ui/windows/page/home/center/setting/info/common/provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluent_ui/fluent_ui.dart';

class CommonPage extends StatelessWidget {
  const CommonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 12,
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
    return Checkbox(
      content: Text('启动播放器硬件加速'),
      checked: ref.watch(commonProvider).enablePlaybackHardwareAcceleration,
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
    );
  }
}
