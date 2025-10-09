import 'package:bilizen/ui/windows/page/home/center/self/tab/like/list/fav_data_provider.dart';
import 'package:bilizen/ui/windows/page/home/center/self/tab/like/list/page.dart';
import 'package:bilizen/ui/windows/page/home/center/self/tab/like/list_provider.dart';
import 'package:bilizen/ui/windows/widget/tab_bar.dart';
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
              final int? id;
              if (selectedIndex >= 0 && selectedIndex < items.length) {
                id = items.elementAtOrNull(selectedIndex)?.id;
              } else {
                id = null;
              }
              ref.invalidate(favDataProvider);
              return RepaintBoundary(child: FavListPage(id: id));
            },
          ),
        ),
      ],
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
