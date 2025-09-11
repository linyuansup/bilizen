import 'package:bilizen/ui/windows/page/video/right_bar/info/provider.dart';
import 'package:bilizen/ui/windows/widget/bili_format_text.dart';
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
      VideoInfoStateLoading() => const _LoadingWidget(),
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

class _LoadingWidget extends StatelessWidget {
  const _LoadingWidget();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: RepaintBoundary(
        child: ProgressRing(),
      ),
    );
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

  static const _itemSpacing = SizedBox(height: 16);
  static const _contentPadding = EdgeInsets.fromLTRB(16, 8, 0, 8);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _StaffArea(staffs: staffs),
        Expanded(
          child: ScrollBarListView(
            itemCount: 3,
            padding: _contentPadding,
            itemBuilder: _buildItem,
          ),
        ),
      ],
    );
  }

  Widget? _buildItem(BuildContext context, int index) {
    return switch (index) {
      0 => _StatisticsCard(
        view: view,
        danmaku: danmaku,
        uploadTime: uploadTime,
        onlineUser: onlineUser,
      ),
      1 => _itemSpacing,
      2 => _DescriptionCard(description: description),
      _ => null,
    };
  }
}

class _StatisticsCard extends StatelessWidget {
  const _StatisticsCard({
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
    final theme = FluentTheme.of(context);

    return _CardContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(theme),
          const SizedBox(height: 12),
          _buildStatistics(theme),
        ],
      ),
    );
  }

  Widget _buildHeader(FluentThemeData theme) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('视频统计', style: theme.typography.bodyStrong),
        _UploadTimeChip(uploadTime: uploadTime),
      ],
    );
  }

  Widget _buildStatistics(FluentThemeData theme) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _StatisticItem(
          icon: FluentIcons.play,
          label: '播放',
          value: formatNumber(view),
          color: theme.accentColor,
        ),
        _StatisticItem(
          icon: FluentIcons.comment,
          label: '弹幕',
          value: formatNumber(danmaku),
          color: Colors.blue,
        ),
        _StatisticItem(
          icon: FluentIcons.user_event,
          label: '在线',
          value: onlineUser,
          color: Colors.green,
        ),
      ],
    );
  }
}

class _UploadTimeChip extends StatelessWidget {
  const _UploadTimeChip({required this.uploadTime});

  final int uploadTime;

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: theme.resources.subtleFillColorSecondary,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            FluentIcons.calendar,
            size: 10,
            color: theme.resources.textFillColorSecondary,
          ),
          const SizedBox(width: 6),
          Text(
            formatDate(uploadTime),
            style: theme.typography.caption?.copyWith(
              color: theme.resources.textFillColorSecondary,
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }
}

class _CardContainer extends StatelessWidget {
  const _CardContainer({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: theme.resources.cardBackgroundFillColorSecondary,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: theme.resources.cardStrokeColorDefault,
          width: 1,
        ),
      ),
      child: child,
    );
  }
}

class _StatisticItem extends StatelessWidget {
  const _StatisticItem({
    required this.icon,
    required this.label,
    required this.value,
    required this.color,
  });

  final IconData icon;
  final String label;
  final String value;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: color.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(6),
          ),
          child: Icon(
            icon,
            size: 16,
            color: color,
          ),
        ),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              value,
              style: theme.typography.bodyStrong,
            ),
            Text(
              label,
              style: theme.typography.caption?.copyWith(
                color: theme.resources.textFillColorSecondary,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _DescriptionCard extends StatelessWidget {
  const _DescriptionCard({required this.description});

  final String description;

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);

    return _CardContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _CardHeader(
            icon: FluentIcons.text_document,
            title: '视频简介',
          ),
          const SizedBox(height: 12),
          BiliFormatText(
            text: description,
            style: theme.typography.body?.copyWith(
              color: theme.resources.textFillColorPrimary,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}

class _CardHeader extends StatelessWidget {
  const _CardHeader({
    required this.icon,
    required this.title,
  });

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);

    return Row(
      children: [
        Icon(
          icon,
          size: 16,
          color: theme.resources.textFillColorSecondary,
        ),
        const SizedBox(width: 8),
        Text(title, style: theme.typography.bodyStrong),
      ],
    );
  }
}

class _StaffArea extends StatelessWidget {
  const _StaffArea({required this.staffs});

  final List<Staff> staffs;

  static const _staffAreaHeight = 90.0;
  static const _headerPadding = EdgeInsets.fromLTRB(16, 16, 0, 0);
  static const _staffListPadding = EdgeInsets.symmetric(horizontal: 16);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: _headerPadding,
          child: _CardHeader(
            icon: FluentIcons.people,
            title: 'UP主信息',
          ),
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: _staffAreaHeight,
          child: ScrollBarListView(
            scrollDirection: Axis.horizontal,
            itemCount: staffs.length,
            padding: _staffListPadding,
            itemBuilder: _buildStaffItem,
          ),
        ),
      ],
    );
  }

  Widget _buildStaffItem(BuildContext context, int index) {
    final staff = staffs[index];
    return Container(
      margin: const EdgeInsets.only(right: 16),
      child: _StaffCard(staff: staff),
    );
  }
}

class _StaffCard extends StatelessWidget {
  const _StaffCard({required this.staff});

  final Staff staff;

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: theme.resources.cardBackgroundFillColorSecondary,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: theme.resources.cardStrokeColorDefault,
          width: 1,
        ),
      ),
      child: Row(
        children: [
          _StaffAvatar(avatar: staff.avatar),
          const SizedBox(width: 12),
          _StaffInfo(name: staff.name, role: staff.role),
        ],
      ),
    );
  }
}

class _StaffAvatar extends StatelessWidget {
  const _StaffAvatar({required this.avatar});

  final String avatar;

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);

    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: theme.accentColor.withValues(alpha: 0.3),
          width: 2,
        ),
      ),
      child: CircleAvatar(
        radius: 20,
        backgroundImage: NetworkImage(avatar),
      ),
    );
  }
}

class _StaffInfo extends StatelessWidget {
  const _StaffInfo({
    required this.name,
    required this.role,
  });

  final String name;
  final String role;

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: theme.typography.bodyStrong,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 2),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
          decoration: BoxDecoration(
            color: theme.accentColor.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Text(
            role,
            style: theme.typography.caption?.copyWith(
              color: theme.accentColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
