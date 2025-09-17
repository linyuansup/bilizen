import 'package:bilizen/objectbox.g.dart';
import 'package:injectable/injectable.dart';

late Admin admin;

@module
abstract class ObjectBoxInjectable {
  @singleton
  @preResolve
  Future<Store> get store async {
    final store = await openStore();
    if (Admin.isAvailable()) {
      admin = Admin(store);
    }
    return store;
  }
}
