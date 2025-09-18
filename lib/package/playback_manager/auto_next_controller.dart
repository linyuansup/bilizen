part of 'playback_controller.dart';

extension AutoNextController on PlaybackController {
  bool get _autoNext {
    if (Platform.isWindows) {
      return getIt<WindowsRouter>().home.currentPage.value.state.name !=
          "video";
    }
    return true;
  }
}
