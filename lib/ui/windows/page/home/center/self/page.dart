import 'package:bilizen/ui/windows/page/home/center/self/login/page.dart';
import 'package:bilizen/ui/windows/page/home/center/self/provider.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' show CircularProgressIndicator;
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SelfPage extends ConsumerWidget {
  const SelfPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(selfProvider);
    return switch (state) {
      SelfStateNoLogin() => const LoginPage(),
      SelfStateLoading(self: final self) => Builder(
        builder: (context) {
          ref.read(selfProvider.notifier).getSelfInfo(self);
          return const Center(
            child: RepaintBoundary(child: CircularProgressIndicator()),
          );
        },
      ),
      SelfStateLoggedIn(userInfoCard: final card) => Center(
        child: _UserInfo(card: card),
      ),
    };
  }
}

class _UserInfo extends StatelessWidget {
  const _UserInfo({required this.card});

  final UserInfoCard card;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _UserInfoCard(card: card),
        _UserUploadCard(),
      ],
    );
  }
}

class _UserUploadCard extends StatelessWidget {
  const _UserUploadCard();

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Text('Logged In'));
  }
}

class _UserInfoCard extends StatelessWidget {
  const _UserInfoCard({required this.card});

  final UserInfoCard card;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        padding: const EdgeInsets.all(16),
        borderRadius: BorderRadius.circular(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                _buildAvatar(),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildUserInfoRow(context),
                      const SizedBox(height: 4),
                      _buildSignature(context),
                    ],
                  ),
                ),
                _buildStatistics(context),
              ],
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  Widget _buildAvatar() {
    return ClipOval(
      child: CachedNetworkImage(
        imageUrl: card.avatar,
        width: 80,
        height: 80,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildUserInfoRow(BuildContext context) {
    return Row(
      children: [
        Text(
          card.nickName,
          style: FluentTheme.of(context).typography.title,
        ),
        const SizedBox(width: 8),
        _buildGenderIcon(),
        const SizedBox(width: 8),
        _buildLevelTag(context),
      ],
    );
  }

  Widget _buildGenderIcon() {
    return Icon(
      card.sex == '男' ? FluentIcons.contact : FluentIcons.user_window,
      color: card.sex == '男' ? Colors.blue : const Color(0xFFE83F6F),
      size: 20,
    );
  }

  Widget _buildLevelTag(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 2,
      ),
      decoration: BoxDecoration(
        color: Colors.blue.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        'LV${card.level}',
        style: FluentTheme.of(context).typography.caption?.copyWith(
          color: Colors.blue,
        ),
      ),
    );
  }

  Widget _buildSignature(BuildContext context) {
    if (!card.sign.isNotEmpty) return const SizedBox.shrink();
    return Text(
      card.sign,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }

  Widget _buildStatistics(BuildContext context) {
    return Row(
      spacing: 30,
      children: [
        _buildStatItem(context, '视频', card.archiveCount),
        _buildStatItem(context, '获赞', card.likeNum),
        _buildStatItem(context, '粉丝', card.fans),
        _buildStatItem(context, '关注', card.focus),
      ],
    );
  }

  Widget _buildStatItem(BuildContext context, String label, int count) {
    String displayText = count < 100000
        ? count.toString()
        : '${(count / 10000).toStringAsFixed(1)}万';

    return Column(
      children: [
        Text(
          displayText,
          style: FluentTheme.of(context).typography.subtitle?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: FluentTheme.of(context).typography.caption?.copyWith(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
