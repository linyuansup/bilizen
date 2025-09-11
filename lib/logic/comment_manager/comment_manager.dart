import 'package:bilizen/data/api/comment/list.dart';
import 'package:bilizen/logic/comment_manager/get_comment.dart';
import 'package:bilizen/logic/comment_manager/get_comment_result.dart';
import 'package:bilizen/logic/comment_manager/get_reply_result.dart';
import 'package:bilizen/model/comment.dart';
import 'package:injectable/injectable.dart';

@singleton
class CommentManager {
  final CommentListApi _commentListApi;

  CommentManager(this._commentListApi);

  Future<GetCommentResult> getVideoComments({
    required int oid,
    SortMode sort = SortMode.like,
    bool showHot = true,
    int pageSize = 10,
  }) async {
    return await _getComment(
      type: CommentToType.video,
      oid: oid,
      sort: sort,
      showHot: showHot,
      pageSize: pageSize,
    );
  }

  Future<GetReplyResult> getVideoReplies({
    required int oid,
    required int root,
    int pageSize = 10,
  }) async {
    return await _getReply(
      type: CommentToType.video,
      oid: oid,
      root: root,
      pageSize: pageSize,
    );
  }

  Future<GetReplyResult> _getReply({
    required CommentToType type,
    required int oid,
    required int root,
    int pageSize = 10,
  }) async {
    final result = await _commentListApi.getReply(
      type: type.id,
      oid: oid,
      root: root,
      page: 1,
      ps: pageSize,
    );
    return GetReplyResult(
      type: type,
      oid: oid,
      root: root,
      page: 1,
      pageSize: pageSize,
      comments: getReplyApiResult(result),
    );
  }

  Future<GetCommentResult> _getComment({
    required CommentToType type,
    required int oid,
    SortMode sort = SortMode.like,
    bool showHot = true,
    int pageSize = 10,
  }) async {
    final result = await _commentListApi.getComment(
      type: type.id,
      oid: oid,
      page: 1,
      sort: sort.id,
    );

    return GetCommentResult(
      type: type,
      oid: oid,
      sort: sort,
      showHot: showHot,
      page: 1,
      pageSize: pageSize,
      comments: getListCommentApiResult(result),
    );
  }
}

enum SortMode {
  time(0),
  like(1),
  reply(2);

  final int id;
  const SortMode(this.id);
}
