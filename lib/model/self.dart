import 'package:bilizen/data/api/user/info.dart';
import 'package:bilizen/model/user.dart';
import 'package:bilizen/package/future_class/annotations.dart';
import 'package:bilizen/package/future_class/future_class_base.dart';
import 'package:bilizen/inject/inject.dart';

part "self.future.dart";

@futureClass
class Self extends _$Self {
  Self();

  final _userInfoApi = getIt<UserInfoApi>();

  @FutureData(loader: "selfUserLoader")
  Future<User> get user => $user;

  @override
  Future<void> selfUserLoader() async {
    final self = await _userInfoApi.getSelfDetail();
    final user = User(id: self["data"]["mid"]);
    setUser(user);
  }
}
