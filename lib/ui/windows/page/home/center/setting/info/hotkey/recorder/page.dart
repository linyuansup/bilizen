import 'package:bilizen/ui/windows/page/home/center/setting/info/hotkey/recorder/provider.dart';
import 'package:bilizen/util/keyboard.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hotkey_manager/hotkey_manager.dart';

class HotkeyRecorderDialog extends ConsumerStatefulWidget {
  const HotkeyRecorderDialog({super.key, required this.scope});

  final HotKeyScope scope;

  @override
  ConsumerState<HotkeyRecorderDialog> createState() =>
      _HotkeyRecorderDialogState();
}

class _HotkeyRecorderDialogState extends ConsumerState<HotkeyRecorderDialog> {
  bool _record(KeyEvent event) {
    if (event is KeyUpEvent) return false;
    final physicalKeysPressed = HardwareKeyboard.instance.physicalKeysPressed;
    PhysicalKeyboardKey? key = event.physicalKey;
    List<HotKeyModifier>? modifiers = HotKeyModifier.values
        .where((e) => e.physicalKeys.any(physicalKeysPressed.contains))
        .toList();
    if (modifiers.isNotEmpty) {
      modifiers = modifiers
          .where((e) => !e.physicalKeys.contains(key))
          .toList();
    }
    final hotKey = HotKey(
      key: key,
      modifiers: modifiers,
      scope: widget.scope,
    );
    ref.read(hotkeyRecorderProvider.notifier).setCurrentKey(hotKey.toJson());
    return true;
  }

  @override
  void initState() {
    super.initState();
    hotKeyManager.unregisterAll().then((value) {
      HardwareKeyboard.instance.addHandler(_record);
    });
  }

  @override
  void dispose() {
    HardwareKeyboard.instance.removeHandler(_record);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ContentDialog(
      title: const Text('录制快捷键'),
      content: SizedBox(
        width: 400,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _RecordArea(),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: InfoBar(
                title: const Text('提示'),
                content: const Text(
                  '支持的修饰键：Ctrl、Alt、Shift、Win，'
                  '可与字母、数字、功能键组合使用',
                ),
                severity: InfoBarSeverity.info,
              ),
            ),
          ],
        ),
      ),
      actions: [
        Button(
          child: const Text('清除'),
          onPressed: () => Navigator.of(context).pop(),
        ),
        Consumer(
          builder: (context, ref, child) {
            return FilledButton(
              onPressed: () {
                Navigator.of(context).pop(
                  ref.read(hotkeyRecorderProvider).currentKey,
                );
              },
              child: const Text('确定'),
            );
          },
        ),
      ],
    );
  }
}

class _RecordArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: FluentTheme.of(
          context,
        ).accentColor.withValues(alpha: 0.1),
      ),
      child: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 6,
          ),
          decoration: BoxDecoration(
            color: FluentTheme.of(context).accentColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Consumer(
            builder: (context, ref, child) {
              final currentKey = ref.watch(
                hotkeyRecorderProvider.select((state) => state.currentKey),
              );
              return RepaintBoundary(
                child: Text(
                  currentKey == null
                      ? '空'
                      : HotKey.fromJson(currentKey).displayName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
