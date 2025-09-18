import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:window_manager/window_manager.dart';

@singleton
class WindowStateManager implements WindowListener {
  WindowStateManager() {
    windowManager.addListener(this);
  }

  final windowStateStream = BehaviorSubject.seeded(WindowState.normal);

  @override
  void onWindowBlur() {}

  @override
  void onWindowClose() {}

  @override
  void onWindowDocked() {}

  @override
  void onWindowEnterFullScreen() {}

  @override
  void onWindowEvent(String eventName) {}

  @override
  void onWindowFocus() {}

  @override
  void onWindowLeaveFullScreen() {}

  @override
  void onWindowMaximize() {
    windowStateStream.add(WindowState.maximized);
  }

  @override
  void onWindowMinimize() {
    windowStateStream.add(WindowState.minimized);
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
  }

  @override
  void onWindowUndocked() {
    windowStateStream.add(WindowState.normal);
  }

  @override
  void onWindowUnmaximize() {
    windowStateStream.add(WindowState.normal);
  }
}

enum WindowState {
  normal,
  maximized,
  minimized,
}
