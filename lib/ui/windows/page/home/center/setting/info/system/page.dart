import 'package:bilizen/ui/windows/page/home/center/setting/info/system/provider.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SystemPage extends StatelessWidget {
  const SystemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 12,
      children: [
        _CloseMainPanel(),
      ],
    );
  }
}

class _CloseMainPanel extends StatelessWidget {
  const _CloseMainPanel();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "关闭主面板",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(width: 24),
        Consumer(
          builder: (context, ref, child) {
            return RepaintBoundary(
              child: RadioButton(
                checked:
                    ref.watch(systemProvider).closeMainPanelAction ==
                    CloseMainPanelAction.toTray,
                onChanged: (value) {
                  if (value) {
                    ref
                        .read(systemProvider.notifier)
                        .update(
                          ref
                              .read(systemProvider)
                              .copyWith(
                                closeMainPanelAction:
                                    CloseMainPanelAction.toTray,
                              ),
                        );
                  }
                },
                content: Text("最小化到托盘"),
              ),
            );
          },
        ),
        const SizedBox(width: 12),
        Consumer(
          builder: (context, ref, child) {
            return RepaintBoundary(
              child: RadioButton(
                checked:
                    ref.watch(systemProvider).closeMainPanelAction ==
                    CloseMainPanelAction.exit,
                onChanged: (value) {
                  if (value) {
                    ref
                        .read(systemProvider.notifier)
                        .update(
                          ref
                              .read(systemProvider)
                              .copyWith(
                                closeMainPanelAction: CloseMainPanelAction.exit,
                              ),
                        );
                  }
                },
                content: Text("退出程序"),
              ),
            );
          },
        ),
      ],
    );
  }
}
