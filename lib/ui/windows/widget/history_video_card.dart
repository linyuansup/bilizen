import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/model/history_video.dart';
import 'package:bilizen/model/play_item.dart';
import 'package:bilizen/model/video.dart';
import 'package:bilizen/package/playback_manager/playback_controller.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:fluent_ui/fluent_ui.dart';

const _kAspectRatio = 16 / 10;
const _kBorderRadius = 8.0;
const _kPadding = 8.0;
const _kAvatarSize = 17.0;
const _kAvatarSpacing = 6.0;

class HistoryVideoCardData {
  HistoryVideoCardData({
    required this.title,
    required this.cover,
    required this.uploader,
    required this.uploaderAvatar,
    required this.totalDuration,
    required this.bvid,
    required this.uid,
    required this.viewAt,
    required this.process,
  });

  final String title;
  final String uploader;
  final String cover;
  final String uploaderAvatar;
  final int uid;
  final int process;
  final int viewAt;
  final String bvid;
  final int totalDuration;

  static Future<HistoryVideoCardData> fromHistoryVideo(
    HistoryVideo historyVideo,
  ) async {
    final uploader = await historyVideo.video.uploader;
    return HistoryVideoCardData(
      uid: uploader.id,
      title: await historyVideo.video.title,
      bvid: historyVideo.video.bid,
      cover: await historyVideo.video.cover,
      uploaderAvatar: await uploader.avatar,
      uploader: await uploader.nickName,
      totalDuration: await historyVideo.video.totalDuration,
      viewAt: historyVideo.viewTime,
      process: historyVideo.process,
    );
  }
}

class _VideoCover extends StatelessWidget {
  const _VideoCover({
    required this.imageUrl,
    required this.duration,
  });

  final String imageUrl;
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

class HistoryVideoCard extends StatelessWidget {
  const HistoryVideoCard({super.key, required this.video});

  final HistoryVideoCardData video;

  @override
  Widget build(BuildContext context) {
    return HoverButton(
      onPressed: () async {
        await getIt<PlaybackController>().addPlayItem(
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
