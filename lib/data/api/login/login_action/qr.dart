import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@singleton
class QrLoginApi {
  final Dio _dio;

  QrLoginApi(this._dio);

  Future<Map<String, dynamic>> getQrCode() async {
    final result = await _dio.get<Map<String, dynamic>>(
      'https://passport.bilibili.com/x/passport-login/web/qrcode/generate',
    );
    return result.data!;
  }

  Future<Map<String, dynamic>> qrCodeLogin(String token) async {
    final result = await _dio.get<Map<String, dynamic>>(
      'https://passport.bilibili.com/x/passport-login/web/qrcode/poll',
      queryParameters: {'qrcode_key': token},
    );
    return result.data!;
  }
}
