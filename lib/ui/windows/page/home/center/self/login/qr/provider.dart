import 'package:bilizen/logic/account_manager/account_manager.dart';
import 'package:bilizen/logic/account_manager/qr_login_status.dart';
import 'package:bilizen/inject/inject.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.g.dart';
part 'provider.freezed.dart';

@Riverpod(keepAlive: true, name: 'qrCodeLoginProvider')
class QrCodeLoginProvider extends _$QrCodeLoginProvider {
  late AccountManager _accountManager;

  @override
  QrCodeLoginState build() {
    _accountManager = getIt<AccountManager>();
    _accountManager.startQrLogin().listen((status) {
      state = QrCodeLoginState.initial(status: status);
    });
    return QrCodeLoginState.loading();
  }
}

@freezed
sealed class QrCodeLoginState with _$QrCodeLoginState {
  const factory QrCodeLoginState.loading() = QrCodeLoginStateLoading;
  const factory QrCodeLoginState.initial({
    required QrLoginStatus status,
  }) = QrCodeLoginStateInitial;
}
