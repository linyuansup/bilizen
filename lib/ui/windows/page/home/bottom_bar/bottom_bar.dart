import 'package:bilizen/package/playback_manager/playback_manager.dart';
import 'package:bilizen/ui/windows/page/home/bottom_bar/provider.dart';
import 'package:bilizen/ui/windows/widget/video_card.dart';
import 'package:bilizen/util/string.dart';
import 'package:bilizen/util/toastification.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Acrylic(
      child: SizedBox(
        height: 70,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 8,
          ),
          child: _BottomBarContent(),
        ),
      ),
    );
  }
}

class _BottomBarContent extends StatelessWidget {
  const _BottomBarContent();

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: Row(
        children: [
          _CoverArea(),
          const SizedBox(width: 12),
          _InfoArea(),
          const SizedBox(width: 12),
          _ControlArea(),
          const SizedBox(width: 12),
          _MoreControlArea(),
        ],
      ),
    );
  }
}

class _InfoArea extends ConsumerWidget {
  const _InfoArea();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var state = ref.watch(bottomBarProvider);
    if (state is BottomBarStateNotPlaying) {
      return SizedBox(width: 300);
    }
    state = state as BottomBarStatePlaying;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 300,
          height: 20,
          child: RepaintBoundary(
            child: Text(
              state.video.title,
              style: FluentTheme.of(context).typography.body,
            ),
          ),
        ),
        SizedBox(height: 4),
        RepaintBoundary(
          child: UploaderInfo(
            avatar: state.video.uploaderAvatar,
            name: state.video.uploader,
          ),
        ),
      ],
    );
  }
}

class _CoverArea extends ConsumerWidget {
  const _CoverArea();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var state = ref.watch(bottomBarProvider);
    if (state is BottomBarStateNotPlaying) {
      return SizedBox(width: 96);
    }
    state = state as BottomBarStatePlaying;
    return GestureDetector(
      onTap: () async {
        await context.pushNamed("video");
      },
      child: RepaintBoundary(
        child: CachedNetworkImage(
          width: 96,
          imageUrl: state.video.cover,
        ),
      ),
    );
  }
}

class _ControlArea extends StatelessWidget {
  const _ControlArea();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 400),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                spacing: 12,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Consumer(
                    builder: (context, ref, child) {
                      return _buildControlButton(
                        FluentIcons.previous,
                        () async {
                          await ref.read(bottomBarProvider.notifier).previous();
                        },
                      );
                    },
                  ),
                  _PlayButton(),
                  Consumer(
                    builder: (context, ref, child) {
                      return _buildControlButton(FluentIcons.next, () async {
                        await ref.read(bottomBarProvider.notifier).next();
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(height: 6),
              Row(
                spacing: 12,
                children: [
                  RepaintBoundary(child: _StartTime()),
                  Expanded(
                    child: RepaintBoundary(
                      child: _SlideArea(),
                    ),
                  ),
                  RepaintBoundary(child: _EndTime()),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildControlButton(IconData icon, VoidCallback onPressed) {
    return RepaintBoundary(
      child: IconButton(
        icon: Icon(icon),
        onPressed: onPressed,
      ),
    );
  }
}

class _PlayButton extends ConsumerWidget {
  const _PlayButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(bottomBarProvider);
    IconData icon;
    if (provider is BottomBarStateNotPlaying) {
      icon = FluentIcons.play;
    } else {
      provider as BottomBarStatePlaying;
      if (provider.isPlaying) {
        icon = FluentIcons.pause;
      } else {
        icon = FluentIcons.play;
      }
    }
    return RepaintBoundary(
      child: IconButton(
        icon: Icon(icon),
        onPressed: () async {
          await ref.read(bottomBarProvider.notifier).changePlaying();
        },
      ),
    );
  }
}

class _SlideArea extends ConsumerWidget {
  const _SlideArea();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(bottomBarProvider);
    if (provider is BottomBarStatePlaying) {
      return Slider(
        min: 0,
        max: provider.video.duration.toDouble(),
        value: provider.process.toDouble(),
        onChanged: (value) {
          ref.read(bottomBarProvider.notifier).seek(value.toInt());
        },
      );
    }
    return Slider(
      value: 0,
      onChanged: null,
    );
  }
}

class _EndTime extends ConsumerWidget {
  const _EndTime();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(bottomBarProvider);
    if (provider is BottomBarStatePlaying) {
      return Text(formatDuration(provider.video.duration));
    }
    return Text("00:00");
  }
}

class _StartTime extends ConsumerWidget {
  const _StartTime();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(bottomBarProvider);
    if (provider is BottomBarStatePlaying) {
      return RepaintBoundary(child: Text(formatDuration(provider.process)));
    }
    return Text("00:00");
  }
}

class _MoreControlArea extends StatelessWidget {
  const _MoreControlArea();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      spacing: 8,
      children: [
        Consumer(
          builder: (context, ref, child) {
            return _buildMoreControlButton(FluentIcons.link, () async {
              await ref.read(bottomBarProvider.notifier).copyLink();
              Toast.success("链接已复制");
            });
          },
        ),
        Consumer(
          builder: (context, ref, child) {
            final switchMode = ref.watch(
              bottomBarProvider.select((state) => state.switchMode),
            );
            final IconData logo;
            if (switchMode == SwitchMode.random) {
              logo = FluentIcons.remote;
            } else if (switchMode == SwitchMode.repeat) {
              logo = FluentIcons.repeat_one;
            } else {
              logo = FluentIcons.repeat_all;
            }
            return _buildMoreControlButton(logo, () {
              ref.read(bottomBarProvider.notifier).changePlayMode();
            });
          },
        ),
        Consumer(
          builder: (context, ref, child) {
            return Consumer(
              builder: (context, ref, child) {
                final volume = ref.watch(
                  bottomBarProvider.select((state) => state.volume),
                );
                final IconData logo;
                if (volume == 0) {
                  logo = FluentIcons.volume0;
                } else if (volume < 33) {
                  logo = FluentIcons.volume1;
                } else if (volume < 66) {
                  logo = FluentIcons.volume2;
                } else {
                  logo = FluentIcons.volume3;
                }
                return RepaintBoundary(
                  child: _VolumeButton(logo: logo),
                );
              },
            );
          },
        ),
        _PlaylistButton(),
      ],
    );
  }

  Widget _buildMoreControlButton(IconData icon, VoidCallback onPressed) {
    return Builder(
      builder: (context) {
        return RepaintBoundary(
          child: IconButton(
            icon: Icon(
              icon,
              color: FluentTheme.of(context).typography.body?.color,
            ),
            onPressed: onPressed,
          ),
        );
      },
    );
  }
}

class _PlaylistButton extends StatefulWidget {
  const _PlaylistButton();

  @override
  State<_PlaylistButton> createState() => _PlaylistButtonState();
}

class _PlaylistButtonState extends State<_PlaylistButton> {
  final _controller = FlyoutController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: FlyoutTarget(
        controller: _controller,
        child: IconButton(
          icon: Icon(
            FluentIcons.playlist_music,
            color: FluentTheme.of(context).typography.body?.color,
          ),
          onPressed: () {
            _controller.showFlyout(
              builder: (context) {
                return _PlaylistFlyout();
              },
            );
          },
        ),
      ),
    );
  }
}

class _PlaylistFlyout extends ConsumerWidget {
  const _PlaylistFlyout();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: 500,
      height: 800,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
          boxShadow: kElevationToShadow[4],
        ),
        child: Column(
          children: [
            Container(
              height: 40,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              alignment: Alignment.centerLeft,
              child: Text(
                "播放列表",
                style: FluentTheme.of(context).typography.body,
              ),
            ),
            Divider(),
            Expanded(
              child: RepaintBoundary(
                child: Consumer(
                  builder: (context, ref, child) {
                    final videos = ref.watch(
                      bottomBarProvider.select((state) => state.videos),
                    );
                    return ListView.separated(
                      itemCount: videos.length,
                      separatorBuilder: (context, index) => Divider(),
                      itemBuilder: (context, index) {
                        final video = videos[index];
                        return _VideoPlaylistItem(video: video, index: index);
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _VideoPlaylistItem extends ConsumerWidget {
  const _VideoPlaylistItem({required this.video, required this.index});

  final VideoState video;
  final int index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      onPressed: () async {
        await ref.read(bottomBarProvider.notifier).playAt(index);
      },
      leading: Consumer(
        builder: (context, ref, child) {
          final provider = ref.watch(bottomBarProvider);
          Widget layout = Stack(
            children: [
              CachedNetworkImage(
                imageUrl: video.cover,
                width: 80,
                height: 45,
                fit: BoxFit.cover,
              ),
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.black.withValues(alpha: 0.5),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(4),
                    ),
                  ),
                  child: Text(
                    "P${video.pIndex}",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
            ],
          );
          if (provider is BottomBarStatePlaying &&
              provider.videos.indexOf(provider.video) == index) {
            layout = Row(
              spacing: 10,
              children: [
                Icon(FluentIcons.play),
                layout,
              ],
            );
          }
          return layout;
        },
      ),
      title: Padding(
        padding: const EdgeInsets.only(bottom: 4),
        child: Text(
          video.title,
          style: FluentTheme.of(context).typography.body,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      subtitle: Row(
        spacing: 4,
        children: [
          ClipOval(
            child: CachedNetworkImage(
              imageUrl: video.uploaderAvatar,
              width: 20,
              height: 20,
            ),
          ),
          Text(
            video.uploader,
            style: FluentTheme.of(context).typography.caption,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
      trailing: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Button(
          child: Icon(FluentIcons.delete),
          onPressed: () async {
            await ref.read(bottomBarProvider.notifier).removeAt(index);
          },
        ),
      ),
    );
  }
}

class _VolumeButton extends ConsumerStatefulWidget {
  const _VolumeButton({
    required this.logo,
  });

  final IconData logo;

  @override
  ConsumerState<_VolumeButton> createState() => _VolumeButtonState();
}

class _VolumeButtonState extends ConsumerState<_VolumeButton> {
  final _controller = FlyoutController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FlyoutTarget(
      controller: _controller,
      child: IconButton(
        icon: Icon(
          widget.logo,
          color: FluentTheme.of(context).typography.body?.color,
        ),
        onPressed: () {
          _controller.showFlyout(
            builder: (context) {
              return _VolumeController();
            },
          );
        },
      ),
    );
  }
}

class _VolumeController extends StatelessWidget {
  const _VolumeController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
        boxShadow: kElevationToShadow[4],
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: RepaintBoundary(
            child: Consumer(
              builder: (context, ref, child) {
                return Slider(
                  vertical: true,
                  value: ref.watch(
                    bottomBarProvider.select((state) => state.volume),
                  ),
                  onChanged: (value) async {
                    await ref.read(bottomBarProvider.notifier).setVolume(value);
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
