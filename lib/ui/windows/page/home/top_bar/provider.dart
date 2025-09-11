import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/logic/account_manager/account_manager.dart';
import 'package:bilizen/logic/search/search_manager.dart';
import 'package:bilizen/logic/window_state.dart';
import 'package:bilizen/model/self.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:window_manager/window_manager.dart';

part 'provider.freezed.dart';
part 'provider.g.dart';

@Riverpod(keepAlive: true, name: "topBarProvider")
class TopBarProvider extends _$TopBarProvider {
  final _windowStateStream = getIt<WindowStateManager>().windowStateStream;
  final _account = getIt<AccountManager>().loginStatus;
  final _searchManager = getIt<SearchManager>();

  @override
  TopBarState build() {
    _windowStateStream.stream.listen((state) {
      this.state = this.state.copyWith(windowState: state);
    });
    _account.listen((self) async {
      state = state.copyWith(userInfo: await _getUserInfo(self));
    });

    return TopBarState(
      windowState: _windowStateStream.value,
      userInfo: null,
      searchRecommends: [],
      canPop: false,
    );
  }

  Future<void> onCloseClick() async {
    await windowManager.close();
  }

  Future<void> onMaximumClick() async {
    if (state.windowState == WindowState.maximized) {
      await windowManager.unmaximize();
    } else {
      await windowManager.maximize();
    }
  }

  Future<void> onMinimumClick() async {
    await windowManager.minimize();
  }

  Future<void> updateSearchRecommend(String keyword) async {
    if (keyword.isEmpty) {
      state = state.copyWith(searchRecommends: []);
      return;
    }
    final mid = (await _account.value?.user)?.id;
    final recommends = await _searchManager.recommend(keyword, mid);
    state = state.copyWith(searchRecommends: recommends);
  }

  Future<UserInfo?> _getUserInfo(Self? self) async {
    if (self != null) {
      final user = await self.user;
      return UserInfo(
        username: await user.nickName,
        avatar: await user.avatar,
      );
    } else {
      return null;
    }
  }
}

@freezed
sealed class TopBarState with _$TopBarState {
  const factory TopBarState({
    required WindowState windowState,
    required UserInfo? userInfo,
    required List<String> searchRecommends,
    required bool canPop,
  }) = _TopBarState;
}

@freezed
sealed class UserInfo with _$UserInfo {
  const factory UserInfo({
    required String username,
    required String avatar,
  }) = _UserInfo;
}
