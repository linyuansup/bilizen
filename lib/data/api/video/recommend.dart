import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@singleton
class VideoRecommendApi {
  final Dio _dio;

  VideoRecommendApi(this._dio);

  Future<Map<String, dynamic>> homepage(int page) async {
    final result = await _dio.get<Map<String, dynamic>>(
      'https://api.bilibili.com/x/web-interface/wbi/index/top/feed/rcmd',
      queryParameters: {
        "fresh_idx": page,
      },
    );
    return result.data!;
  }
}
