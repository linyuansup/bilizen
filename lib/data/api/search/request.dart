import 'package:bilizen/util/wbi.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@singleton
class SearchRequestApi {
  final Dio _dio;

  SearchRequestApi(this._dio);

  Future<Map<String, dynamic>> search(
    String searchType,
    String keyword,
    int page,
  ) async {
    final queryParameters = {
      "search_type": searchType,
      "keyword": keyword,
      "page": page,
    };
    final wbi = await WbiSign.getWbiParam(WbiRequestParams(queryParameters));
    final result = await _dio.get<Map<String, dynamic>>(
      'https://api.bilibili.com/x/web-interface/wbi/search/type',
      queryParameters: {
        ...queryParameters,
        'w_rid': wbi.wRid,
        'wts': wbi.wts,
      },
    );
    return result.data!;
  }
}
