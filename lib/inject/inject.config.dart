// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:bilizen/data/api/login/login_action/qr.dart' as _i348;
import 'package:bilizen/data/api/login/login_info.dart' as _i1038;
import 'package:bilizen/data/api/search/request.dart' as _i61;
import 'package:bilizen/data/api/search/suggest.dart' as _i692;
import 'package:bilizen/data/api/user/info.dart' as _i80;
import 'package:bilizen/data/api/video/info.dart' as _i501;
import 'package:bilizen/data/api/video/online.dart' as _i185;
import 'package:bilizen/data/api/video/recommend.dart' as _i174;
import 'package:bilizen/data/api/video/video_stream_url.dart' as _i1029;
import 'package:bilizen/data/logic/account_manager/account_manager.dart'
    as _i825;
import 'package:bilizen/data/logic/search/search_manager.dart' as _i671;
import 'package:bilizen/data/logic/video_recommend/video_recommend.dart'
    as _i829;
import 'package:bilizen/data/logic/window_state.dart' as _i1071;
import 'package:bilizen/data/storage/wbi.dart' as _i89;
import 'package:bilizen/inject/dio.dart' as _i550;
import 'package:bilizen/inject/logger.dart' as _i489;
import 'package:bilizen/inject/shared_preferences.dart' as _i383;
import 'package:bilizen/package/playback_manager/playback_manager.dart'
    as _i907;
import 'package:bilizen/ui/windows/router.dart' as _i130;
import 'package:bilizen/util/path_resolver.dart' as _i625;
import 'package:cookie_jar/cookie_jar.dart' as _i557;
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;
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
    final sharedPreferencesInjectable = _$SharedPreferencesInjectable();
    final dioInjectable = _$DioInjectable();
    gh.singleton<_i1071.WindowStateManager>(() => _i1071.WindowStateManager());
    gh.singleton<_i557.PersistCookieJar>(
      () => persistCookieJarInjectable.cookieJar,
    );
    gh.singleton<_i993.Talker>(() => loggerInjectable.talker);
    await gh.singletonAsync<_i460.SharedPreferences>(
      () => sharedPreferencesInjectable.prefs,
      preResolve: true,
    );
    await gh.singletonAsync<_i625.PathResolver>(
      () => _i625.PathResolver.create(),
      preResolve: true,
    );
    gh.singleton<_i130.WindowsAppRouter>(() => _i130.WindowsAppRouter());
    gh.singleton<_i361.Dio>(
      () => dioInjectable.dio(gh<_i557.PersistCookieJar>(), gh<_i993.Talker>()),
    );
    gh.singleton<_i89.WbiStorage>(
      () => _i89.WbiStorage(gh<_i460.SharedPreferences>()),
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
    gh.singleton<_i907.PlaybackManager>(
      () => _i907.PlaybackManager(talker: gh<_i207.Talker>()),
    );
    gh.singleton<_i671.SearchManager>(
      () => _i671.SearchManager(
        gh<_i692.SearchSuggestApi>(),
        gh<_i61.SearchRequestApi>(),
      ),
    );
    gh.singleton<_i829.VideoRecommend>(
      () => _i829.VideoRecommend(gh<_i174.VideoRecommendApi>()),
    );
    gh.singleton<_i825.AccountManager>(
      () => _i825.AccountManager(
        gh<_i348.QrLoginApi>(),
        gh<_i1038.LoginInfoApi>(),
      ),
    );
    return this;
  }
}

class _$PersistCookieJarInjectable extends _i550.PersistCookieJarInjectable {}

class _$LoggerInjectable extends _i489.LoggerInjectable {}

class _$SharedPreferencesInjectable extends _i383.SharedPreferencesInjectable {}

class _$DioInjectable extends _i550.DioInjectable {}
