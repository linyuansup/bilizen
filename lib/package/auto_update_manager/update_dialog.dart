import 'package:bilizen/package/auto_update_manager/provider.dart';
import 'package:bilizen/ui/windows/widget/scroll_bar_single_child.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UpdateDialog extends ConsumerWidget {
  const UpdateDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(updateDialogProvider);
    return state.when(
      waiting: () => _WaitingPage(),
      updating: (progress) => _UpdatingPage(progress: progress),
      checking: () => _CheckingPage(),
      error: (error) => _ErrorPage(error: error),
    );
  }
}

class _ErrorPage extends ConsumerWidget {
  const _ErrorPage({required this.error});

  final Error error;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = FluentTheme.of(context);

    return ContentDialog(
      title: Row(
        children: [
          Icon(
            FluentIcons.error,
            size: 20,
            color: Colors.red,
          ),
          const SizedBox(width: 8),
          const Text('更新失败'),
        ],
      ),
      content: Container(
        constraints: const BoxConstraints(
          minWidth: 400,
          minHeight: 200,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Icon(
              FluentIcons.error_badge,
              size: 48,
              color: Colors.red.withValues(alpha: 0.7),
            ),
            const SizedBox(height: 16),
            Text(
              '更新过程中出现错误',
              style: theme.typography.subtitle,
            ),
            const SizedBox(height: 8),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.red.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Colors.red.withValues(alpha: 0.3),
                    width: 1,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '错误详情：',
                      style: theme.typography.caption?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Expanded(
                      child: ScrollBarSingleChild(
                        child: Text(
                          "${error.toString()}\n${error.stackTrace.toString()}",
                          style: theme.typography.caption?.copyWith(
                            color: theme.resources.textFillColorSecondary,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      actions: [
        Button(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('关闭'),
        ),
        FilledButton(
          onPressed: () {
            ref.read(updateDialogProvider.notifier).startUpdate();
          },
          child: const Text('重试'),
        ),
      ],
    );
  }
}

class _CheckingPage extends StatelessWidget {
  const _CheckingPage();

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);

    return ContentDialog(
      title: Row(
        children: [
          Icon(
            FluentIcons.download,
            size: 20,
            color: theme.accentColor,
          ),
          const SizedBox(width: 8),
          const Text('验证'),
        ],
      ),
      content: Container(
        constraints: const BoxConstraints(
          minWidth: 400,
          minHeight: 200,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            SizedBox(
              width: 48,
              height: 48,
              child: ProgressRing(
                strokeWidth: 3,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              '正在验证...',
              style: theme.typography.subtitle,
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
      actions: [
        Button(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('取消'),
        ),
      ],
    );
  }
}

class _UpdatingPage extends StatelessWidget {
  const _UpdatingPage({required this.progress});

  final double progress;

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);
    final progressPercent = (progress * 100).toInt();

    return ContentDialog(
      title: Row(
        children: [
          Icon(
            FluentIcons.download,
            size: 20,
            color: theme.accentColor,
          ),
          const SizedBox(width: 8),
          const Text('正在更新'),
        ],
      ),
      content: Container(
        constraints: const BoxConstraints(
          minWidth: 400,
          minHeight: 200,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            SizedBox(
              width: 64,
              height: 64,
              child: ProgressRing(
                value: progress * 100,
                strokeWidth: 4,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              '正在下载更新包...',
              style: theme.typography.subtitle,
            ),
            const SizedBox(height: 8),
            Text(
              '$progressPercent%',
              style: theme.typography.bodyLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: theme.accentColor,
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
      actions: [
        Button(
          onPressed: null,
          child: const Text('取消'),
        ),
      ],
    );
  }
}

class _WaitingPage extends ConsumerWidget {
  const _WaitingPage();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = FluentTheme.of(context);

    return ContentDialog(
      title: Row(
        children: [
          Icon(
            FluentIcons.update_restore,
            size: 20,
            color: theme.accentColor,
          ),
          const SizedBox(width: 8),
          const Text('检查更新'),
        ],
      ),
      content: Container(
        constraints: const BoxConstraints(
          minWidth: 400,
          minHeight: 200,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Icon(
              FluentIcons.cloud_download,
              size: 48,
              color: theme.accentColor.withValues(alpha: 0.7),
            ),
            const SizedBox(height: 16),
            Text(
              '检测到新版本可用',
              style: theme.typography.subtitle,
            ),
            const SizedBox(height: 8),
            Text(
              '是否立即下载并重启安装更新？',
              style: theme.typography.body?.copyWith(
                color: theme.resources.textFillColorSecondary,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
      actions: [
        Button(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('稍后提醒'),
        ),
        FilledButton(
          onPressed: () {
            ref.read(updateDialogProvider.notifier).startUpdate();
          },
          child: const Text('立即更新'),
        ),
      ],
    );
  }
}
