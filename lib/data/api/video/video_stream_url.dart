import 'package:bilizen/util/wbi.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@singleton
class VideoStreamUrlApi {
  final Dio _dio;

  VideoStreamUrlApi(this._dio);

  Future<Map<String, dynamic>> getPlayUrl(String bvid, int cid) async {
    final queryParameters = {
      'bvid': bvid,
      'cid': cid,
    };
    final wbi = await WbiSign.getWbiParam(WbiRequestParams(queryParameters));
    final result = await _dio.get<Map<String, dynamic>>(
      'https://api.bilibili.com/x/player/wbi/playurl',
      queryParameters: {
        ...queryParameters,
        'w_rid': wbi.wRid,
        'wts': wbi.wts,
        'fnval': 16,
      },
    );
    return result.data!;
  }
}
