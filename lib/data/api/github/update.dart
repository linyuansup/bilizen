import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@singleton
class GithubUpdateApi {
  final Dio _dio;

  GithubUpdateApi(this._dio);

  Future<Map<String, dynamic>> getLatestReleaseInfo() async {
    final result = await _dio.get<Map<String, dynamic>>(
      'https://api.github.com/repos/linyuansup/bilizen/releases/latest',
    );
    return result.data!;
  }
}
