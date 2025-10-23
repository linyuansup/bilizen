import 'package:bilizen/ui/windows/page/home/center/self/tab/history/provider.dart';
import 'package:bilizen/ui/windows/widget/auto_scale_grid_view.dart';
import 'package:bilizen/ui/windows/widget/history_video_card.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluent_ui/fluent_ui.dart';

class HistoryPage extends ConsumerWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(historyProvider);
    return state.when(
      loading: () {
        ref.read(historyProvider.notifier).fetch();
        return const Center(
          child: RepaintBoundary(child: ProgressRing()),
        );
      },
      loaded: (data) {
        return _HistoryPageData(data: data);
      },
    );
  }
}

class _HistoryPageData extends StatelessWidget {
  const _HistoryPageData({required this.data});

  final List<HistoryVideoCardData> data;

  @override
  Widget build(BuildContext context) {
    return AutoScaleGridView(
      itemSize: const Size(300, 266),
      children: data.map((video) {
        return HistoryVideoCard(video: video);
      }).toList(),
    );
  }
}
