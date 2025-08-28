import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@singleton
class VideoApi {
  final Dio _dio;

  VideoApi(this._dio);

  Future<Map<String, dynamic>> getVideoInfo(String bid) async {
    final result = await _dio.get<Map<String, dynamic>>(
      'https://api.bilibili.com/x/web-interface/view',
      queryParameters: {
        "bvid": bid,
      },
    );
    return result.data!;
  }
}
