import 'package:bilizen/ui/windows/page/video/right_bar/comment/page.dart';
import 'package:bilizen/ui/windows/page/video/right_bar/info/page.dart';
import 'package:bilizen/ui/windows/page/video/right_bar/provider.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RightArea extends ConsumerWidget {
  const RightArea({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(rightBarProvider);
    return TabView(
      currentIndex: state.page.index,
      tabs: [
        Tab(text: Text("简介"), body: VideoInfoArea()),
        Tab(text: Text("评论"), body: VideoCommentArea()),
      ],
      onChanged: (index) {
        ref.read(rightBarProvider.notifier).page =
            VideoRightBarPage.values[index];
      },
    );
  }
}
