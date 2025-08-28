import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@singleton
class SearchSuggestApi {
  final Dio _dio;

  SearchSuggestApi(this._dio);

  Future<Map<String, dynamic>> recommend(
    String keyword,
    int? uid,
  ) async {
    final result = await _dio.get<String>(
      'https://s.search.bilibili.com/main/suggest',
      queryParameters: {
        'term': keyword,
        if (uid != null) 'userid': uid,
      },
    );
    return jsonDecode(result.data!);
  }
}
