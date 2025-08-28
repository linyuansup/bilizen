import 'package:bilizen/ui/windows/page/home/center/self/login/password/page.dart';
import 'package:bilizen/ui/windows/page/home/center/self/login/phone/page.dart';
import 'package:bilizen/ui/windows/page/home/center/self/login/provider.dart';
import 'package:bilizen/ui/windows/page/home/center/self/login/qr/page.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);

    return ScaffoldPage(
      padding: null,
      content: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 80),
          child: Container(
            width: 420,
            padding: const EdgeInsets.all(40),
            decoration: BoxDecoration(
              color: theme.micaBackgroundColor,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: theme.inactiveColor.withValues(alpha: 0.1),
                width: 1,
              ),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x0A000000),
                  blurRadius: 32,
                  offset: const Offset(0, 16),
                  spreadRadius: 0,
                ),
                BoxShadow(
                  color: const Color(0x0F000000),
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '欢迎回来',
                  style: theme.typography.titleLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                    letterSpacing: -0.5,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  '请选择登录方式',
                  style: theme.typography.body?.copyWith(
                    color: theme.inactiveColor,
                    height: 1.4,
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  height: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Consumer(
                    builder: (context, ref, child) {
                      final loginState = ref.watch(loginProvider);
                      return TabView(
                        currentIndex: loginState.method.index,
                        onChanged: (index) {
                          ref.read(loginProvider.notifier).loginMethod =
                              _selectedMethod(index);
                        },
                        tabs: [
                          Tab(
                            icon: const Icon(FluentIcons.phone, size: 16),
                            text: const Text('手机号'),
                            body: PhoneLoginPage(),
                          ),
                          Tab(
                            icon: const Icon(FluentIcons.q_r_code, size: 16),
                            text: const Text('二维码'),
                            body: QrLoginPage(),
                          ),
                          Tab(
                            icon: const Icon(FluentIcons.lock, size: 16),
                            text: const Text('密码'),
                            body: PasswordLoginPage(),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  LoginMethod _selectedMethod(int index) {
    switch (index) {
      case 0:
        return LoginMethod.phone;
      case 1:
        return LoginMethod.qr;
      case 2:
        return LoginMethod.password;
      default:
        return LoginMethod.password;
    }
  }
}
