import 'package:bilizen/model/comment.dart';

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
