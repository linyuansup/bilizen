import 'package:fluent_ui/fluent_ui.dart';
import 'package:go_router/go_router.dart';
import 'package:rxdart/rxdart.dart';

class CurrentRouteManager {
  void pushState(Route? route) {
    if (route == null) {
      return;
    }
    final navigator = route.navigator;
    if (navigator == null) {
      return;
    }
    final router = GoRouter.maybeOf(navigator.context);
    if (router == null) {
      return;
    }
    stream.add(router);
  }

  final stream = BehaviorSubject<GoRouter>();
}
