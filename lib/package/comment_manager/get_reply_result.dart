import 'package:bilizen/data/api/comment/list.dart';
import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/package/comment_manager/get_comment.dart';
import 'package:bilizen/model/comment.dart';

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
