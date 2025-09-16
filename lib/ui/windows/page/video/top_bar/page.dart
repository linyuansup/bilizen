import 'package:bilizen/package/window_state.dart' as manager;
import 'package:bilizen/ui/windows/page/video/top_bar/provider.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:window_manager/window_manager.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: FluentTheme.of(context).micaBackgroundColor,
        border: Border(
          bottom: BorderSide(
            color: FluentTheme.of(context).inactiveColor.withValues(alpha: 0.2),
            width: 0.5,
          ),
        ),
      ),
      child: Row(
        children: [
          _BackButton(),
          Expanded(child: _VideoInfo()),
          _WindowController(),
        ],
      ),
    );
  }
}

class _VideoInfo extends ConsumerWidget {
  const _VideoInfo();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final video = ref.watch(
      topBarProvider.select((state) => state.videoInfo),
    );
    if (video == null) {
      return SizedBox.shrink();
    }
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Text(video.title),
    );
  }
}

class _BackButton extends StatelessWidget {
  const _BackButton();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10),
      child: RepaintBoundary(
        child: IconButton(
          icon: Icon(FluentIcons.back),
          onPressed: () {
            context.pop();
          },
        ),
      ),
    );
  }
}

class _WindowController extends StatelessWidget {
  const _WindowController();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        _AlwaysOnTopButton(),
        _MinimumButton(),
        _MaximumButton(),
        _CloseButton(),
      ],
    );
  }
}

class _AlwaysOnTopButton extends StatelessWidget {
  const _AlwaysOnTopButton();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 46,
      height: 50,
      child: Consumer(
        builder: (context, ref, child) {
          return RepaintBoundary(
            child: Button(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.resolveWith((states) {
                  if (states.contains(WidgetState.hovered)) {
                    return Colors.grey.withValues(alpha: 0.1);
                  }
                  return Colors.transparent;
                }),
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                    side: BorderSide.none,
                  ),
                ),
              ),
              onPressed: () async {
                ref.read(topBarProvider.notifier).switchOnTop();
              },
              child: Consumer(
                builder: (context, ref, child) {
                  final isOnTop = ref.watch(
                    topBarProvider.select((state) => state.onTop),
                  );
                  return Icon(
                    isOnTop
                        ? FluentIcons.pin_solid12
                        : FluentIcons.pin_solid_off12,
                    size: 12,
                    color: FluentTheme.of(context).typography.body?.color,
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

class _CloseButton extends StatelessWidget {
  const _CloseButton();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 46,
      height: 50,
      child: RepaintBoundary(
        child: Button(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.resolveWith((states) {
              if (states.contains(WidgetState.hovered)) {
                return Colors.red.withValues(alpha: 0.8);
              }
              return Colors.transparent;
            }),
            shape: WidgetStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
                side: BorderSide.none,
              ),
            ),
          ),
          onPressed: () async {
            await windowManager.close();
          },
          child: Icon(
            FluentIcons.chrome_close,
            size: 12,
            color: FluentTheme.of(context).typography.body?.color,
          ),
        ),
      ),
    );
  }
}

class _MaximumButton extends StatelessWidget {
  const _MaximumButton();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 46,
      height: 50,
      child: RepaintBoundary(
        child: Button(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.resolveWith((states) {
              if (states.contains(WidgetState.hovered)) {
                return Colors.grey.withValues(alpha: 0.1);
              }
              return Colors.transparent;
            }),
            shape: WidgetStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
                side: BorderSide.none,
              ),
            ),
          ),
          onPressed: () async {
            if (await windowManager.isMaximized()) {
              await windowManager.unmaximize();
            } else {
              await windowManager.maximize();
            }
          },
          child: Consumer(
            builder: (context, ref, child) {
              final isMaximum = ref.watch(
                topBarProvider.select(
                  (state) => state.windowState == manager.WindowState.maximized,
                ),
              );
              return Icon(
                isMaximum
                    ? FluentIcons.chrome_restore
                    : FluentIcons.single_column,
                size: 12,
                color: FluentTheme.of(context).typography.body?.color,
              );
            },
          ),
        ),
      ),
    );
  }
}

class _MinimumButton extends StatelessWidget {
  const _MinimumButton();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 46,
      height: 50,
      child: RepaintBoundary(
        child: Button(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.resolveWith((states) {
              if (states.contains(WidgetState.hovered)) {
                return Colors.grey.withValues(alpha: 0.1);
              }
              return Colors.transparent;
            }),
            shape: WidgetStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
                side: BorderSide.none,
              ),
            ),
          ),
          onPressed: () async {
            await windowManager.minimize();
          },
          child: Icon(
            FluentIcons.chrome_minimize,
            size: 12,
            color: FluentTheme.of(context).typography.body?.color,
          ),
        ),
      ),
    );
  }
}
