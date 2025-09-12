String toBv(int aid) {
  const String codeTable =
      'FcwAPNKTMug3GV5Lj7EJnHpWsx4tb8haYeviqBz6rkCy12mUSDQX9RdoZf';
  const int xorCode = 23442827791579;
  const int maxAvid = 1 << 51;
  List<String> bytes = [
    'B',
    'V',
    '1',
    '0',
    '0',
    '0',
    '0',
    '0',
    '0',
    '0',
    '0',
    '0',
  ];
  int bvIdx = bytes.length - 1;
  int tmp = (aid | maxAvid) ^ xorCode;
  while (tmp > 0) {
    bytes[bvIdx] = codeTable[tmp % 58];
    tmp ~/= 58;
    bvIdx--;
  }
  void swap(int i, int j) {
    String temp = bytes[i];
    bytes[i] = bytes[j];
    bytes[j] = temp;
  }

  swap(3, 9);
  swap(4, 7);
  return bytes.join('');
}

int toAv(String bvid) {
  const String codeTable =
      'FcwAPNKTMug3GV5Lj7EJnHpWsx4tb8haYeviqBz6rkCy12mUSDQX9RdoZf';
  const int xorCode = 23442827791579;
  const int maxAvid = (1 << 51) - 1;

  String swap(String str, int i, int j) {
    List<String> chars = str.split('');
    String temp = chars[i];
    chars[i] = chars[j];
    chars[j] = temp;
    return chars.join('');
  }

  bvid = swap(bvid, 3, 9);
  bvid = swap(bvid, 4, 7);

  bvid = bvid.substring(3);
  int tmp = 0;

  for (int i = 0; i < bvid.length; i++) {
    int idx = codeTable.indexOf(bvid[i]);
    tmp = tmp * 58 + idx;
  }

  int aid = (tmp & maxAvid) ^ xorCode;
  return aid;
}
