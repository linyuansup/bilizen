import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/logic/comment_manager/comment_manager.dart';
import 'package:bilizen/logic/comment_manager/get_reply_result.dart';
import 'package:bilizen/model/comment.dart';

extension CommentExtension on Comment {
  Future<GetReplyResult> getReplies({
    int pageSize = 10,
  }) async {
    return await getIt<CommentManager>().getVideoReplies(
      oid: to.id,
      root: rootId,
      pageSize: pageSize,
    );
  }
}
