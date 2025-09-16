import 'package:bilizen/ui/windows/page/home/center/self/tab/like/list/fav_data_provider.dart';
import 'package:bilizen/ui/windows/widget/auto_scale_grid_view.dart';
import 'package:bilizen/ui/windows/widget/video_card.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nil/nil.dart';

class FavListPage extends StatelessWidget {
  const FavListPage({super.key, required this.id});

  final int? id;

  @override
  Widget build(BuildContext context) {
    if (id == null) {
      return nil;
    }
    return _FavListItem(id: id);
  }
}

class _FavListItem extends ConsumerWidget {
  const _FavListItem({
    required this.id,
  });

  final int? id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(favDataProvider);
    return state.when(
      loading: () {
        if (id != null) {
          ref.read(favDataProvider.notifier).load(id!);
        }
        return const Center(
          child: RepaintBoundary(child: ProgressRing()),
        );
      },
      success: (data) {
        return AutoScaleGridView(
          itemSize: const Size(300, 266),
          onBottom: () async {
            await ref.read(favDataProvider.notifier).next();
          },
          children: data.map((video) {
            return VideoCard(
              video: video,
            );
          }).toList(),
        );
      },
    );
  }
}
