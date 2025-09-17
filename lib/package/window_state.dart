import 'package:flutter/scheduler.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:window_manager/window_manager.dart';

@singleton
class WindowStateManager implements WindowListener {
  bool _renderingEnabled = true;

  WindowStateManager() {
    windowManager.addListener(this);
    SchedulerBinding.instance.addPostFrameCallback((_) {
      if (!_renderingEnabled) {
        SchedulerBinding.instance.scheduleFrame();
      }
    });
  }

  final windowStateStream = BehaviorSubject.seeded(WindowState.normal);

  @override
  void onWindowBlur() {
    _renderingEnabled = false;
  }

  @override
  void onWindowClose() {}

  @override
  void onWindowDocked() {}

  @override
  void onWindowEnterFullScreen() {}

  @override
  void onWindowEvent(String eventName) {
    print("Window Event: $eventName");
  }

  @override
  void onWindowFocus() {}

  @override
  void onWindowLeaveFullScreen() {}

  @override
  void onWindowMaximize() {
    windowStateStream.add(WindowState.maximized);
    _renderingEnabled = true;
  }

  @override
  void onWindowMinimize() {
    windowStateStream.add(WindowState.minimized);
    _renderingEnabled = false;
  }

  @override
  void onWindowMove() {}

  @override
  void onWindowMoved() {}

  @override
  void onWindowResize() {}

  @override
  void onWindowResized() {}

  @override
  void onWindowRestore() {
    windowStateStream.add(WindowState.normal);
    _renderingEnabled = true;
  }

  @override
  void onWindowUndocked() {
    windowStateStream.add(WindowState.normal);
    _renderingEnabled = true;
  }

  @override
  void onWindowUnmaximize() {
    windowStateStream.add(WindowState.normal);
    _renderingEnabled = true;
  }
}

enum WindowState {
  normal,
  maximized,
  minimized,
}
