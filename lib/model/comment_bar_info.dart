import 'package:bilizen/data/api/comment/list.dart';
import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/model/user.dart';
import 'package:bilizen/package/future_class/annotations.dart';
import 'package:bilizen/package/future_class/future_class_base.dart';

part 'comment_bar_info.future.dart';

@futureClass
class CommentBarInfo extends _$CommentBarInfo {
  final _commentApi = getIt<CommentListApi>();

  final int type;
  final int oid;

  CommentBarInfo({
    required this.type,
    required this.oid,
  });

  @FutureData(loader: "basicInfo")
  Future<bool> get readOnly => $readOnly;

  @FutureData(loader: "basicInfo")
  Future<User> get user => $user;

  @override
  Future<void> basicInfo() async {
    final info = (await _commentApi.getComment(
      type: type,
      oid: oid,
      page: 1,
    ))["data"];
    setReadOnly(info["config"]["read_only"]);
    setUser(User(id: info["upper"]["mid"]));
  }
}
