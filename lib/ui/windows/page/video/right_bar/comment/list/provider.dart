import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/package/comment_manager/comment_manager.dart';
import 'package:bilizen/package/comment_manager/get_comment_result.dart';
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
  GetCommentResult? _currentComment;

  @override
  VideoCommentListState build() {
    _playbackManager.currentPlaying
        .distinct((a, b) {
          return a?.item.video.bid == b?.item.video.bid;
        })
        .listen((_) {
          _currentComment = null;
          state = VideoCommentListState.loading();
        });
    return VideoCommentListState.loading();
  }

  Future<void> fetchComments() async {
    final currentPlaying = _playbackManager.currentPlaying.value;
    if (currentPlaying == null) {
      return;
    }
    if (_currentComment == null) {
      _currentComment = await _commentManager.getVideoComments(
        avid: toAv(currentPlaying.item.video.bid),
      );
      state = VideoCommentListState.loaded(
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
    _currentComment = await _currentComment!.next();
    state = (state as _Loaded).copyWith(
      comments: [
        ...(state as _Loaded).comments,
        ...await fromModelComment(_currentComment!.comments),
      ],
    );
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
sealed class CommentData with _$CommentData {
  const factory CommentData({
    required int id,
    required List<CommentData> repliesPreview,
    required int totalReplyNum,
    required UserData sender,
    required CommentContent content,
    required int sendTime,
    required bool isUpReply,
    required bool isUpLike,
    required LikeStatus likeStatus,
    required int like,
  }) = _CommentData;
}

@freezed
sealed class UserData with _$UserData {
  const factory UserData({
    required int uid,
    required String avatar,
    required String nickName,
  }) = _UserData;
}

@freezed
sealed class VideoCommentListState with _$VideoCommentListState {
  const factory VideoCommentListState.loading() = _Loading;
  const factory VideoCommentListState.loaded({
    required int upUid,
    required List<CommentData> comments,
  }) = _Loaded;
}
