import 'package:bilizen/data/api/comment/list.dart';
import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/logic/comment_manager/comment_manager.dart';
import 'package:bilizen/logic/comment_manager/get_comment.dart';
import 'package:bilizen/model/comment.dart';

class GetCommentResult {
  final CommentToType type;
  final int oid;
  final SortMode sort;
  final bool showHot;
  final int page;
  final int pageSize;
  final List<Comment> comments;

  GetCommentResult({
    required this.type,
    required this.oid,
    required this.sort,
    required this.showHot,
    required this.page,
    required this.pageSize,
    required this.comments,
  });

  Future<GetCommentResult> next() async {
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
    );
  }
}
