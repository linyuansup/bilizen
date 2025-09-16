import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/ui/windows/page/router.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.g.dart';
part 'provider.freezed.dart';

@Riverpod(keepAlive: true, name: 'userInfoTabProvider')
class UserInfoTabProvider extends _$UserInfoTabProvider {
  @override
  UserInfoTabState build() {
    getIt<WindowsRouter>().userInfo.currentPage.listen((page) {
      state = state.copyWith(
        selectedIndex: UserInfoTab.values.indexWhere(
          (element) => element.name == page.state.name,
        ),
      );
    });
    return UserInfoTabState(selectedIndex: 0);
  }
}

@freezed
sealed class UserInfoTabState with _$UserInfoTabState {
  const factory UserInfoTabState({
    required int selectedIndex,
  }) = _UserInfoTabState;
}

enum UserInfoTab {
  like,
  history,
  late,
}
