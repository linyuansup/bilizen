// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:bilizen/data/api/comment/list.dart' as _i937;
import 'package:bilizen/data/api/fav/info.dart' as _i78;
import 'package:bilizen/data/api/fav/list.dart' as _i158;
import 'package:bilizen/data/api/github/update.dart' as _i478;
import 'package:bilizen/data/api/login/login_action/qr.dart' as _i348;
import 'package:bilizen/data/api/login/login_info.dart' as _i1038;
import 'package:bilizen/data/api/search/request.dart' as _i61;
import 'package:bilizen/data/api/search/suggest.dart' as _i692;
import 'package:bilizen/data/api/user/info.dart' as _i80;
import 'package:bilizen/data/api/video/info.dart' as _i501;
import 'package:bilizen/data/api/video/online.dart' as _i185;
import 'package:bilizen/data/api/video/recommend.dart' as _i174;
import 'package:bilizen/data/api/video/video_stream_url.dart' as _i1029;
import 'package:bilizen/data/storage/db/playing_list.dart' as _i1056;
import 'package:bilizen/data/storage/db/user_cache.dart' as _i93;
import 'package:bilizen/data/storage/db/video_cache.dart' as _i519;
import 'package:bilizen/data/storage/pref/playing_item.dart' as _i295;
import 'package:bilizen/data/storage/pref/setting/common.dart' as _i30;
import 'package:bilizen/data/storage/pref/wbi.dart' as _i408;
import 'package:bilizen/inject/dio.dart' as _i550;
import 'package:bilizen/inject/logger.dart' as _i489;
import 'package:bilizen/inject/object_box.dart' as _i1043;
import 'package:bilizen/inject/shared_preferences.dart' as _i383;
import 'package:bilizen/inject/smtc.dart' as _i788;
import 'package:bilizen/objectbox.g.dart' as _i740;
import 'package:bilizen/package/account_manager/account_manager.dart' as _i309;
import 'package:bilizen/package/auto_update_manager/auto_update_manager.dart'
    as _i275;
import 'package:bilizen/package/comment_manager.dart' as _i574;
import 'package:bilizen/package/fav_manager.dart' as _i817;
import 'package:bilizen/package/playback_manager/playback_controller.dart'
    as _i1071;
import 'package:bilizen/package/search_manager.dart' as _i397;
import 'package:bilizen/package/video_recommend.dart' as _i349;
import 'package:bilizen/package/window_state.dart' as _i592;
import 'package:bilizen/package/windows_router.dart' as _i659;
import 'package:bilizen/util/path_resolver.dart' as _i625;
import 'package:cookie_jar/cookie_jar.dart' as _i557;
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;
import 'package:smtc_windows/smtc_windows.dart' as _i591;
import 'package:talker/talker.dart' as _i993;
import 'package:talker_flutter/talker_flutter.dart' as _i207;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final persistCookieJarInjectable = _$PersistCookieJarInjectable();
    final loggerInjectable = _$LoggerInjectable();
    final objectBoxInjectable = _$ObjectBoxInjectable();
    final sharedPreferencesInjectable = _$SharedPreferencesInjectable();
    final smtcInjectable = _$SmtcInjectable();
    final dioInjectable = _$DioInjectable();
    gh.singleton<_i557.PersistCookieJar>(
      () => persistCookieJarInjectable.cookieJar,
    );
    gh.singleton<_i993.Talker>(() => loggerInjectable.talker);
    await gh.singletonAsync<_i740.Store>(
      () => objectBoxInjectable.store,
      preResolve: true,
    );
    await gh.singletonAsync<_i460.SharedPreferences>(
      () => sharedPreferencesInjectable.prefs,
      preResolve: true,
    );
    gh.singleton<_i591.SMTCWindows>(() => smtcInjectable.smtc);
    gh.singleton<_i659.WindowsRouter>(() => _i659.WindowsRouter());
    gh.singleton<_i592.WindowStateManager>(() => _i592.WindowStateManager());
    await gh.singletonAsync<_i625.PathResolver>(
      () => _i625.PathResolver.create(),
      preResolve: true,
    );
    gh.singleton<_i361.Dio>(
      () => dioInjectable.dio(gh<_i557.PersistCookieJar>(), gh<_i993.Talker>()),
    );
    gh.singleton<_i295.PlayingItemStorage>(
      () => _i295.PlayingItemStorage(gh<_i460.SharedPreferences>()),
    );
    gh.singleton<_i408.WbiStorage>(
      () => _i408.WbiStorage(gh<_i460.SharedPreferences>()),
    );
    gh.singleton<_i30.CommonSettingStorage>(
      () => _i30.CommonSettingStorage(gh<_i460.SharedPreferences>()),
    );
    gh.singleton<_i937.CommentListApi>(
      () => _i937.CommentListApi(gh<_i361.Dio>()),
    );
    gh.singleton<_i78.FavInfoApi>(() => _i78.FavInfoApi(gh<_i361.Dio>()));
    gh.singleton<_i158.FavListApi>(() => _i158.FavListApi(gh<_i361.Dio>()));
    gh.singleton<_i478.GithubUpdateApi>(
      () => _i478.GithubUpdateApi(gh<_i361.Dio>()),
    );
    gh.singleton<_i348.QrLoginApi>(() => _i348.QrLoginApi(gh<_i361.Dio>()));
    gh.singleton<_i1038.LoginInfoApi>(
      () => _i1038.LoginInfoApi(gh<_i361.Dio>()),
    );
    gh.singleton<_i61.SearchRequestApi>(
      () => _i61.SearchRequestApi(gh<_i361.Dio>()),
    );
    gh.singleton<_i692.SearchSuggestApi>(
      () => _i692.SearchSuggestApi(gh<_i361.Dio>()),
    );
    gh.singleton<_i80.UserInfoApi>(() => _i80.UserInfoApi(gh<_i361.Dio>()));
    gh.singleton<_i501.VideoApi>(() => _i501.VideoApi(gh<_i361.Dio>()));
    gh.singleton<_i185.VideoOnlineApi>(
      () => _i185.VideoOnlineApi(gh<_i361.Dio>()),
    );
    gh.singleton<_i174.VideoRecommendApi>(
      () => _i174.VideoRecommendApi(gh<_i361.Dio>()),
    );
    gh.singleton<_i1029.VideoStreamUrlApi>(
      () => _i1029.VideoStreamUrlApi(gh<_i361.Dio>()),
    );
    gh.singleton<_i1056.PlayListService>(
      () => _i1056.PlayListService(gh<_i740.Store>()),
    );
    gh.singleton<_i93.UserCacheService>(
      () => _i93.UserCacheService(gh<_i740.Store>()),
    );
    gh.singleton<_i519.VideoCacheService>(
      () => _i519.VideoCacheService(gh<_i740.Store>()),
    );
    gh.singleton<_i1071.PlaybackController>(
      () => _i1071.PlaybackController(talker: gh<_i207.Talker>()),
    );
    gh.singleton<_i574.CommentManager>(
      () => _i574.CommentManager(gh<_i937.CommentListApi>()),
    );
    gh.singleton<_i397.SearchManager>(
      () => _i397.SearchManager(
        gh<_i692.SearchSuggestApi>(),
        gh<_i61.SearchRequestApi>(),
      ),
    );
    gh.singleton<_i349.VideoRecommend>(
      () => _i349.VideoRecommend(gh<_i174.VideoRecommendApi>()),
    );
    gh.singleton<_i275.AutoUpdateManager>(
      () =>
          _i275.AutoUpdateManager(gh<_i478.GithubUpdateApi>(), gh<_i361.Dio>()),
    );
    gh.singleton<_i309.AccountManager>(
      () => _i309.AccountManager(
        gh<_i348.QrLoginApi>(),
        gh<_i1038.LoginInfoApi>(),
      ),
    );
    gh.singleton<_i817.FavManager>(
      () => _i817.FavManager(gh<_i158.FavListApi>()),
    );
    return this;
  }
}

class _$PersistCookieJarInjectable extends _i550.PersistCookieJarInjectable {}

class _$LoggerInjectable extends _i489.LoggerInjectable {}

class _$ObjectBoxInjectable extends _i1043.ObjectBoxInjectable {}

class _$SharedPreferencesInjectable extends _i383.SharedPreferencesInjectable {}

class _$SmtcInjectable extends _i788.SmtcInjectable {}

class _$DioInjectable extends _i550.DioInjectable {}
