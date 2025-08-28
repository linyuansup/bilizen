import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

@singleton
@preResolve
class PathResolver {
  final String _basePath;

  @factoryMethod
  static Future<PathResolver> create() async {
    final instance = PathResolver._(
      basePath: (await getApplicationSupportDirectory()).path,
    );
    return instance;
  }

  PathResolver._({required String basePath}) : _basePath = basePath;

  String get settings => '$_basePath/settings';
}
