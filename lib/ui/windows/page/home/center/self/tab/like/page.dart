import 'package:bilizen/ui/windows/page/home/center/self/tab/like/fav_data_provider.dart';
import 'package:bilizen/ui/windows/page/home/center/self/tab/like/list_provider.dart';
import 'package:bilizen/ui/windows/widget/auto_scale_grid_view.dart';
import 'package:bilizen/ui/windows/widget/tab_bar.dart';
import 'package:bilizen/ui/windows/widget/video_card.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LikePage extends ConsumerWidget {
  const LikePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(likeListProviderProvider);
    return state.when(
      loading: () {
        ref.read(likeListProviderProvider.notifier).fetch();
        return const Center(child: RepaintBoundary(child: ProgressRing()));
      },
      success: (items, selectedIndex) =>
          _LikeContent(items: items, selectedIndex: selectedIndex),
    );
  }
}

class _LikeContent extends StatelessWidget {
  const _LikeContent({
    required this.items,
    required this.selectedIndex,
  });

  final List<LikeListItem> items;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _FavListArea(items: items, selectedIndex: selectedIndex),
        Expanded(
          child: Consumer(
            builder: (context, ref, child) {
              Future.delayed(Duration.zero, () {
                ref.read(favDataProvider.notifier).reset();
              });
              return _FavListContentArea(favId: items[selectedIndex].id);
            },
          ),
        ),
      ],
    );
  }
}

class _FavListContentArea extends ConsumerWidget {
  const _FavListContentArea({required this.favId});

  final int favId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(favDataProvider);
    return state.when(
      loading: () {
        ref.read(favDataProvider.notifier).load(favId);
        return const Center(child: RepaintBoundary(child: ProgressRing()));
      },
      success: (items) {
        return _FavListContentData(items: items);
      },
    );
  }
}

class _FavListContentData extends StatelessWidget {
  const _FavListContentData({
    required this.items,
  });

  final List<VideoCardData> items;

  @override
  Widget build(BuildContext context) {
    if (items.isEmpty) {
      return const Center(
        child: Text("收藏夹为空"),
      );
    }
    return Consumer(
      builder: (_, WidgetRef ref, __) {
        return AutoScaleGridView(
          itemSize: const Size(300, 266),
          onBottom: () async {
            await ref.read(favDataProvider.notifier).next();
          },
          children: items.map((video) {
            return VideoCard(
              video: video,
            );
          }).toList(),
        );
      },
    );
  }
}

class _FavListArea extends ConsumerWidget {
  const _FavListArea({required this.items, required this.selectedIndex});

  final List<LikeListItem> items;
  final int selectedIndex;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FluentTabBar(
      axis: Axis.vertical,
      selectedIndex: selectedIndex,
      padding: EdgeInsets.only(bottom: 90),
      onTap: (value) {
        ref.read(likeListProviderProvider.notifier).selectedIndex = value;
      },
      items: [
        for (final item in items)
          FluentTabBarItem(
            label: item.name,
          ),
      ],
    );
  }
}
