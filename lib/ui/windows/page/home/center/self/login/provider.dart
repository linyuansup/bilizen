import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.freezed.dart';
part 'provider.g.dart';

@Riverpod(name: "loginProvider", keepAlive: true)
class LoginProvider extends _$LoginProvider {
  @override
  LoginState build() {
    return LoginState.initial(method: LoginMethod.password);
  }

  set loginMethod(LoginMethod method) {
    state = LoginState.initial(method: method);
  }
}

@freezed
sealed class LoginState with _$LoginState {
  const factory LoginState.initial({
    required LoginMethod method,
  }) = _Initial;
}

enum LoginMethod {
  phone,
  qr,
  password,
}
