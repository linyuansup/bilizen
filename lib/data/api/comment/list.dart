import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@singleton
class CommentListApi {
  final Dio _dio;

  CommentListApi(this._dio);

  Future<Map<String, dynamic>> getComment({
    required int type,
    required int oid,
    required int page,
    int sort = 1,
    int ps = 20,
  }) async {
    final result = await _dio.get<Map<String, dynamic>>(
      'https://api.bilibili.com/x/v2/reply',
      queryParameters: {
        'type': type,
        'oid': oid,
        'sort': sort,
        'ps': ps,
        'pn': page,
      },
    );
    return result.data!;
  }

  Future<Map<String, dynamic>> getReply({
    required int type,
    required int oid,
    required int root,
    required int page,
    int ps = 20,
  }) async {
    final result = await _dio.get<Map<String, dynamic>>(
      'https://api.bilibili.com/x/v2/reply/reply',
      queryParameters: {
        'type': type,
        'oid': oid,
        'root': root,
        'ps': ps,
        'pn': page,
      },
    );
    return result.data!;
  }
}
