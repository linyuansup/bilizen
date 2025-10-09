import 'package:bilizen/ui/windows/page/home/center/setting/info/account/provider.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 24,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _Account(),
      ],
    );
  }
}

class _Account extends ConsumerWidget {
  const _Account();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(accountProviderProvider);
    final theme = FluentTheme.of(context);

    return state.when(
      loading: () => const Center(
        child: RepaintBoundary(
          child: ProgressRing(),
        ),
      ),
      login: (username, avatarUrl) => _LoginContent(
        theme: theme,
        username: username,
        avatarUrl: avatarUrl,
      ),
      noLogin: () => _NoLoginContent(theme: theme),
    );
  }
}

void _showLogoutDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => ContentDialog(
      title: const Text('确认退出'),
      content: const Text('确定要退出登录吗？退出后需要重新登录才能使用完整功能。'),
      actions: [
        Button(
          child: const Text('取消'),
          onPressed: () => Navigator.of(context).pop(),
        ),
        Consumer(
          builder: (_, WidgetRef ref, _) {
            return FilledButton(
              onPressed: () {
                Navigator.of(context).pop();
                ref.read(accountProviderProvider.notifier).logout();
              },
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(
                  Colors.red.withValues(alpha: 0.8),
                ),
              ),
              child: const Text('退出登录'),
            );
          },
        ),
      ],
    ),
  );
}

class _LoginContent extends StatelessWidget {
  const _LoginContent({
    required this.theme,
    required this.username,
    required this.avatarUrl,
  });

  final FluentThemeData theme;
  final String username;
  final String avatarUrl;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 64,
          height: 64,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32),
            border: Border.all(
              color: theme.inactiveColor.withValues(alpha: 0.2),
              width: 2,
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: RepaintBoundary(
              child: CachedNetworkImage(
                imageUrl: avatarUrl,
                fit: BoxFit.cover,
                placeholder: (context, url) => Container(
                  color: theme.inactiveColor.withValues(alpha: 0.1),
                  child: Icon(
                    FluentIcons.contact,
                    size: 32,
                    color: theme.inactiveColor,
                  ),
                ),
                errorWidget: (context, url, error) => Container(
                  color: theme.inactiveColor.withValues(alpha: 0.1),
                  child: Icon(
                    FluentIcons.contact,
                    size: 32,
                    color: theme.inactiveColor,
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                username,
                style: theme.typography.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                '已登录',
                style: theme.typography.body?.copyWith(
                  color: theme.inactiveColor,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
        RepaintBoundary(
          child: FilledButton(
            onPressed: () => _showLogoutDialog(context),
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(
                Colors.red.withValues(alpha: 0.8),
              ),
            ),
            child: const Text('退出登录'),
          ),
        ),
      ],
    );
  }
}

class _NoLoginContent extends StatelessWidget {
  const _NoLoginContent({required this.theme});

  final FluentThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 64,
          height: 64,
          decoration: BoxDecoration(
            color: theme.inactiveColor.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(32),
            border: Border.all(
              color: theme.inactiveColor.withValues(alpha: 0.2),
              width: 2,
            ),
          ),
          child: Icon(
            FluentIcons.contact,
            size: 32,
            color: theme.inactiveColor,
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '未登录',
                style: theme.typography.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: theme.inactiveColor,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                '请先登录以使用完整功能',
                style: theme.typography.body?.copyWith(
                  color: theme.inactiveColor,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
