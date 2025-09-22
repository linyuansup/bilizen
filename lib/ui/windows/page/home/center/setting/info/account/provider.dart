import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/package/account_manager/account_manager.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.g.dart';
part 'provider.freezed.dart';

@Riverpod(keepAlive: true)
class AccountProvider extends _$AccountProvider {
  final _accountManager = getIt<AccountManager>();

  @override
  AccountState build() {
    _accountManager.loginStatus.listen((self) async {
      if (self == null) {
        state = const AccountState.noLogin();
      } else {
        final user = await self.user;
        state = AccountState.login(
          username: await user.nickName,
          avatarUrl: await user.avatar,
        );
      }
    });
    return const AccountState.loading();
  }

  void logout() {
    _accountManager.logout();
  }
}

@freezed
sealed class AccountState with _$AccountState {
  const factory AccountState.loading() = _Loading;
  const factory AccountState.login({
    required String username,
    required String avatarUrl,
  }) = _Login;
  const factory AccountState.noLogin() = _NoLogin;
}
