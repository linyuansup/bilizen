import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/logic/comment_manager/comment_manager.dart';
import 'package:bilizen/logic/comment_manager/get_reply_result.dart';
import 'package:bilizen/model/comment.dart';
import 'package:bilizen/package/playback_manager/playback_manager.dart';
import 'package:bilizen/ui/windows/page/router.dart';
import 'package:bilizen/ui/windows/page/video/right_bar/comment/list/provider.dart';
import 'package:bilizen/util/bilibili.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.freezed.dart';
part 'provider.g.dart';

@Riverpod(keepAlive: true, name: "videoCommentDetailProvider")
class VideoCommentDetailProvider extends _$VideoCommentDetailProvider {
  final _commentManager = getIt<CommentManager>();
  final _playbackManager = getIt<PlaybackManager>();
  GetReplyResult? _currentComment;

  @override
  VideoCommentDetailState build() {
    _playbackManager.currentPlaying
        .distinct((a, b) {
          return a?.item.video.bid == b?.item.video.bid;
        })
        .skip(1)
        .listen((_) {
          final context = getIt<WindowsRouter>().videoComment.context;
          if (context.mounted) {
            GoRouter.of(context).pop();
          }
        });
    return VideoCommentDetailState.loading();
  }

  void reload() {
    state = const VideoCommentDetailState.loading();
  }

  Future<void> fetchComments(CommentData comment) async {
    final currentPlaying = _playbackManager.currentPlaying.value;
    if (currentPlaying == null) {
      return;
    }
    _currentComment = await _commentManager.getVideoReplies(
      avid: toAv(currentPlaying.item.video.bid),
      root: comment.id,
    );
    state = VideoCommentDetailState.loaded(
      comments: await fromModelComment(_currentComment!.comments),
      upUid:
          (await getIt<PlaybackManager>()
                  .currentPlaying
                  .value!
                  .item
                  .video
                  .uploader)
              .id,
    );
    return;
  }

  Future<void> fetchMore() async {
    if (_currentComment == null) {
      return;
    }
    _currentComment = await _currentComment!.next();
    state = (state as VideoCommentDetailStateLoaded).copyWith(
      comments: [
        ...(state as VideoCommentDetailStateLoaded).comments,
        ...await fromModelComment(_currentComment!.comments),
      ],
    );
    return;
  }

  Future<List<CommentData>> fromModelComment(
    List<Comment> comments,
  ) async {
    return await Future.wait(
      comments.map((e) async {
        return CommentData(
          id: e.commentId,
          repliesPreview: await fromModelComment(e.repliesPreview),
          totalReplyNum: e.totalReplyNum,
          sender: UserData(
            uid: e.sender.id,
            avatar: await e.sender.avatar,
            nickName: await e.sender.nickName,
          ),
          content: e.content,
          sendTime: e.sendTime,
          isUpReply: e.isUpReply,
          isUpLike: e.isUpLike,
          likeStatus: e.likeStatus,
          like: e.like,
        );
      }).toList(),
    );
  }
}

@freezed
sealed class VideoCommentDetailState with _$VideoCommentDetailState {
  const factory VideoCommentDetailState.loading() =
      VideoCommentDetailStateLoading;
  const factory VideoCommentDetailState.loaded({
    required int upUid,
    required List<CommentData> comments,
  }) = VideoCommentDetailStateLoaded;
}
