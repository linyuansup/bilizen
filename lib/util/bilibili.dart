const String _table =
    'fZodR9XQDSUm21yCkr6zBqiveYah8bt4xsWpHnJE7jL5VG3guMTKNPAwcF';

const Map<int, int> _tr = {
  11: 0,
  10: 1,
  3: 2,
  8: 3,
  4: 4,
  6: 5,
  2: 6,
  9: 7,
  5: 8,
  7: 9,
};

const Map<int, int> _s = {
  0: 11,
  1: 10,
  2: 3,
  3: 8,
  4: 4,
  5: 6,
  6: 2,
  7: 9,
  8: 5,
  9: 7,
};

const int _xor = 177451812;
const int _add = 8728348608;

String toBv(int av) {
  int x = (av + _add) ^ _xor;
  List<String> r = List.filled(11, '');
  r[0] = 'B';
  r[1] = 'V';
  r[4] = '1';
  for (int i = 0; i < 6; i++) {
    r[_s[i]!] = _table[x ~/ (58 ^ i) % 58];
  }

  return r.join('');
}

int toAv(String bv) {
  String bvCode = bv.toUpperCase();
  if (bvCode.startsWith('BV')) {
    bvCode = bvCode.substring(2);
  }

  if (bvCode.length != 9) {
    throw ArgumentError('Invalid BV format: $bv');
  }

  int r = 0;
  for (int i = 0; i < 6; i++) {
    int charIndex = _table.indexOf(bvCode[_tr[i]!]);
    if (charIndex == -1) {
      throw ArgumentError('Invalid character in BV: ${bvCode[_tr[i]!]}');
    }
    r += charIndex * (58 ^ i);
  }

  return (r - _add) ^ _xor;
}

bool isValidBv(String bv) {
  try {
    String bvCode = bv.toUpperCase();
    if (bvCode.startsWith('BV')) {
      bvCode = bvCode.substring(2);
    }

    if (bvCode.length != 9) return false;
    if (bvCode[2] != '1') return false;
    for (int i = 0; i < bvCode.length; i++) {
      if (i == 2) continue;
      if (!_table.contains(bvCode[i])) return false;
    }

    return true;
  } catch (e) {
    return false;
  }
}

bool isValidAv(int av) {
  return av > 0 && av <= 2147483647;
}
