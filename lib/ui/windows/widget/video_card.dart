import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/model/play_item.dart';
import 'package:bilizen/model/video.dart';
import 'package:bilizen/package/playback_manager/playback_manager.dart';
import 'package:bilizen/util/string.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:fluent_ui/fluent_ui.dart';

const _kAspectRatio = 16 / 10;
const _kBorderRadius = 8.0;
const _kPadding = 8.0;
const _kIconSize = 16.0;
const _kAvatarSize = 17.0;
const _kAvatarSpacing = 6.0;

class VideoCardData {
  VideoCardData({
    required this.title,
    required this.cover,
    required this.viewCount,
    required this.uploader,
    required this.uploaderAvatar,
    required this.danmakuCount,
    required this.totalDuration,
    required this.bvid,
  });

  final String title;
  final String uploader;
  final String cover;
  final String uploaderAvatar;
  final int viewCount;
  final int danmakuCount;
  final String bvid;
  final int totalDuration;

  static Future<VideoCardData> fromVideo(Video video) async {
    final uploader = await video.uploader;
    return VideoCardData(
      title: await video.title,
      bvid: video.bid,
      cover: await video.cover,
      uploaderAvatar: await uploader.avatar,
      viewCount: await video.view,
      uploader: await uploader.nickName,
      danmakuCount: await video.danmaku,
      totalDuration: await video.totalDuration,
    );
  }
}

class _VideoCover extends StatelessWidget {
  const _VideoCover({
    required this.imageUrl,
    required this.viewCount,
    required this.danmakuCount,
    required this.duration,
  });

  final String imageUrl;
  final int viewCount;
  final int danmakuCount;
  final int duration;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AspectRatio(
          aspectRatio: _kAspectRatio,
          child: CachedNetworkImage(
            imageUrl: imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: _VideoStats(
            viewCount: viewCount,
            danmakuCount: danmakuCount,
            duration: duration,
          ),
        ),
      ],
    );
  }
}

class _VideoStats extends StatelessWidget {
  const _VideoStats({
    required this.viewCount,
    required this.danmakuCount,
    required this.duration,
  });

  final int viewCount;
  final int danmakuCount;
  final int duration;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: AlignmentDirectional.bottomCenter,
          end: AlignmentDirectional.topCenter,
          colors: [
            Colors.black.withValues(alpha: 0.7),
            Colors.transparent,
          ],
        ),
      ),
      padding: const EdgeInsets.all(_kPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              _StatItem(
                icon: FluentIcons.play,
                value: formatNumber(viewCount),
              ),
              const SizedBox(width: 12),
              _StatItem(
                icon: FluentIcons.comment,
                value: formatNumber(danmakuCount),
              ),
            ],
          ),
          Text(
            formatDuration(duration),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}

class _StatItem extends StatelessWidget {
  const _StatItem({
    required this.icon,
    required this.value,
  });

  final IconData icon;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: _kIconSize,
        ),
        const SizedBox(width: 4),
        Text(
          value,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

class UploaderInfo extends StatelessWidget {
  const UploaderInfo({
    super.key,
    required this.avatar,
    required this.name,
  });

  final String avatar;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipOval(
          child: RepaintBoundary(
            child: CachedNetworkImage(
              imageUrl: avatar,
              width: _kAvatarSize,
              height: _kAvatarSize,
            ),
          ),
        ),
        SizedBox(width: _kAvatarSpacing),
        Text(
          name,
          style: FluentTheme.of(context).typography.caption?.copyWith(
            color: FluentTheme.of(context).resources.textFillColorSecondary,
          ),
        ),
      ],
    );
  }
}

class VideoCard extends StatelessWidget {
  const VideoCard({super.key, required this.video});

  final VideoCardData video;

  @override
  Widget build(BuildContext context) {
    return HoverButton(
      onPressed: () async {
        await getIt<PlaybackManager>().addPlayItem(
          PlayItem(video: Video(bid: video.bvid), pIndex: 1),
        );
      },
      builder: (context, states) {
        return Acrylic(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(_kBorderRadius),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(_kBorderRadius),
              child: Card(
                backgroundColor: states.isHovered
                    ? FluentTheme.of(
                        context,
                      ).resources.cardBackgroundFillColorSecondary
                    : FluentTheme.of(
                        context,
                      ).resources.cardBackgroundFillColorDefault,
                padding: EdgeInsets.zero,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _VideoCover(
                      imageUrl: video.cover,
                      viewCount: video.viewCount,
                      danmakuCount: video.danmakuCount,
                      duration: video.totalDuration,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(_kPadding),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            video.title,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: FluentTheme.of(context).typography.body,
                          ),
                          const SizedBox(height: 4),
                          UploaderInfo(
                            avatar: video.uploaderAvatar,
                            name: video.uploader,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
