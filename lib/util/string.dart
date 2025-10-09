import 'package:bilizen/util/time.dart';

int formatDurationToSecond(String time) {
  final parts = time.split(':');
  if (parts.length != 2) return 0;
  final minutes = int.tryParse(parts[0]) ?? 0;
  final seconds = int.tryParse(parts[1]) ?? 0;
  return minutes * 60 + seconds;
}

String formatDate(int timestamp) {
  final date = DateTimeExtension.fromSecondsSinceEpoch(timestamp);
  final year = date.year.toString().substring(2);
  var minute = date.minute.toString();
  if (minute.length == 1) {
    minute = "0$minute";
  }
  var second = date.second.toString();
  if (second.length == 1) {
    second = "0$second";
  }
  return "$year-${date.month}-${date.day} ${date.hour}:$minute:$second";
}

String formatNumber(int number) {
  if (number >= 10000) {
    return '${(number / 10000).toStringAsFixed(1)}万';
  }
  return number.toString();
}

String formatDuration(int seconds) {
  final hours = seconds ~/ 3600;
  final minutes = (seconds % 3600) ~/ 60;
  final remainingSeconds = seconds % 60;

  if (hours > 0) {
    return '$hours:${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }
  return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
}
