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
}
