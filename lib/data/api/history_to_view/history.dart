import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@singleton
class HistoryApi {
  final Dio _dio;

  HistoryApi(this._dio);

  Future<Map<String, dynamic>> getHistoryList({
    int lastId = 0,
    String lastBusiness = '',
    int time = 0,
    String type = 'all',
    int ps = 30,
  }) async {
    final result = await _dio.get<Map<String, dynamic>>(
      'https://api.bilibili.com/x/web-interface/history/cursor',
      queryParameters: {
        "max": lastId,
        "business": lastBusiness,
        "view_at": time,
        "type": type,
        "ps": ps,
      },
    );
    return result.data!;
  }
}
