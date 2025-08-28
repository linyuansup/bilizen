import 'package:bilizen/data/api/user/info.dart';
import 'package:bilizen/package/future_class/annotations.dart';
import 'package:bilizen/package/future_class/future_class_base.dart';
import 'package:bilizen/inject/inject.dart';

part 'user.future.dart';

@futureClass
class User extends _$User {
  final int id;

  final _userInfoApi = getIt<UserInfoApi>();

  User({required this.id});

  @FutureData(loader: 'basicInfo')
  Future<String> get nickName => $nickName;

  @FutureData(loader: "basicInfo")
  Future<String> get avatar => $avatar;

  @FutureData(loader: "basicInfo")
  Future<String> get sex => $sex;

  @FutureData(loader: "basicInfo")
  Future<int> get level => $level;

  @FutureData(loader: "basicInfo")
  Future<bool> get isFollowed => $isFollowed;

  @FutureData(loader: "cardInfo")
  Future<int> get archiveCount => $archiveCount;

  @FutureData(loader: "cardInfo")
  Future<int> get likeNum => $likeNum;

  @FutureData(loader: "cardInfo")
  Future<int> get fans => $fans;

  @FutureData(loader: "cardInfo")
  Future<int> get focus => $focus;

  @FutureData(loader: "cardInfo")
  Future<String> get sign => $sign;

  @override
  Future<void> basicInfo() async {
    final user = await _userInfoApi.getUserDetail(id);
    setNickName(user["data"]["name"]);
    setAvatar(user["data"]["face"]);
    setSex(user["data"]["sex"]);
    setLevel(user["data"]["level"]);
    setIsFollowed(user["data"]["is_followed"]);
  }

  @override
  Future<void> cardInfo() async {
    final user = await _userInfoApi.getCardDetail(id);
    setArchiveCount(user["data"]["archive_count"]);
    setLikeNum(user["data"]["like_num"]);
    setFans(user["data"]["card"]["fans"]);
    setFocus(user["data"]["card"]["friend"]);
    setSign(user["data"]["card"]["sign"]);
  }
}
