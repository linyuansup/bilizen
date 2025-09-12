import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/ui/windows/page/router.dart';
import 'package:bilizen/ui/windows/page/video/right_bar/comment/detail/provider.dart';
import 'package:bilizen/ui/windows/page/video/right_bar/comment/list/provider.dart';
import 'package:bilizen/ui/windows/widget/comment_card.dart';
import 'package:bilizen/ui/windows/widget/scroll_bar_list_view.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class VideoCommentDetailPage extends ConsumerWidget {
  const VideoCommentDetailPage({super.key, required this.root});

  final CommentData root;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(videoCommentDetailProvider);
    return provider.when(
      loading: () {
        ref.read(videoCommentDetailProvider.notifier).fetchComments(root);
        return const Center(
          child: RepaintBoundary(
            child: ProgressRing(),
          ),
        );
      },
      loaded: (upUid, comments) => RepaintBoundary(
        child: _VideoCommentDetailPageData(
          comments: comments,
          root: root,
          upUid: upUid,
        ),
      ),
    );
  }
}

class _VideoCommentDetailPageData extends StatelessWidget {
  const _VideoCommentDetailPageData({
    required this.root,
    required this.comments,
    required this.upUid,
  });

  final CommentData root;
  final List<CommentData> comments;
  final int upUid;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(4),
              child: IconButton(
                icon: Icon(FluentIcons.back),
                onPressed: () {
                  GoRouter.of(
                    getIt<WindowsRouter>().videoComment.context,
                  ).pop();
                },
              ),
            ),
            Text('评论详情'),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 6),
          child: CommentCard(
            comment: root,
            showPreview: false,
            upUid: upUid,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: RepaintBoundary(
            child: _CommentListView(
              comments: comments,
              upUid: upUid,
            ),
          ),
        ),
      ],
    );
  }
}

class _CommentListView extends ConsumerWidget {
  const _CommentListView({
    required this.comments,
    required this.upUid,
  });

  final List<CommentData> comments;
  final int upUid;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ScrollBarListView(
      onBottom: () async {
        await ref.read(videoCommentDetailProvider.notifier).fetchMore();
      },
      padding: EdgeInsets.fromLTRB(6, 8, 0, 0),
      itemCount: comments.length,
      itemBuilder: (context, index) {
        return CommentCard(
          comment: comments[index],
          upUid: upUid,
        );
      },
    );
  }
}
