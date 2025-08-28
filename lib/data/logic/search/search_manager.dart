import 'package:bilizen/data/api/search/request.dart';
import 'package:bilizen/data/api/search/suggest.dart';
import 'package:bilizen/data/logic/search/video_result.dart';
import 'package:injectable/injectable.dart';

@singleton
class SearchManager {
  final SearchSuggestApi _searchSuggestApi;
  final SearchRequestApi _searchRequestApi;

  SearchManager(this._searchSuggestApi, this._searchRequestApi);

  Future<List<String>> recommend(String keyword, [int? uid]) async {
    final result = await _searchSuggestApi.recommend(keyword, uid);
    final data = result["result"]["tag"] as List;
    return data.map((e) => e["value"] as String).toList();
  }

  Future<VideoResult> searchVideo(String keyword) async {
    final result = await _searchRequestApi.search("video", keyword, 1);
    final data = (result["data"]["result"] as List).map((e) {
      return buildVideo(e);
    }).toList();
    return VideoResult(videos: data, page: 1, keyword: keyword);
  }
}
