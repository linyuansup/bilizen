import 'dart:convert';

import 'package:bilizen/data/storage/pref/wbi.dart';
import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/util/time.dart';
import 'package:crypto/crypto.dart';
import 'package:dio/dio.dart';

class WbiNavResponse {
  final WbiImgData wbiImg;

  WbiNavResponse({required this.wbiImg});

  factory WbiNavResponse.fromMap(Map<String, dynamic> map) {
    return WbiNavResponse(
      wbiImg: WbiImgData.fromMap(map['wbi_img'] as Map<String, dynamic>),
    );
  }
}

class WbiImgData {
  final String imgUrl;
  final String subUrl;

  WbiImgData({required this.imgUrl, required this.subUrl});

  factory WbiImgData.fromMap(Map<String, dynamic> map) {
    return WbiImgData(
      imgUrl: map['img_url'] as String,
      subUrl: map['sub_url'] as String,
    );
  }
}

class WbiRequestParams {
  final Map<String, dynamic> _params;

  WbiRequestParams(this._params);

  Map<String, dynamic> toMap() {
    return Map.from(_params);
  }

  static WbiRequestParams fromMap(Map<String, dynamic> map) {
    return WbiRequestParams(map);
  }
}

class WbiParam {
  final String wRid;
  final String wts;

  WbiParam({required this.wRid, required this.wts});
}

class WbiSign {
  static final _wbiStorage = getIt<WbiStorage>();
  static const String _navApiUrl =
      'https://api.bilibili.com/x/web-interface/nav';
  static const int _signKeyLength = 32;
  static const List<int> _mixinKeyEncTab = <int>[
    46,
    47,
    18,
    2,
    53,
    8,
    23,
    32,
    15,
    50,
    10,
    31,
    58,
    3,
    45,
    35,
    27,
    43,
    5,
    49,
    33,
    9,
    42,
    19,
    29,
    28,
    14,
    39,
    12,
    38,
    41,
    13,
    37,
    48,
    7,
    16,
    24,
    55,
    40,
    61,
    26,
    17,
    0,
    1,
    60,
    51,
    30,
    4,
    22,
    25,
    54,
    21,
    56,
    59,
    6,
    63,
    57,
    62,
    11,
    36,
    20,
    34,
    44,
    52,
  ];

  static String _getMixinKey(String orig) {
    final StringBuffer buffer = StringBuffer();
    for (final int index in _mixinKeyEncTab) {
      buffer.write(orig[index]);
    }
    return buffer.toString().substring(0, _signKeyLength);
  }

  static Future<WbiParam> getWbiParam(
    WbiRequestParams params,
  ) async {
    final wbiKey = await _getWbiKeys();
    final mixinKey = _getMixinKey(wbiKey.imgKey + wbiKey.subKey);
    final currTime = DateTime.now().secondsSinceEpoch();
    const specialChars = r"[!\'\(\)*]";
    final chrFilter = RegExp(specialChars);
    final Map<String, dynamic> newParams = Map.from(params.toMap())
      ..addAll({"wts": currTime});
    final List<String> query = _generateSortedQuery(newParams, chrFilter);
    final String queryStr = query.join('&');
    final String wbiSign = md5
        .convert(utf8.encode(queryStr + mixinKey))
        .toString();
    return WbiParam(wRid: wbiSign, wts: currTime.toString());
  }

  static List<String> _generateSortedQuery(
    Map<String, dynamic> params,
    RegExp filter,
  ) {
    final List<String> keys = params.keys.toList()..sort();
    return keys.map((key) {
      final String value = params[key].toString().replaceAll(filter, '');
      return '${Uri.encodeComponent(key)}=${Uri.encodeComponent(value)}';
    }).toList();
  }

  static Future<WbiKey> _getWbiKeys() async {
    final DateTime nowDate = DateTime.now();
    final WbiKey? wbiKeys = await _wbiStorage.getWbiKeys();
    final int? wbiTimestamp = await _wbiStorage.getTimeStamp();
    if (_isWbiKeysValid(wbiKeys, wbiTimestamp, nowDate)) {
      return wbiKeys!;
    }
    final Response resp = await getIt<Dio>().get(_navApiUrl);
    final Map<String, dynamic> jsonContent =
        resp.data['data'] as Map<String, dynamic>;
    final navResponse = WbiNavResponse.fromMap(jsonContent);
    return await _extractWbiKeys(navResponse);
  }

  static bool _isWbiKeysValid(WbiKey? keys, int? timestamp, DateTime now) {
    if (keys == null || timestamp == null) return false;
    final DateTime storedDate = DateTimeExtension.fromSecondsSinceEpoch(
      timestamp,
    );
    return storedDate.day == now.day;
  }

  static Future<WbiKey> _extractWbiKeys(WbiNavResponse data) async {
    await _wbiStorage.setWbi(
      WbiKey(
        imgKey: _extractKeyFromUrl(data.wbiImg.imgUrl),
        subKey: _extractKeyFromUrl(data.wbiImg.subUrl),
      ),
      DateTime.now().secondsSinceEpoch(),
    );
    return WbiKey(
      imgKey: _extractKeyFromUrl(data.wbiImg.imgUrl),
      subKey: _extractKeyFromUrl(data.wbiImg.subUrl),
    );
  }

  static String _extractKeyFromUrl(String url) {
    return url.substring(url.lastIndexOf('/') + 1).split('.')[0];
  }
}
