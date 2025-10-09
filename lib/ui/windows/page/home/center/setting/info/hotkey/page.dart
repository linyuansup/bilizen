import 'package:bilizen/ui/windows/page/home/center/setting/info/hotkey/provider.dart';
import 'package:bilizen/ui/windows/page/home/center/setting/info/hotkey/recorder/page.dart';
import 'package:bilizen/ui/windows/page/home/center/setting/info/hotkey/recorder/provider.dart';
import 'package:bilizen/util/keyboard.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hotkey_manager/hotkey_manager.dart';

class HotkeyPage extends StatelessWidget {
  const HotkeyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _InfoColumn(),
        const SizedBox(width: 24),
        Expanded(child: RepaintBoundary(child: _HotkeyColumn())),
        const SizedBox(width: 24),
        Expanded(child: RepaintBoundary(child: _GlobalHotkeyColumn())),
      ],
    );
  }
}

class _InfoColumn extends StatelessWidget {
  const _InfoColumn();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 18,
      children: [
        Text(
          '功能说明',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 26,
          children: HotKeyAction.values.map((action) {
            return Text(action.display);
          }).toList(),
        ),
      ],
    );
  }
}

class _HotkeyColumn extends StatelessWidget {
  const _HotkeyColumn();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 12,
      children: [
        const Text(
          '快捷键',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        for (var i = 0; i < 3; i++)
          RepaintBoundary(child: _HotkeyButton(index: i, global: false)),
      ],
    );
  }
}

class _GlobalHotkeyColumn extends StatelessWidget {
  const _GlobalHotkeyColumn();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 12,
      children: [
        const Text(
          '全局快捷键',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        for (var i = 0; i < 3; i++)
          RepaintBoundary(child: _HotkeyButton(index: i, global: true)),
      ],
    );
  }
}

class _HotkeyButton extends ConsumerWidget {
  final int index;
  final bool global;

  const _HotkeyButton({required this.index, required this.global});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final text = ref.watch(
      hotKeyProvider.select((value) {
        final Map<String, dynamic>? jsonKey;
        if (global) {
          jsonKey = value.hotkeys[index].globalJsonKey;
        } else {
          jsonKey = value.hotkeys[index].jsonKey;
        }
        if (jsonKey == null || jsonKey.isEmpty) {
          return "空";
        } else {
          return HotKey.fromJson(jsonKey).displayName;
        }
      }),
    );
    return GestureDetector(
      onTap: () async {
        ref.invalidate(hotkeyRecorderProvider);
        final result = await showDialog<Map<String, dynamic>?>(
          context: context,
          builder: (context) => HotkeyRecorderDialog(
            scope: global ? HotKeyScope.system : HotKeyScope.inapp,
          ),
        );
        final element = ref.read(hotKeyProvider).hotkeys[index];
        if (global) {
          ref
              .read(hotKeyProvider.notifier)
              .updateHotkey(
                element.copyWith(globalJsonKey: result),
              );
        } else {
          ref
              .read(hotKeyProvider.notifier)
              .updateHotkey(
                element.copyWith(jsonKey: result),
              );
        }
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color: FluentTheme.of(context).cardColor,
          border: Border.all(
            color: FluentTheme.of(context).resources.controlStrokeColorDefault,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: FluentTheme.of(context).typography.body?.color,
          ),
        ),
      ),
    );
  }
}
