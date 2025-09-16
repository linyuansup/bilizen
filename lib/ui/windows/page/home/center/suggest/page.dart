import 'package:bilizen/ui/windows/page/home/center/suggest/provider.dart';
import 'package:bilizen/ui/windows/widget/auto_scale_grid_view.dart';
import 'package:bilizen/ui/windows/widget/video_card.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SuggestPage extends ConsumerWidget {
  const SuggestPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final video = ref.watch(homePageProvider);
    return video.when(
      loading: () {
        ref.read(homePageProvider.notifier).fetch();
        return const Center(
          child: RepaintBoundary(child: ProgressRing()),
        );
      },
      loaded: (videoInfo) => AutoScaleGridView(
        itemSize: const Size(300, 266),
        onBottom: () async {
          await ref.read(homePageProvider.notifier).fetch();
        },
        children: videoInfo.map((video) {
          return VideoCard(
            video: video,
          );
        }).toList(),
      ),
    );
  }
}
