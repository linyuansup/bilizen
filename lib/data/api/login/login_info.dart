import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@singleton
class LoginInfoApi {
  final Dio _dio;

  LoginInfoApi(this._dio);

  Future<Map<String, dynamic>> getNavInfo() async {
    final result = await _dio.get<Map<String, dynamic>>(
      'https://api.bilibili.com/x/web-interface/nav',
    );
    return result.data!;
  }

  Future<void> bilibili() async {
    await _dio.get('https://www.bilibili.com');
  }
}
