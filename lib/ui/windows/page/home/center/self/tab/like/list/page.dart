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
        return _FavListItemData(data: data);
      },
    );
  }
}

class _FavListItemData extends ConsumerWidget {
  const _FavListItemData({
    required this.data,
  });

  final List<VideoCardData> data;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      children: [
        AutoScaleGridView(
          itemSize: const Size(300, 266),
          onBottom: () async {
            await ref.read(favDataProvider.notifier).next();
          },
          children: data.map((video) {
            return VideoCard(
              video: video,
            );
          }).toList(),
        ),
        Positioned(
          top: 16,
          right: 16,
          child: RepaintBoundary(
            child: Button(
              onPressed: () async {
                final result = await showDialog<bool>(
                  context: context,
                  builder: (context) => ContentDialog(
                    title: const Text('警告'),
                    content: const Text(
                      '该操作将对 API 进行大量请求，可能导致账号被短暂 412 风控，继续吗？',
                    ),
                    actions: [
                      Button(
                        child: const Text('继续'),
                        onPressed: () {
                          Navigator.pop(context, true);
                        },
                      ),
                      FilledButton(
                        child: const Text('取消'),
                        onPressed: () => Navigator.pop(context, false),
                      ),
                    ],
                  ),
                );
                if (result == true) {
                  await ref.read(favDataProvider.notifier).addAll();
                }
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(FluentIcons.add),
                  SizedBox(width: 4),
                  Text('全部添加'),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
