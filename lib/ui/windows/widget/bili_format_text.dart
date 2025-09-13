import 'package:bilizen/model/emoji.dart';
import 'package:bilizen/model/play_item.dart';
import 'package:bilizen/model/video.dart';
import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/package/playback_manager/playback_manager.dart';
import 'package:bilizen/util/bilibili.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';

enum BiliTextType {
  username,
  bvNumber,
  avNumber,
  emoji,
  normal,
}

class _BiliFormatConstants {
  static final bvRegex = RegExp(r'^BV[A-Za-z0-9]{10}$');
  static final avRegex = RegExp(r'^[Aa][Vv]\d+$');
}

class BiliFormatText extends StatefulWidget {
  const BiliFormatText({
    super.key,
    required this.text,
    this.style,
    this.onUsernameTap,
    this.emojis = const [],
    this.maxLines = 5,
    this.showMoreButton = true,
  });

  final String text;
  final List<Emoji> emojis;
  final TextStyle? style;
  final void Function(String username)? onUsernameTap;
  final int maxLines;
  final bool showMoreButton;

  @override
  State<BiliFormatText> createState() => _BiliFormatTextState();
}

class _BiliFormatTextState extends State<BiliFormatText> {
  bool _isExpanded = false;
  bool _hasMoreContent = false;
  final GlobalKey _textKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    if (widget.showMoreButton) {
      _checkTextOverflow();
    }
  }

  @override
  void didUpdateWidget(BiliFormatText oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.text != widget.text ||
        oldWidget.showMoreButton != widget.showMoreButton) {
      _isExpanded = false;
      if (widget.showMoreButton) {
        _checkTextOverflow();
      } else {
        setState(() {
          _hasMoreContent = false;
        });
      }
    }
  }

  void _checkTextOverflow() {
    // 只有在启用更多按钮时才检测溢出
    if (!widget.showMoreButton) return;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted && _textKey.currentContext != null) {
        final renderObject = _textKey.currentContext!.findRenderObject();
        if (renderObject is RenderParagraph) {
          final box = renderObject as RenderBox;
          if (!box.hasSize) return;

          // 使用实际的格式化文本（包含emoji）来检测溢出
          final parts = _BiliTextParser.splitFormattedText(
            widget.text,
            widget.emojis,
          );
          final spans = parts.map(_createInlineSpanForMeasurement).toList();

          final textPainter = TextPainter(
            text: TextSpan(children: spans),
            maxLines: widget.maxLines,
            textDirection: TextDirection.ltr,
          );

          textPainter.layout(maxWidth: box.size.width);

          if (mounted) {
            setState(() {
              _hasMoreContent = textPainter.didExceedMaxLines;
            });
          }
        }
      }
    });
  }

  // 用于测量的InlineSpan创建方法，避免复杂的Widget
  InlineSpan _createInlineSpanForMeasurement(String part) {
    final textType = _BiliTextParser.getTextType(part, widget.emojis);

    switch (textType) {
      case BiliTextType.username:
        return TextSpan(
          text: part,
          style: widget.style?.merge(
            TextStyle(color: Colors.blue, fontFamily: "Microsoft YaHei"),
          ),
        );
      case BiliTextType.bvNumber:
      case BiliTextType.avNumber:
        return TextSpan(
          text: part,
          style: widget.style?.merge(
            TextStyle(color: Colors.blue, fontFamily: "Microsoft YaHei"),
          ),
        );
      case BiliTextType.emoji:
        // 用占位符文本来模拟emoji的空间占用
        return TextSpan(
          text: '🙂', // 使用固定的emoji字符作为占位符
          style: widget.style?.merge(TextStyle(fontFamily: "Microsoft YaHei")),
        );
      case BiliTextType.normal:
        return TextSpan(
          text: part,
          style: widget.style?.merge(TextStyle(fontFamily: "Microsoft YaHei")),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    final parts = _BiliTextParser.splitFormattedText(
      widget.text,
      widget.emojis,
    );
    final spans = parts.map(_createInlineSpan).toList();

    // 如果不显示更多按钮，则直接显示全部内容
    final shouldShowExpandButton = widget.showMoreButton && _hasMoreContent;
    final maxLines = (!widget.showMoreButton || _isExpanded)
        ? null
        : widget.maxLines;
    final overflow = (!widget.showMoreButton || _isExpanded)
        ? TextOverflow.visible
        : TextOverflow.ellipsis;

    return RepaintBoundary(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            key: _textKey,
            maxLines: maxLines,
            overflow: overflow,
            text: TextSpan(children: spans),
          ),
          if (shouldShowExpandButton) ...[
            const SizedBox(height: 4),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _isExpanded = !_isExpanded;
                  });
                },
                child: Text(
                  _isExpanded ? '收起' : '展开',
                  style:
                      widget.style?.merge(
                        TextStyle(
                          color: Colors.blue,
                          fontFamily: "Microsoft YaHei",
                        ),
                      ) ??
                      TextStyle(
                        color: Colors.blue,
                        fontFamily: "Microsoft YaHei",
                      ),
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }

  InlineSpan _createInlineSpan(String part) {
    final textType = _BiliTextParser.getTextType(part, widget.emojis);

    switch (textType) {
      case BiliTextType.username:
        return _createClickableSpan(
          part,
          widget.onUsernameTap != null
              ? () => widget.onUsernameTap!(part)
              : null,
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
      case BiliTextType.emoji:
        return _createEmojiSpan(part);
      case BiliTextType.normal:
        return TextSpan(
          text: part,
          style: widget.style?.merge(TextStyle(fontFamily: "Microsoft YaHei")),
        );
    }
  }

  TextSpan _createClickableSpan(String text, VoidCallback? onTap) {
    return TextSpan(
      text: text,
      style: widget.style?.merge(
        TextStyle(color: Colors.blue, fontFamily: "Microsoft YaHei"),
      ),
      recognizer: onTap != null
          ? (TapGestureRecognizer()..onTap = onTap)
          : null,
    );
  }

  InlineSpan _createEmojiSpan(String emojiText) {
    final emoji = widget.emojis.firstWhere(
      (e) => e.text == emojiText,
      orElse: () => throw StateError('Emoji not found: $emojiText'),
    );

    return WidgetSpan(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 1,
        ),
        child: RepaintBoundary(
          child: CachedNetworkImage(
            imageUrl: emoji.url,
            width: 16,
            height: 16,
            fit: BoxFit.contain,
            errorWidget: (context, error, stackTrace) {
              return Text(
                emojiText,
                style: widget.style?.merge(
                  TextStyle(fontFamily: "Microsoft YaHei"),
                ),
              );
            },
          ),
        ),
      ),
      alignment: PlaceholderAlignment.middle,
    );
  }
}

class _BiliTextParser {
  static BiliTextType getTextType(String text, List<Emoji> emojis) {
    if (text.startsWith('@')) {
      return BiliTextType.username;
    } else if (_BiliFormatConstants.bvRegex.hasMatch(text)) {
      return BiliTextType.bvNumber;
    } else if (_BiliFormatConstants.avRegex.hasMatch(text)) {
      return BiliTextType.avNumber;
    } else if (emojis.any((emoji) => emoji.text == text)) {
      return BiliTextType.emoji;
    } else {
      return BiliTextType.normal;
    }
  }

  static List<String> splitFormattedText(String input, List<Emoji> emojis) {
    final result = <String>[];
    int lastEnd = 0;

    // 创建emoji文本的正则表达式
    final emojiTexts = emojis.map((e) => RegExp.escape(e.text)).join('|');
    final emojiRegex = emojiTexts.isNotEmpty ? RegExp('($emojiTexts)') : null;

    // 合并所有匹配模式
    final allPatterns = [
      r'@[^ \n]+',
      r'BV[A-Za-z0-9]{10}',
      r'[Aa][Vv]\d+',
      if (emojiRegex != null) emojiTexts,
    ].join('|');

    final combinedRegex = RegExp(allPatterns);

    for (final match in combinedRegex.allMatches(input)) {
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
