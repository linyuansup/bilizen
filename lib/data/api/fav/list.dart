import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@singleton
class FavListApi {
  final Dio _dio;

  FavListApi(this._dio);

  Future<Map<String, dynamic>> getFavList({
    required int mlid,
    required int page,
    int pageSize = 20,
    String platform = "web",
  }) async {
    final result = await _dio.get<Map<String, dynamic>>(
      'https://api.bilibili.com/x/v3/fav/resource/list',
      queryParameters: {
        "media_id": mlid,
        "pn": page,
        "ps": pageSize,
        "platform": platform,
      },
    );
    return result.data!;
  }

  Future<Map<String, dynamic>> getAllId(int mediaId) async {
    final result = await _dio.get<Map<String, dynamic>>(
      'https://api.bilibili.com/x/v3/fav/resource/ids',
      queryParameters: {
        "media_id": mediaId,
      },
    );
    return result.data!;
  }
}
