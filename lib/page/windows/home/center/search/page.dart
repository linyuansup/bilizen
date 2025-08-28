import 'package:bilizen/page/windows/home/center/search/provider.dart';
import 'package:bilizen/widget/auto_scale_grid_view.dart';
import 'package:bilizen/widget/video_card.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchPage extends ConsumerWidget {
  const SearchPage({super.key, required this.keyword});

  final String keyword;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(searchPageProvider);
    return switch (provider) {
      SearchPageStateLoading() => Builder(
        builder: (context) {
          ref.read(searchPageProvider.notifier).load(keyword);
          return const Center(
            child: RepaintBoundary(child: ProgressRing()),
          );
        },
      ),
      SearchPageStateLoaded(:final results) => _SearchResultArea(
        keyword,
        results,
      ),
    };
  }
}

class _SearchResultArea extends ConsumerWidget {
  const _SearchResultArea(this.keyword, this.results);

  final List<VideoCardData> results;
  final String keyword;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AutoScaleGridView(
      itemSize: const Size(300, 266),
      onBottom: () async {
        await ref.read(searchPageProvider.notifier).next();
      },
      children: results.map((video) {
        return VideoCard(
          video: video,
        );
      }).toList(),
    );
  }
}
