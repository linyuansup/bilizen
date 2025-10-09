import 'package:bilizen/package/router_observer/current_route_manager.dart';
import 'package:fluent_ui/fluent_ui.dart';

class RouterObserver extends NavigatorObserver {
  final CurrentRouteManager _manager;

  RouterObserver(this._manager);

  @override
  void didPush(Route route, Route? previousRoute) {
    super.didPush(route, previousRoute);
    _manager.pushState(route);
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    super.didPop(route, previousRoute);
    _manager.pushState(route);
  }

  @override
  void didChangeTop(Route topRoute, Route? previousTopRoute) {
    super.didChangeTop(topRoute, previousTopRoute);
    _manager.pushState(topRoute);
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    super.didRemove(route, previousRoute);
    _manager.pushState(route);
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    _manager.pushState(newRoute);
  }
}
