import 'package:bilizen/package/router_observer/current_route_manager.dart';
import 'package:bilizen/package/router_observer/router_observer.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

class RouterInformation {
  final GlobalKey<NavigatorState> key;
  late final RouterObserver observer = RouterObserver(_manager);
  final _manager = CurrentRouteManager();

  RouterInformation(String name)
    : key = GlobalKey<NavigatorState>(debugLabel: name);

  BuildContext get context => key.currentContext!;

  BehaviorSubject<GoRouter> get currentPage => _manager.stream;
}

@singleton
class WindowsRouter {
  final main = RouterInformation("main");
  final video = RouterInformation("video");
  final home = RouterInformation("home");
  final videoComment = RouterInformation("video_comment");
}
