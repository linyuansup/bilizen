String formatDuration(int process) {
  final minutes = (process ~/ 60).toString().padLeft(2, '0');
  final seconds = (process % 60).toString().padLeft(2, '0');
  return "$minutes:$seconds";
}

int formatDurationToSecond(String time) {
  final parts = time.split(':');
  if (parts.length != 2) return 0;
  final minutes = int.tryParse(parts[0]) ?? 0;
  final seconds = int.tryParse(parts[1]) ?? 0;
  return minutes * 60 + seconds;
}
