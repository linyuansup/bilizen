import 'package:bilizen/data/api/fav/info.dart';
import 'package:bilizen/data/api/user/info.dart';
import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/model/fav_list.dart';
import 'package:bilizen/package/future_class/annotations.dart';
import 'package:bilizen/package/future_class/future_class_base.dart';

part 'user.future.dart';

@futureClass
class User extends _$User {
  final int id;

  final _userInfoApi = getIt<UserInfoApi>();
  final _favInfoApi = getIt<FavInfoApi>();

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
  Future<bool> get isFollowing => $isFollowing;

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

  @FutureData(loader: "fav")
  Future<List<FavList>> get favLists => $favLists;

  @override
  Future<void> basicInfo() async {
    final user = await _userInfoApi.getUserDetail(id);
    setNickName(user["data"]["name"]);
    setAvatar(user["data"]["face"]);
    setSex(user["data"]["sex"]);
    setLevel(user["data"]["level"]);
    setIsFollowing(user["data"]["is_followed"]);
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

  @override
  Future<void> fav() async {
    final favList = await _favInfoApi.getUserFavList(uid: id);
    final list = (favList["data"]["list"] as List)
        .map<FavList>(
          (e) => FavList(
            mlid: e["id"],
            user: this,
            title: e["title"],
            count: e["media_count"],
          ),
        )
        .toList();
    setFavLists(list);
  }
}
