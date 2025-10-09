import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@singleton
class VideoOnlineApi {
  final Dio _dio;

  VideoOnlineApi(this._dio);

  Future<Map<String, dynamic>> total(String bvid, int cid) async {
    final result = await _dio.get<Map<String, dynamic>>(
      'https://api.bilibili.com/x/player/online/total',
      queryParameters: {
        "bvid": bvid,
        "cid": cid,
      },
    );
    return result.data!;
  }
}
