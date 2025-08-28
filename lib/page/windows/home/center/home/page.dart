import 'package:bilizen/page/windows/home/center/home/provider.dart';
import 'package:bilizen/widget/auto_scale_grid_view.dart';
import 'package:bilizen/widget/video_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    final video = ref.watch(homePageProvider);
    return switch (video) {
      HomePageStateLoading() => Builder(
        builder: (context) {
          ref.read(homePageProvider.notifier).fetch();
          return const Center(
            child: RepaintBoundary(child: CircularProgressIndicator()),
          );
        },
      ),
      HomePageStateLoaded(videoInfo: final videoInfo) => AutoScaleGridView(
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
    };
  }
}
