import 'package:bilizen/ui/windows/page/video/right_bar/info/provider.dart';
import 'package:bilizen/ui/windows/widget/scroll_bar_list_view.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class VideoInfoArea extends StatelessWidget {
  const VideoInfoArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _BasicInfoArea(),
        Expanded(child: _RecommendArea()),
      ],
    );
  }
}

class _RecommendArea extends ConsumerWidget {
  const _RecommendArea();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Placeholder();
  }
}

class _BasicInfoArea extends ConsumerWidget {
  const _BasicInfoArea();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(
      videoInfoProvider.select(
        (value) => value.basicInfo,
      ),
    );
    return switch (provider) {
      VideoBasicInfoLoading() => Center(
        child: RepaintBoundary(
          child: ProgressRing(),
        ),
      ),
      VideoBasicInfoLoaded(
        :final staffs,
        :final view,
        :final danmaku,
        :final uploadTime,
        :final onlineUser,
      ) =>
        _BasicInfoContent(
          staffs: staffs,
          view: view,
          danmaku: danmaku,
          uploadTime: uploadTime,
          onlineUser: onlineUser,
        ),
    };
  }
}

class _BasicInfoContent extends StatelessWidget {
  const _BasicInfoContent({
    required this.staffs,
    required this.view,
    required this.danmaku,
    required this.uploadTime,
    required this.onlineUser,
  });

  final List<Staff> staffs;
  final int view;
  final int danmaku;
  final int uploadTime;
  final String onlineUser;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _StaffArea(staffs: staffs),
      ],
    );
  }
}

class _StaffArea extends StatelessWidget {
  const _StaffArea({required this.staffs});

  final List<Staff> staffs;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ScrollBarListView(
        scrollDirection: Axis.horizontal,
        itemCount: staffs.length,
        padding: EdgeInsets.all(8),
        itemBuilder: (context, index) {
          final staff = staffs[index];
          return Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              spacing: 6,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(staff.avatar),
                ),
                Column(
                  spacing: 4,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(staff.name),
                    Text(
                      staff.role,
                      style: FluentTheme.of(context).typography.caption
                          ?.copyWith(
                            color: FluentTheme.of(
                              context,
                            ).resources.textFillColorSecondary,
                          ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
