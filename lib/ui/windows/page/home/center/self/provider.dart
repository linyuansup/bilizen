import 'package:bilizen/logic/account_manager/account_manager.dart';
import 'package:bilizen/model/self.dart';
import 'package:bilizen/inject/inject.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.freezed.dart';
part 'provider.g.dart';

@Riverpod(keepAlive: true, name: 'selfProvider')
class SelfProvider extends _$SelfProvider {
  @override
  SelfState build() {
    final accountManager = getIt<AccountManager>();
    accountManager.loginStatus.listen((self) {
      state = self == null ? SelfState.noLogin() : SelfState.loading(self);
    });
    final self = accountManager.loginStatus.value;
    return self == null ? SelfState.noLogin() : SelfState.loading(self);
  }

  Future<void> getSelfInfo(Self self) async {
    final userInfo = await self.user;
    state = SelfState.loggedIn(
      userInfoCard: UserInfoCard.loaded(
        nickName: await userInfo.nickName,
        avatar: await userInfo.avatar,
        sex: await userInfo.sex,
        level: await userInfo.level,
        sign: await userInfo.sign,
        archiveCount: await userInfo.archiveCount,
        likeNum: await userInfo.likeNum,
        fans: await userInfo.fans,
        focus: await userInfo.focus,
      ),
    );
  }
}

@freezed
sealed class SelfState with _$SelfState {
  const factory SelfState.noLogin() = SelfStateNoLogin;
  const factory SelfState.loading(Self self) = SelfStateLoading;
  const factory SelfState.loggedIn({
    required UserInfoCard userInfoCard,
  }) = SelfStateLoggedIn;
}

@freezed
sealed class UserInfoCard with _$UserInfoCard {
  const factory UserInfoCard.loaded({
    required String nickName,
    required String avatar,
    required String sex,
    required String sign,
    required int level,
    required int archiveCount,
    required int likeNum,
    required int fans,
    required int focus,
  }) = UserInfoCardLoaded;
}
