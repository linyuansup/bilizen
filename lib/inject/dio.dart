import 'dart:io';

import 'package:bilizen/data/storage/pref/setting/tool.dart';
import 'package:bilizen/package/talker_extension/dio.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:talker/talker.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';

@module
abstract class PersistCookieJarInjectable {
  @singleton
  @preResolve
  Future<PersistCookieJar> get cookieJar async {
    final dir = await getApplicationSupportDirectory();
    return PersistCookieJar(
      ignoreExpires: true,
      storage: FileStorage(
        "${dir.path}/cookie",
      ),
    );
  }
}

@module
abstract class DioInjectable {
  @singleton
  Dio dio(
    PersistCookieJar persistCookieJar,
    Talker talker,
    ToolSettingStorage toolSettingStorage,
  ) {
    final dio = Dio();
    final setting = toolSettingStorage.getToolSetting();
    if (setting.useProxy) {
      if (_isValidProxy(setting)) {
        (dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () {
          final client = HttpClient();
          client.findProxy = (uri) {
            return 'PROXY ${setting.proxyAddress}:${setting.proxyPort}';
          };
          return client;
        };
      } else {
        talker.dio("代理设置不完整，回滚代理");
        toolSettingStorage.setToolSetting(
          setting.copyWith(
            useProxy: false,
            proxyAddress: null,
            proxyPort: null,
          ),
        );
      }
    }
    return dio
      ..options.sendTimeout = const Duration(seconds: 10)
      ..options.receiveTimeout = const Duration(seconds: 10)
      ..options.headers.addAll({
        "accept": "*/*",
        "referer": "https://www.bilibili.com",
        "user-agent":
            "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0",
        "accept-encoding": "identity",
        "accept-language":
            "zh-CN,zh;q=0.9,en;q=0.8,en-GB;q=0.7,en-US;q=0.6,ja;q=0.5",
        "cache-control": "no-cache",
        "dnt": "1",
        "origin": "https://www.bilibili.com",
        "pragma": "no-cache",
        "priority": "u=1, i",
        "sec-ch-ua":
            "\"Not;A=Brand\";v=\"99\", \"Microsoft Edge\";v=\"139\", \"Chromium\";v=\"139\"",
        "sec-ch-ua-mobile": "?0",
        "sec-ch-ua-platform": "\"Windows\"",
        "sec-fetch-dest": "empty",
        "sec-fetch-mode": "cors",
        "sec-fetch-site": "cross-site",
      })
      ..interceptors.add(
        TalkerDioLogger(
          talker: talker,
          settings: TalkerDioLoggerSettings(
            printResponseData: false,
          ),
        ),
      )
      ..interceptors.add(RetryInterceptor(dio: dio))
      ..interceptors.add(CookieManager(persistCookieJar));
  }

  bool _isValidProxy(ToolSetting setting) {
    final address = setting.proxyAddress;
    final port = setting.proxyPort;
    if (address == null || address.isEmpty) {
      return false;
    }
    if (!_isValidIPv4(address)) {
      return false;
    }
    final intPort = int.tryParse(port ?? "");
    if (intPort == null || intPort <= 0 || intPort > 65535) {
      return false;
    }
    return true;
  }

  bool _isValidIPv4(String address) {
    final ipv4Regex = RegExp(r'^(\d{1,3})\.(\d{1,3})\.(\d{1,3})\.(\d{1,3})$');
    final match = ipv4Regex.firstMatch(address);
    if (match == null) {
      return false;
    }
    for (int i = 1; i <= 4; i++) {
      final part = int.tryParse(match.group(i)!);
      if (part == null || part < 0 || part > 255) {
        return false;
      }
    }
    return true;
  }
}
