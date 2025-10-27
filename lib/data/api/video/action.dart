import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@singleton
class VideoActionApi {
  final Dio _dio;

  VideoActionApi(this._dio);

  Future<Map<String, dynamic>> favVideo({
    required int avid,
    int? addedFavId,
    int? removeFavId,
    required String csrf,
  }) async {
    final result = await _dio.post<Map<String, dynamic>>(
      'https://api.bilibili.com/x/v3/fav/resource/deal',
      data: {
        "rid": avid,
        "type": 2,
        if (addedFavId != null) "add_media_ids": addedFavId,
        if (removeFavId != null) "del_media_ids": removeFavId,
        "csrf": csrf,
        "platform": "web",
        "eab_x": 1,
        "ga": 1,
        "gaia_source": "web_normal",
      },
    );
    return result.data!;
  }
}
