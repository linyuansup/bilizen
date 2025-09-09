import 'package:bilizen/ui/windows/page/video/right_bar/comment/page.dart';
import 'package:bilizen/ui/windows/page/video/right_bar/info/page.dart';
import 'package:bilizen/ui/windows/page/video/right_bar/provider.dart';
import 'package:bilizen/ui/windows/page/video/right_bar/recommand/page.dart';
import 'package:bilizen/ui/windows/widget/tab.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RightArea extends ConsumerWidget {
  const RightArea({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(rightBarProvider);
    return RepaintBoundary(
      child: FluentTab(
        currentIndex: state.page.index,
        tabs: [
          FluentTabItem(
            label: "简介",
            body: VideoInfoArea(),
            icon: FluentIcons.info,
          ),
          FluentTabItem(
            label: "评论",
            body: VideoCommentArea(),
            icon: FluentIcons.comment,
          ),
          FluentTabItem(
            label: "推荐",
            body: VideoInnerRecommendPage(),
            icon: FluentIcons.like,
          ),
        ],
        onChanged: (index) {
          ref.read(rightBarProvider.notifier).page =
              VideoRightBarPage.values[index];
        },
      ),
    );
  }
}
