import 'package:bilizen/model/comment.dart';
import 'package:bilizen/ui/windows/page/video/right_bar/comment/list/provider.dart';
import 'package:bilizen/ui/windows/widget/bili_format_text.dart';
import 'package:bilizen/util/string.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:fluent_ui/fluent_ui.dart';

typedef OnCommentTap = void Function(CommentData comment);

class CommentCard extends StatelessWidget {
  const CommentCard({
    super.key,
    required this.comment,
    required this.upUid,
    this.onCommentTap,
    this.showPreview = true,
  });

  final CommentData comment;
  final int upUid;
  final OnCommentTap? onCommentTap;
  final bool showPreview;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 6),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Colors.black.withValues(alpha: 0.1),
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildAvatar(),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildUserInfo(),
                    const SizedBox(height: 4),
                    _buildCommentContent(),
                    _buildTimeAndActions(),
                    if (comment.repliesPreview.isNotEmpty && showPreview) ...[
                      const SizedBox(height: 4),
                      _buildRepliesPreview(),
                    ],
                    if (comment.totalReplyNum > 0 && showPreview) ...[
                      const SizedBox(height: 8),
                      _buildReplyCount(),
                    ],
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildAvatar() {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black.withValues(alpha: 0.1),
      ),
      child: ClipOval(
        child: RepaintBoundary(
          child: CachedNetworkImage(
            imageUrl: comment.sender.avatar,
            fit: BoxFit.cover,
            errorWidget: (context, error, stackTrace) {
              return Icon(
                FluentIcons.personalize,
                color: Colors.black.withValues(alpha: 0.1),
                size: 24,
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildUserInfo() {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Text(
          comment.sender.nickName,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
        // UP标签 - 显示在昵称右上角
        if (comment.sender.uid == upUid)
          Positioned(
            right: -12,
            top: -2,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 1),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(6),
                border: Border.all(color: Colors.white, width: 1),
              ),
              child: const Text(
                "UP",
                style: TextStyle(
                  fontSize: 7,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
      ],
    );
  }

  Widget _buildCommentContent() {
    return BiliFormatText(
      text: comment.content.message,
      emojis: comment.content.mentionEmojis,
      style: const TextStyle(
        fontSize: 14,
        height: 1.4,
        color: Colors.black,
      ),
    );
  }

  Widget _buildTimeAndActions() {
    return Row(
      children: [
        Text(
          formatDate(comment.sendTime),
          style: TextStyle(
            fontSize: 12,
            color: Colors.black.withValues(alpha: 0.5),
          ),
        ),
        const Spacer(),
        _buildHorizontalLikeSection(),
      ],
    );
  }

  Widget _buildRepliesPreview() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.black.withValues(alpha: 0.01),
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: Colors.black.withValues(alpha: 0.1)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: comment.repliesPreview.map((reply) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${reply.sender.nickName}：",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue,
                  ),
                ),
                Expanded(
                  child: BiliFormatText(
                    emojis: reply.content.mentionEmojis,
                    text: reply.content.message,
                    style: const TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildReplyCount() {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () {
              onCommentTap?.call(comment);
            },
            child: Text(
              "共有 ${comment.totalReplyNum} 条回复",
              style: TextStyle(
                fontSize: 13,
                color: Colors.blue,
              ),
            ),
          ),
        ),
        if (comment.isUpReply)
          Positioned(
            right: -12,
            top: -2,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 1),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(6),
                border: Border.all(color: Colors.white, width: 1),
              ),
              child: const Text(
                "UP",
                style: TextStyle(
                  fontSize: 7,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
      ],
    );
  }

  Widget _buildHorizontalLikeSection() {
    return Row(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: comment.likeStatus == LikeStatus.liked
                    ? Colors.blue
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    FluentIcons.like,
                    size: 16,
                    color: comment.likeStatus == LikeStatus.liked
                        ? Colors.blue
                        : Colors.black.withValues(alpha: 0.5),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    comment.like.toString(),
                    style: TextStyle(
                      fontSize: 12,
                      color: comment.likeStatus == LikeStatus.liked
                          ? Colors.blue
                          : Colors.black.withValues(alpha: 0.5),
                    ),
                  ),
                ],
              ),
            ),
            if (comment.isUpLike)
              Positioned(
                right: -2,
                top: -2,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 3,
                    vertical: 1,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(color: Colors.white, width: 1),
                  ),
                  child: const Text(
                    "UP",
                    style: TextStyle(
                      fontSize: 7,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
          ],
        ),
        const SizedBox(width: 8),
        Container(
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: comment.likeStatus == LikeStatus.disliked
                ? Colors.red
                : Colors.transparent,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Icon(
            FluentIcons.dislike,
            size: 16,
            color: comment.likeStatus == LikeStatus.disliked
                ? Colors.red
                : Colors.black.withValues(alpha: 0.5),
          ),
        ),
      ],
    );
  }
}
