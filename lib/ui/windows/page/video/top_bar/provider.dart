import 'package:bilizen/package/window_state.dart';
import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/package/playback_manager/playback_controller.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:window_manager/window_manager.dart';

part 'provider.freezed.dart';
part 'provider.g.dart';

@Riverpod(keepAlive: true, name: "topBarProvider")
class TopBarProvider extends _$TopBarProvider {
  final _windowStateStream = getIt<WindowStateManager>().windowStateStream;
  final _playbackManager = getIt<PlaybackController>();

  @override
  TopBarState build() {
    _windowStateStream.stream.listen((state) {
      this.state = this.state.copyWith(windowState: state);
    });
    _playbackManager.currentPlaying.listen((state) async {
      if (state == null) {
        this.state = this.state.copyWith(videoInfo: null);
        return;
      }
      final uploader = await state.item.video.uploader;
      this.state = this.state.copyWith(
        videoInfo: CurrentVideoItem(
          bvid: state.item.video.bid,
          up: UserInfo(
            avatar: await uploader.avatar,
            username: await uploader.nickName,
          ),
          title: await state.item.video.title,
        ),
      );
    });
    return TopBarState(
      windowState: _windowStateStream.value,
      onTop: false,
      videoInfo: null,
    );
  }

  Future<void> switchOnTop() async {
    await windowManager.setAlwaysOnTop(!state.onTop);
    state = state.copyWith(onTop: !state.onTop);
  }

  Future<void> onCloseClick() async {
    await windowManager.close();
  }

  Future<void> onMaximumClick() async {
    if (await windowManager.isMaximized()) {
      await windowManager.unmaximize();
    } else {
      await windowManager.maximize();
    }
  }

  Future<void> onMinimumClick() async {
    await windowManager.minimize();
  }
}

@freezed
sealed class TopBarState with _$TopBarState {
  const factory TopBarState({
    required WindowState windowState,
    required bool onTop,
    required CurrentVideoItem? videoInfo,
  }) = _TopBarState;
}

@freezed
sealed class CurrentVideoItem with _$CurrentVideoItem {
  const factory CurrentVideoItem({
    required String bvid,
    required UserInfo up,
    required String title,
  }) = _CurrentVideoItem;
}

@freezed
sealed class UserInfo with _$UserInfo {
  const factory UserInfo({
    required String username,
    required String avatar,
  }) = _UserInfo;
}
