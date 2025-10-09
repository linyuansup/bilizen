extension DateTimeExtension on DateTime {
  int secondsSinceEpoch() {
    return millisecondsSinceEpoch ~/ 1000;
  }

  static DateTime fromSecondsSinceEpoch(int seconds) {
    return DateTime.fromMillisecondsSinceEpoch(seconds * 1000);
  }
}
