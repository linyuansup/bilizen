import 'dart:ui';

import 'package:bilizen/data/storage/pref/setting/hotkey.dart';
import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/package/playback_manager/playback_controller.dart';
import 'package:bilizen/ui/windows/widget/hotkey.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.freezed.dart';
part 'provider.g.dart';

@Riverpod(keepAlive: true, name: "hotKeyProvider")
class HotkeyProvider extends _$HotkeyProvider {
  final _hotkeyStorage = getIt<HotkeySettingStorage>();

  @override
  HotkeyState build() {
    final hotkeys = _hotkeyStorage.getHotkeySetting().hotkeys.map((e) {
      return HotKeyElement(
        action: HotKeyAction.values.firstWhere((a) => a.name == e.action),
        jsonKey: e.jsonKey,
        globalJsonKey: e.globalJsonKey,
      );
    }).toList();

    return HotkeyState(hotkeys: hotkeys);
  }

  Future<void> updateHotkey(HotKeyElement element) async {
    final state = this.state;
    final hotkeys = state.hotkeys.map((e) {
      if (e.action == element.action) {
        return element;
      }
      return e;
    }).toList();
    this.state = HotkeyState(hotkeys: hotkeys);
    await _hotkeyStorage.setHotkeySetting(
      HotkeySetting(
        hotkeys: hotkeys.map((e) {
          return HotKeyStorageElement(
            action: e.action.name,
            globalJsonKey: e.globalJsonKey,
            jsonKey: e.jsonKey,
          );
        }).toList(),
      ),
    );
    await registerHotkey();
  }
}

@freezed
sealed class HotkeyState with _$HotkeyState {
  const factory HotkeyState({
    required List<HotKeyElement> hotkeys,
  }) = _HotkeyState;
}

@freezed
sealed class HotKeyElement with _$HotKeyElement {
  const factory HotKeyElement({
    required HotKeyAction action,
    required Map<String, dynamic>? jsonKey,
    required Map<String, dynamic>? globalJsonKey,
  }) = _HotKeyElement;
}

enum HotKeyAction {
  playOrPause(display: "播放 / 暂停", action: _playOrPause),
  previous(display: "上一首", action: _previous),
  next(display: "下一首", action: _next);

  final String display;
  final VoidCallback action;

  const HotKeyAction({
    required this.display,
    required this.action,
  });
}

Future<void> _playOrPause() async {
  getIt<PlaybackController>().playOrPause();
}

Future<void> _previous() async {
  getIt<PlaybackController>().previous();
}

Future<void> _next() async {
  getIt<PlaybackController>().next();
}
