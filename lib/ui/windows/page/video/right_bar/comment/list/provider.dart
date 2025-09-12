import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/logic/comment_manager/comment_manager.dart';
import 'package:bilizen/logic/comment_manager/get_comment_result.dart';
import 'package:bilizen/model/comment.dart';
import 'package:bilizen/package/playback_manager/playback_manager.dart';
import 'package:bilizen/util/bilibili.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.freezed.dart';
part 'provider.g.dart';

@Riverpod(keepAlive: true, name: "videoCommentListProvider")
class VideoCommentListProvider extends _$VideoCommentListProvider {
  final _commentManager = getIt<CommentManager>();
  final _playbackManager = getIt<PlaybackManager>();
  GetCommentResult? currentComment;

  @override
  VideoCommentListState build() {
    _playbackManager.currentPlaying
        .distinct((a, b) {
          return a?.item.video.bid == b?.item.video.bid;
        })
        .listen((_) {
          currentComment = null;
          state = VideoCommentListState.loading();
        });
    return VideoCommentListState.loading();
  }

  Future<void> fetchComments() async {
    final currentPlaying = _playbackManager.currentPlaying.value;
    if (currentPlaying == null) {
      return;
    }
    if (currentComment == null) {
      currentComment = await _commentManager.getVideoComments(
        avid: toAv(currentPlaying.item.video.bid),
      );
      state = VideoCommentListState.loaded(
        comments: currentComment!.comments,
      );
      return;
    }
    currentComment = await currentComment!.next();
    state = VideoCommentListState.loaded(
      comments: [
        ...(state as VideoCommentListStateLoaded).comments,
        ...currentComment!.comments,
      ],
    );
  }
}

@freezed
sealed class VideoCommentListState with _$VideoCommentListState {
  const factory VideoCommentListState.loading() = VideoCommentListStateLoading;
  const factory VideoCommentListState.loaded({
    required List<Comment> comments,
  }) = VideoCommentListStateLoaded;
}
