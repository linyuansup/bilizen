import 'package:bilizen/model/play_item.dart';
import 'package:bilizen/model/video.dart';
import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/package/playback_manager/playback_manager.dart';
import 'package:bilizen/util/bilibili.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/gestures.dart';

enum BiliTextType {
  username,
  bvNumber,
  avNumber,
  normal,
}

class _BiliFormatConstants {
  static final linkStyle = TextStyle(color: Colors.blue);
  static final bvRegex = RegExp(r'^BV[A-Za-z0-9]{10}$');
  static final avRegex = RegExp(r'^[Aa][Vv]\d+$');
  static final splitRegex = RegExp(r'@[^ \n]+|BV[A-Za-z0-9]{10}|[Aa][Vv]\d+');
}

class BiliFormatText extends StatelessWidget {
  const BiliFormatText({
    super.key,
    required this.text,
    this.style,
    this.onUsernameTap,
  });

  final String text;
  final TextStyle? style;
  final void Function(String username)? onUsernameTap;

  @override
  Widget build(BuildContext context) {
    final parts = _BiliTextParser.splitFormattedText(text);
    final spans = parts.map(_createTextSpan).toList();
    return RichText(text: TextSpan(children: spans));
  }

  TextSpan _createTextSpan(String part) {
    final textType = _BiliTextParser.getTextType(part);

    switch (textType) {
      case BiliTextType.username:
        return _createClickableSpan(
          part,
          onUsernameTap != null ? () => onUsernameTap!(part) : null,
        );
      case BiliTextType.bvNumber:
        return _createClickableSpan(
          part,
          () async {
            await getIt<PlaybackManager>().addPlayItem(
              PlayItem(video: Video(bid: part), pIndex: 1),
            );
          },
        );
      case BiliTextType.avNumber:
        return _createClickableSpan(
          part,
          () async {
            await getIt<PlaybackManager>().addPlayItem(
              PlayItem(
                video: Video(bid: toBv(int.parse(part.substring(2)))),
                pIndex: 1,
              ),
            );
          },
        );
      case BiliTextType.normal:
        return TextSpan(text: part, style: style);
    }
  }

  TextSpan _createClickableSpan(String text, VoidCallback? onTap) {
    return TextSpan(
      text: text,
      style: style?.merge(_BiliFormatConstants.linkStyle),
      recognizer: onTap != null
          ? (TapGestureRecognizer()..onTap = onTap)
          : null,
    );
  }
}

class _BiliTextParser {
  static BiliTextType getTextType(String text) {
    if (text.startsWith('@')) {
      return BiliTextType.username;
    } else if (_BiliFormatConstants.bvRegex.hasMatch(text)) {
      return BiliTextType.bvNumber;
    } else if (_BiliFormatConstants.avRegex.hasMatch(text)) {
      return BiliTextType.avNumber;
    } else {
      return BiliTextType.normal;
    }
  }

  static List<String> splitFormattedText(String input) {
    final result = <String>[];
    int lastEnd = 0;

    for (final match in _BiliFormatConstants.splitRegex.allMatches(input)) {
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
}
