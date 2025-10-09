import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _wbiTimestamp = "wbi_timestamp";
const _imgKey = "wbi_img_key";
const _subKey = "wbi_sub_key";

class WbiKey {
  final String imgKey;
  final String subKey;

  WbiKey({required this.imgKey, required this.subKey});
}

@singleton
class WbiStorage {
  final SharedPreferences _pref;

  WbiStorage(this._pref);

  Future<WbiKey?> getWbiKeys() async {
    final imgKey = _pref.getString(_imgKey);
    final subKey = _pref.getString(_subKey);
    if (imgKey != null && subKey != null) {
      return WbiKey(imgKey: imgKey, subKey: subKey);
    }
    return null;
  }

  Future<int?> getTimeStamp() async {
    return _pref.getInt(_wbiTimestamp);
  }

  Future<void> setWbi(WbiKey wbiKeys, int timeStamp) async {
    await _pref.setString(_imgKey, wbiKeys.imgKey);
    await _pref.setString(_subKey, wbiKeys.subKey);
    await _pref.setInt(_wbiTimestamp, timeStamp);
  }
}
