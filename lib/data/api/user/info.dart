import 'package:bilizen/util/wbi.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@singleton
class UserInfoApi {
  final Dio _dio;

  UserInfoApi(this._dio);

  Future<Map<String, dynamic>> getSelfDetail() async {
    final result = await _dio.get<Map<String, dynamic>>(
      'https://api.bilibili.com/x/space/myinfo',
    );
    return result.data!;
  }

  Future<Map<String, dynamic>> getUserDetail(int uid) async {
    final queryParameters = {
      'mid': uid,
    };
    final wbi = await WbiSign.getWbiParam(WbiRequestParams(queryParameters));
    final result = await _dio.get<Map<String, dynamic>>(
      'https://api.bilibili.com/x/space/wbi/acc/info',
      queryParameters: {
        ...queryParameters,
        'w_rid': wbi.wRid,
        'wts': wbi.wts,
      },
    );
    return result.data!;
  }

  Future<Map<String, dynamic>> getCardDetail(
    int uid, [
    bool photo = false,
  ]) async {
    final result = await _dio.get<Map<String, dynamic>>(
      'https://api.bilibili.com/x/web-interface/card',
      queryParameters: {"mid": uid, "photo": photo},
    );
    return result.data!;
  }
}
