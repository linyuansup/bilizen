import 'package:bilizen/model/comment.dart';
import 'package:bilizen/ui/windows/page/video/right_bar/comment/list/provider.dart';
import 'package:bilizen/ui/windows/widget/bili_format_text.dart';
import 'package:bilizen/ui/windows/widget/scroll_bar_list_view.dart';
import 'package:bilizen/util/string.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

class VideoCommentListPage extends ConsumerWidget {
  const VideoCommentListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(videoCommentListProvider);
    return provider.when(
      loading: () {
        ref.read(videoCommentListProvider.notifier).fetchComments();
        return const Center(
          child: RepaintBoundary(
            child: CircularProgressIndicator(),
          ),
        );
      },
      loaded: (comments) =>
          RepaintBoundary(child: _CommentListView(comments: comments)),
    );
  }
}

class _CommentListView extends ConsumerWidget {
  const _CommentListView({
    required this.comments,
  });

  final List<Comment> comments;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ScrollBarListView(
      onBottom: () async {
        await ref.read(videoCommentListProvider.notifier).fetchComments();
      },
      padding: EdgeInsets.fromLTRB(6, 8, 0, 0),
      itemCount: comments.length,
      itemBuilder: (context, index) {
        return _CommentCard(comment: comments[index]);
      },
    );
  }
}

class _CommentCard extends StatelessWidget {
  const _CommentCard({
    required this.comment,
  });

  final Comment comment;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 6),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey.shade300, width: 1),
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
                    if (comment.repliesPreview.isNotEmpty) ...[
                      const SizedBox(height: 4),
                      _buildRepliesPreview(),
                    ],
                    if (comment.totalReplyNum > 0) ...[
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
    return FutureBuilder<String>(
      future: comment.sender.avatar,
      builder: (context, snapshot) {
        return Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey.shade300,
          ),
          child: snapshot.hasData
              ? ClipOval(
                  child: RepaintBoundary(
                    child: CachedNetworkImage(
                      imageUrl: snapshot.data!,
                      fit: BoxFit.cover,
                      errorWidget: (context, error, stackTrace) {
                        return Icon(
                          Icons.person,
                          color: Colors.grey.shade600,
                          size: 24,
                        );
                      },
                    ),
                  ),
                )
              : Icon(
                  Icons.person,
                  color: Colors.grey.shade600,
                  size: 24,
                ),
        );
      },
    );
  }

  Widget _buildUserInfo() {
    return FutureBuilder<String>(
      future: comment.sender.nickName,
      builder: (context, snapshot) {
        return Text(
          snapshot.data ?? "加载中...",
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        );
      },
    );
  }

  Widget _buildCommentContent() {
    return BiliFormatText(
      text: comment.content.message,
      emojis: comment.content.mentionEmojis,
      style: const TextStyle(
        fontSize: 14,
        color: Colors.black87,
        height: 1.4,
      ),
    );
  }

  Widget _buildTimeAndActions() {
    return Row(
      children: [
        // 左侧时间
        Text(
          formatDate(comment.sendTime),
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey.shade600,
          ),
        ),
        const Spacer(),
        // 右侧点赞点踩按钮
        _buildHorizontalLikeSection(),
      ],
    );
  }

  Widget _buildRepliesPreview() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: comment.repliesPreview.map((reply) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FutureBuilder<String>(
                  future: reply.sender.nickName,
                  builder: (context, snapshot) {
                    return Text(
                      "${snapshot.data ?? "加载中..."}：",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue.shade700,
                      ),
                    );
                  },
                ),
                Expanded(
                  child: BiliFormatText(
                    emojis: reply.content.mentionEmojis,
                    text: reply.content.message,
                    style: const TextStyle(
                      fontSize: 13,
                      color: Colors.black87,
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
        Text(
          "共有 ${comment.totalReplyNum} 条回复",
          style: TextStyle(
            fontSize: 13,
            color: Colors.blue.shade600,
          ),
        ),
        // UP标签 - 显示在文字右上角
        if (comment.isUpReply)
          Positioned(
            right: -12,
            top: -2,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 1),
              decoration: BoxDecoration(
                color: Colors.orange.shade600,
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
        // 点赞按钮
        Stack(
          clipBehavior: Clip.none,
          children: [
            GestureDetector(
              onTap: () {
                // TODO: 实现点赞功能
              },
              child: Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: comment.likeStatus == LikeStatus.liked
                      ? Colors.blue.shade50
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.thumb_up_outlined,
                      size: 16,
                      color: comment.likeStatus == LikeStatus.liked
                          ? Colors.blue.shade600
                          : Colors.grey.shade600,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      comment.like.toString(),
                      style: TextStyle(
                        fontSize: 12,
                        color: comment.likeStatus == LikeStatus.liked
                            ? Colors.blue.shade600
                            : Colors.grey.shade600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // UP标签 - 显示在点赞按钮右上角
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
                    color: Colors.orange.shade600,
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
        // 点踩按钮
        GestureDetector(
          onTap: () {
            // TODO: 实现点踩功能
          },
          child: Container(
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: comment.likeStatus == LikeStatus.disliked
                  ? Colors.red.shade50
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Icon(
              Icons.thumb_down_outlined,
              size: 16,
              color: comment.likeStatus == LikeStatus.disliked
                  ? Colors.red.shade600
                  : Colors.grey.shade600,
            ),
          ),
        ),
      ],
    );
  }
}
