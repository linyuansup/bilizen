import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@singleton
class FavActionApi {
  final Dio _dio;

  FavActionApi(this._dio);

  Future<Map<String, dynamic>> newFavList({
    required String title,
    String? intro,
    int privacy = 1,
    String? cover,
    required String csrf,
  }) async {
    final result = await _dio.post<Map<String, dynamic>>(
      'https://api.bilibili.com/x/v3/fav/folder/add',
      data: {
        "title": title,
        if (intro != null) "intro": intro,
        "privacy": privacy,
        if (cover != null) "cover": cover,
        "csrf": csrf,
      },
    );
    return result.data!;
  }

  Future<Map<String, dynamic>> batchDelete({
    required String resources,
    required int favId,
    String platform = "web",
    required String csrf,
  }) async {
    final result = await _dio.post<Map<String, dynamic>>(
      'https://api.bilibili.com/x/v3/fav/resource/batch-del',
      data: {
        "resources": resources,
        "media_id": favId,
        "platform": platform,
        "csrf": csrf,
      },
    );
    return result.data!;
  }
}
