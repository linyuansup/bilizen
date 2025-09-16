import 'package:bilizen/data/api/fav/list.dart';
import 'package:bilizen/package/fav_manager/fav_list_result.dart';
import 'package:bilizen/model/user.dart';
import 'package:bilizen/model/video.dart';
import 'package:injectable/injectable.dart';

@singleton
class FavManager {
  final FavListApi _favListApi;

  FavManager(this._favListApi);

  Future<FavListResult> getFavList(int mlid) async {
    return await get(_favListApi, 1, mlid);
  }
}

Future<FavListResult> get(FavListApi favListApi, int page, int mlid) async {
  final response = await favListApi.getFavList(mlid: mlid, page: page);
  final medias = response["data"]["medias"];
  if (medias == null) {
    return FavListResult(videos: [], page: page, mlid: mlid);
  }
  return FavListResult(
    videos: (medias as List)
        .where((item) {
          return item["type"] == 2;
        })
        .where((item) {
          return item["attr"] == 0;
        })
        .map((item) {
          final video = Video(bid: item["bv_id"]);
          video.setTitle(item["title"]);
          video.setCover(item["cover"]);
          video.setDescription(item["intro"]);
          video.setVideosNum(item["page"]);
          video.setTotalDuration(item["duration"]);
          final user = User(id: item["upper"]["mid"]);
          user.setNickName(item["upper"]["name"]);
          user.setAvatar(item["upper"]["face"]);
          video.setUploadTime(item["ctime"]);
          video.setUploader(user);
          video.setFavorite(item["cnt_info"]["collect"]);
          video.setView(item["cnt_info"]["play"]);
          video.setDanmaku(item["cnt_info"]["danmaku"]);
          return video;
        })
        .toList(),
    page: page,
    mlid: mlid,
  );
}
