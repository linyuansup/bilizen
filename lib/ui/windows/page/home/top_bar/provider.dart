import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/model/self.dart';
import 'package:bilizen/package/account_manager/account_manager.dart';
import 'package:bilizen/package/search_manager.dart';
import 'package:bilizen/package/window_state.dart';
import 'package:bilizen/ui/windows/page/home/center/page.dart';
import 'package:bilizen/package/windows_router.dart';
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
  final router = getIt<WindowsRouter>().home.currentPage;

  @override
  TopBarState build() {
    _windowStateStream.stream.listen((state) {
      this.state = this.state.copyWith(windowState: state);
    });
    _account.listen((self) async {
      state = state.copyWith(userInfo: await _getUserInfo(self));
    });
    router.listen((value) {
      state = state.copyWith(
        isSearchPage: value.state.name == HomePageKind.search.name,
      );
    });

    return TopBarState(
      windowState: _windowStateStream.value,
      userInfo: null,
      searchRecommends: [],
      isSearchPage: false,
    );
  }

  Future<void> onCloseClick() async {
    await windowManager.hide();
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
    required bool isSearchPage,
  }) = _TopBarState;
}

@freezed
sealed class UserInfo with _$UserInfo {
  const factory UserInfo({
    required String username,
    required String avatar,
  }) = _UserInfo;
}
