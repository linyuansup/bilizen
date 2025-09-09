import 'package:bilizen/logic/account_manager/qr_login_status.dart';
import 'package:bilizen/ui/windows/page/home/center/self/login/qr/provider.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

class QrLoginPage extends ConsumerWidget {
  const QrLoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(qrCodeLoginProvider);
    return switch (state) {
      QrCodeLoginStateLoading() => const _LoadingPage(),
      QrCodeLoginStateInitial(:final status) => _QrCodePage(status),
    };
  }
}

class _LoadingPage extends StatelessWidget {
  const _LoadingPage();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: RepaintBoundary(
        child: ProgressRing(),
      ),
    );
  }
}

class _QrCodePage extends StatelessWidget {
  static const double _qrContainerSize = 220.0;
  static const double _qrCodeSize = 216.0;
  static const double _checkMarkSize = 60.0;
  static const double _iconSize = 28.0;
  static const double _borderRadius = 20.0;
  static const double _innerBorderRadius = 12.0;

  final QrLoginStatus status;

  const _QrCodePage(this.status);

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);

    return Column(
      children: [
        const SizedBox(height: 20),
        _QrCodeContainer(status: status, theme: theme),
        const SizedBox(height: 12),
        _InstructionText(status: status, theme: theme),
        const SizedBox(height: 12),
        _RefreshButton(theme: theme),
      ],
    );
  }
}

class _QrCodeContainer extends StatelessWidget {
  final QrLoginStatus status;
  final FluentThemeData theme;

  const _QrCodeContainer({
    required this.status,
    required this.theme,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _QrCodePage._qrContainerSize,
      height: _QrCodePage._qrContainerSize,
      decoration: _buildContainerDecoration(),
      child: Container(
        decoration: _buildInnerContainerDecoration(),
        child: _QrCodeContent(status: status, theme: theme),
      ),
    );
  }

  BoxDecoration _buildContainerDecoration() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(_QrCodePage._borderRadius),
      border: Border.all(
        color: theme.inactiveColor.withValues(alpha: 0.08),
        width: 1,
      ),
      boxShadow: const [
        BoxShadow(
          color: Color(0x04000000),
          blurRadius: 24,
          offset: Offset(0, 8),
          spreadRadius: 0,
        ),
        BoxShadow(
          color: Color(0x08000000),
          blurRadius: 4,
          offset: Offset(0, 2),
          spreadRadius: 0,
        ),
      ],
    );
  }

  BoxDecoration _buildInnerContainerDecoration() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(_QrCodePage._innerBorderRadius),
      border: Border.all(
        color: const Color(0xFFE5E5E5),
        width: 1,
      ),
    );
  }
}

class _QrCodeContent extends StatelessWidget {
  final QrLoginStatus status;
  final FluentThemeData theme;

  const _QrCodeContent({
    required this.status,
    required this.theme,
  });

  @override
  Widget build(BuildContext context) {
    return switch (status) {
      QrLoginWaitingForScan(qrCode: final qrCode) => _NormalQrCode(
        qrCode: qrCode,
      ),
      QrLoginScanned(qrCode: final qrCode) => _ScannedQrCode(qrCode: qrCode),
      QrLoginTimeout() => _TimeoutMessage(theme: theme),
    };
  }
}

class _NormalQrCode extends StatelessWidget {
  final String qrCode;

  const _NormalQrCode({required this.qrCode});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: _QrCodePage._qrCodeSize,
      height: _QrCodePage._qrCodeSize,
      child: PrettyQrView.data(data: qrCode),
    );
  }
}

class _ScannedQrCode extends StatelessWidget {
  final String qrCode;

  const _ScannedQrCode({required this.qrCode});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _NormalQrCode(qrCode: qrCode),
        const _CheckMarkOverlay(),
      ],
    );
  }
}

class _CheckMarkOverlay extends StatelessWidget {
  const _CheckMarkOverlay();

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black.withValues(alpha: 0.3),
          borderRadius: BorderRadius.circular(_QrCodePage._innerBorderRadius),
        ),
        child: Center(
          child: Container(
            width: _QrCodePage._checkMarkSize,
            height: _QrCodePage._checkMarkSize,
            decoration: BoxDecoration(
              color: Colors.green,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.green.withValues(alpha: 0.3),
                  blurRadius: 12,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: const Icon(
              FluentIcons.check_mark,
              color: Colors.white,
              size: _QrCodePage._iconSize,
            ),
          ),
        ),
      ),
    );
  }
}

class _TimeoutMessage extends StatelessWidget {
  final FluentThemeData theme;

  const _TimeoutMessage({required this.theme});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '二维码已过期，请刷新',
        style: theme.typography.body?.copyWith(
          color: theme.inactiveColor,
          fontSize: 14,
        ),
      ),
    );
  }
}

class _InstructionText extends StatelessWidget {
  final QrLoginStatus status;
  final FluentThemeData theme;

  const _InstructionText({
    required this.status,
    required this.theme,
  });

  @override
  Widget build(BuildContext context) {
    if (status is QrLoginScanned) {
      return const SizedBox.shrink();
    }

    return Text(
      '扫描上方二维码登录',
      style: theme.typography.body?.copyWith(
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

class _RefreshButton extends StatelessWidget {
  final FluentThemeData theme;

  const _RefreshButton({required this.theme});

  @override
  Widget build(BuildContext context) {
    return HyperlinkButton(
      onPressed: () => _showRefreshInfo(context),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            FluentIcons.refresh,
            size: 14,
            color: theme.accentColor,
          ),
          const SizedBox(width: 6),
          Text(
            '刷新二维码',
            style: theme.typography.body?.copyWith(
              color: theme.accentColor,
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  void _showRefreshInfo(BuildContext context) {
    displayInfoBar(
      context,
      builder: (context, close) {
        return InfoBar(
          title: const Text('二维码已刷新'),
          content: const Text('请重新扫描新的二维码'),
          severity: InfoBarSeverity.info,
          action: IconButton(
            icon: const Icon(FluentIcons.clear),
            onPressed: close,
          ),
        );
      },
    );
  }
}
