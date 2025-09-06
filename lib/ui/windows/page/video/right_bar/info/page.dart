import 'package:bilizen/ui/windows/page/video/right_bar/info/provider.dart';
import 'package:bilizen/ui/windows/widget/at_format_text.dart';
import 'package:bilizen/ui/windows/widget/scroll_bar_list_view.dart';
import 'package:bilizen/util/string.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class VideoInfoArea extends ConsumerWidget {
  const VideoInfoArea({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(videoInfoProvider);
    return switch (provider) {
      VideoInfoStateLoading() => Center(
        child: RepaintBoundary(
          child: ProgressRing(),
        ),
      ),
      VideoInfoStateLoaded(
        :final staffs,
        :final view,
        :final danmaku,
        :final uploadTime,
        :final onlineUser,
        :final description,
      ) =>
        _VideoInfoAreaContent(
          staffs: staffs,
          view: view,
          danmaku: danmaku,
          uploadTime: uploadTime,
          onlineUser: onlineUser,
          description: description,
        ),
    };
  }
}

class _VideoInfoAreaContent extends StatelessWidget {
  const _VideoInfoAreaContent({
    required this.staffs,
    required this.view,
    required this.danmaku,
    required this.uploadTime,
    required this.onlineUser,
    required this.description,
  });

  final List<Staff> staffs;
  final int view;
  final int danmaku;
  final int uploadTime;
  final String onlineUser;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _StaffArea(staffs: staffs),
        Expanded(
          child: ListView.builder(
            itemCount: 2,
            itemBuilder: (context, index) {
              switch (index) {
                case 0:
                  return _CountArea(
                    view: view,
                    danmaku: danmaku,
                    uploadTime: uploadTime,
                    onlineUser: onlineUser,
                  );
                case 1:
                  return _DescriptionArea(
                    description: description,
                  );
                default:
                  return const SizedBox();
              }
            },
          ),
        ),
      ],
    );
  }
}

class _DescriptionArea extends StatelessWidget {
  const _DescriptionArea({
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: AtFormatText(
        text: description,
        style: TextStyle(
          color: FluentTheme.of(context).resources.textFillColorSecondary,
        ),
      ),
    );
  }
}

class _CountArea extends StatelessWidget {
  const _CountArea({
    required this.view,
    required this.danmaku,
    required this.uploadTime,
    required this.onlineUser,
  });

  final int view;
  final int danmaku;
  final int uploadTime;
  final String onlineUser;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Row(
        spacing: 8,
        children: [
          Icon(
            FluentIcons.play,
            size: 14,
            color: FluentTheme.of(context).resources.textFillColorSecondary,
          ),
          Text(
            formatNumber(view),
            style: TextStyle(
              color: FluentTheme.of(context).resources.textFillColorSecondary,
            ),
          ),
          Icon(
            FluentIcons.comment,
            size: 14,
            color: FluentTheme.of(context).resources.textFillColorSecondary,
          ),
          Text(
            formatNumber(danmaku),
            style: TextStyle(
              color: FluentTheme.of(context).resources.textFillColorSecondary,
            ),
          ),
          Text(
            formatDate(uploadTime),
            style: TextStyle(
              color: FluentTheme.of(context).resources.textFillColorSecondary,
            ),
          ),
          Icon(
            FluentIcons.user_event,
            size: 14,
            color: FluentTheme.of(context).resources.textFillColorSecondary,
          ),
          Text(
            onlineUser,
            style: TextStyle(
              color: FluentTheme.of(context).resources.textFillColorSecondary,
            ),
          ),
        ],
      ),
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
