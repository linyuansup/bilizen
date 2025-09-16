import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/ui/windows/page/router.dart';
import 'package:bilizen/ui/windows/page/video/right_bar/comment/detail/provider.dart';
import 'package:bilizen/ui/windows/page/video/right_bar/comment/list/provider.dart';
import 'package:bilizen/ui/windows/widget/comment_card.dart';
import 'package:bilizen/ui/windows/widget/scroll_bar_list_view.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

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
            child: ProgressRing(),
          ),
        );
      },
      loaded: (upUid, comments) => RepaintBoundary(
        child: _CommentListView(
          comments: comments,
          upUid: upUid,
        ),
      ),
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
        await ref.read(videoCommentListProvider.notifier).fetchComments();
      },
      padding: EdgeInsets.fromLTRB(6, 8, 0, 0),
      itemCount: comments.length,
      itemBuilder: (context, index) {
        return CommentCard(
          onCommentTap: (comment) {
            ref.invalidate(videoCommentDetailProvider);
            GoRouter.of(
              getIt<WindowsRouter>().videoComment.context,
            ).pushNamed("detail", extra: comment);
          },
          comment: comments[index],
          upUid: upUid,
        );
      },
    );
  }
}
