import 'package:bilizen/data/api/login/login_action/qr.dart';
import 'package:bilizen/data/api/login/login_info.dart';
import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/package/account_manager/qr_login_status.dart';
import 'package:bilizen/model/self.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

@singleton
class AccountManager {
  final QrLoginApi _qrLoginApi;
  final LoginInfoApi _loginInfoApi;

  AccountManager(this._qrLoginApi, this._loginInfoApi) {
    _loginInfoApi.bilibili();
    _loginInfoApi.getNavInfo().then((data) {
      if (data["data"]["isLogin"]) {
        loginStatus.add(Self());
      }
    });
  }

  final loginStatus = BehaviorSubject<Self?>.seeded(null);

  Stream<QrLoginStatus> startQrLogin() async* {
    final qrCodeResponse = await _qrLoginApi.getQrCode();
    yield QrLoginWaitingForScan(
      qrCode: qrCodeResponse["data"]["url"],
      token: qrCodeResponse["data"]["qrcode_key"],
    );

    while (true) {
      await Future.delayed(Duration(seconds: 3));

      final qrCodeLogin = await _qrLoginApi.qrCodeLogin(
        qrCodeResponse["data"]["qrcode_key"],
      );
      final code = qrCodeLogin["data"]["code"];
      switch (code) {
        case 0:
          loginStatus.add(Self());
          return;
        case 86090:
          yield QrLoginScanned(
            qrCode: qrCodeResponse["data"]["url"],
            token: qrCodeResponse["data"]["qrcode_key"],
          );
          break;
        case 86038:
          yield QrLoginTimeout();
          return;
        case 86101:
          yield QrLoginWaitingForScan(
            qrCode: qrCodeResponse["data"]["url"],
            token: qrCodeResponse["data"]["qrcode_key"],
          );
          break;
      }
    }
  }

  void logout() {
    getIt<PersistCookieJar>().deleteAll();
    loginStatus.add(null);
  }
}
