import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@singleton
class FavInfoApi {
  final Dio _dio;

  FavInfoApi(this._dio);

  Future<Map<String, dynamic>> getUserFavList({required int uid}) async {
    final result = await _dio.get<Map<String, dynamic>>(
      'https://api.bilibili.com/x/v3/fav/folder/created/list-all',
      queryParameters: {
        "up_mid": uid,
      },
    );
    return result.data!;
  }
}
