import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/ui/windows/page/router.dart';
import 'package:bilizen/ui/windows/page/video/right_bar/comment/detail/page.dart';
import 'package:bilizen/ui/windows/page/video/right_bar/comment/list/page.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:go_router/go_router.dart';

final _router = GoRouter(
  navigatorKey: getIt<WindowsRouter>().videoComment.key,
  observers: [getIt<WindowsRouter>().videoComment.observer],
  initialLocation: "/list",
  routes: [
    GoRoute(
      path: "/list",
      name: "list",
      builder: (context, state) {
        return VideoCommentListPage();
      },
    ),
    GoRoute(
      path: "/detail",
      name: "detail",
      builder: (context, state) {
        return VideoCommentDetailPage();
      },
    ),
  ],
);

class VideoCommentPage extends StatelessWidget {
  const VideoCommentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Router.withConfig(config: _router);
  }
}
