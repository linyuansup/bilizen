import 'package:bilizen/data/api/comment/list.dart';
import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/model/comment.dart';
import 'package:injectable/injectable.dart';

@singleton
class CommentManager {
  final CommentListApi _commentListApi;

  CommentManager(this._commentListApi);

  Future<GetCommentResult> getVideoComments({
    required int avid,
    SortMode sort = SortMode.like,
    bool showHot = true,
    int pageSize = 10,
  }) async {
    return await _getComment(
      type: CommentToType.video,
      oid: avid,
      sort: sort,
      showHot: showHot,
      pageSize: pageSize,
    );
  }

  Future<GetReplyResult> getVideoReplies({
    required int avid,
    required int root,
    int pageSize = 20,
  }) async {
    return await _getReply(
      type: CommentToType.video,
      oid: avid,
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
      finished: false,
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

class GetCommentResult {
  final CommentToType type;
  final int oid;
  final SortMode sort;
  final bool showHot;
  final int page;
  final int pageSize;
  List<Comment> comments;
  final bool finished;

  GetCommentResult({
    required this.type,
    required this.oid,
    required this.sort,
    required this.showHot,
    required this.page,
    required this.pageSize,
    required this.comments,
    required this.finished,
  });

  Future<GetCommentResult> next() async {
    if (finished) {
      comments = [];
      return this;
    }
    final result = await getIt<CommentListApi>().getComment(
      type: type.id,
      oid: oid,
      page: page + 1,
      sort: sort.id,
    );
    return GetCommentResult(
      type: type,
      oid: oid,
      sort: sort,
      showHot: showHot,
      page: page + 1,
      pageSize: pageSize,
      comments: getListCommentApiResult(result),
      finished: result.isEmpty,
    );
  }
}

List<Comment> getReplyApiResult(Map<String, dynamic> result) {
  final comments = List<Comment>.empty(growable: true);
  final replies = result["data"]["replies"];
  if (replies != null) {
    comments.addAll(
      (replies as List).map((e) {
        return Comment.fromApi(e);
      }),
    );
  }
  return comments;
}

List<Comment> getListCommentApiResult(Map<String, dynamic> result) {
  final comments = List<Comment>.empty(growable: true);
  final hots = result["data"]["hots"];
  if (hots != null) {
    comments.addAll(
      (hots as List).map((e) {
        return Comment.fromApi(e);
      }),
    );
  }
  final replies = result["data"]["replies"];
  if (replies != null) {
    comments.addAll(
      (replies as List).map((e) {
        return Comment.fromApi(e);
      }),
    );
  }
  return comments;
}

class GetReplyResult {
  final CommentToType type;
  final int oid;
  final int root;
  final int page;
  final int pageSize;
  final List<Comment> comments;

  GetReplyResult({
    required this.type,
    required this.oid,
    required this.root,
    required this.page,
    required this.pageSize,
    required this.comments,
  });

  Future<GetReplyResult> next() async {
    if (comments.isEmpty) {
      return this;
    }
    final result = await getIt<CommentListApi>().getReply(
      type: type.id,
      oid: oid,
      root: root,
      page: page + 1,
      ps: pageSize,
    );
    return GetReplyResult(
      type: type,
      oid: oid,
      root: root,
      page: page + 1,
      pageSize: pageSize,
      comments: getReplyApiResult(result),
    );
  }
}
