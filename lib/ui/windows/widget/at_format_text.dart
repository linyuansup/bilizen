import 'package:fluent_ui/fluent_ui.dart';

final _linkStyle = TextStyle(
  color: Colors.blue,
);

class AtFormatText extends StatelessWidget {
  const AtFormatText({super.key, required this.text, this.style});

  final String text;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    final parts = _spiltAtString(text);
    final spans = List<TextSpan>.empty(growable: true);
    for (final part in parts) {
      if (part.startsWith('@')) {
        spans.add(TextSpan(text: part, style: style?.merge(_linkStyle)));
      } else {
        spans.add(TextSpan(text: part, style: style));
      }
    }
    return RichText(text: TextSpan(children: spans));
  }
}

List<String> _spiltAtString(String input) {
  final regex = RegExp(r'@[^ \n]+');
  final result = <String>[];
  int lastEnd = 0;
  for (final match in regex.allMatches(input)) {
    if (match.start > lastEnd) {
      result.add(input.substring(lastEnd, match.start));
    }
    result.add(input.substring(match.start, match.end));
    lastEnd = match.end;
  }
  if (lastEnd < input.length) {
    result.add(input.substring(lastEnd));
  }
  return result;
}
