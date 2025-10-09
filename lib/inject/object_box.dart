import 'package:bilizen/objectbox.g.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

late Admin admin;

@module
abstract class ObjectBoxInjectable {
  @singleton
  @preResolve
  Future<Store> get store async {
    final dir = await getApplicationSupportDirectory();
    final store = await openStore(
      directory: "${dir.path}/objectbox",
    );
    if (Admin.isAvailable()) {
      admin = Admin(store);
    }
    return store;
  }
}
