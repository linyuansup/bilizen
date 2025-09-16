import 'package:bilizen/data/api/fav/list.dart';
import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/package/fav_manager/fav_manager.dart';
import 'package:bilizen/model/video.dart';

class FavListResult {
  final List<Video> videos;
  final int _page;
  final int _mlid;

  FavListResult({required this.videos, required int page, required int mlid})
    : _page = page,
      _mlid = mlid;

  Future<FavListResult> next() async {
    return await get(getIt<FavListApi>(), _page + 1, _mlid);
  }
}
