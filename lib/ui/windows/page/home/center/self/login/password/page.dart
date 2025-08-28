import 'package:fluent_ui/fluent_ui.dart';

class PasswordLoginPage extends StatefulWidget {
  const PasswordLoginPage({super.key});

  @override
  State<PasswordLoginPage> createState() => _PasswordLoginPageState();
}

class _PasswordLoginPageState extends State<PasswordLoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);

    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 用户名输入框
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '用户名/邮箱',
                  style: theme.typography.bodyStrong?.copyWith(
                    color: theme.inactiveColor,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(height: 8),
                TextBox(
                  controller: _usernameController,
                  placeholder: '请输入用户名或邮箱地址',
                  prefix: Container(
                    padding: const EdgeInsets.only(left: 12, right: 8),
                    child: Icon(
                      FluentIcons.contact,
                      size: 16,
                      color: theme.accentColor,
                    ),
                  ),
                  style: theme.typography.body,
                  placeholderStyle: TextStyle(
                    color: theme.inactiveColor.withValues(alpha: 0.7),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // 密码输入框
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '密码',
                  style: theme.typography.bodyStrong?.copyWith(
                    color: theme.inactiveColor,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(height: 8),
                PasswordBox(
                  controller: _passwordController,
                  placeholder: '请输入您的密码',
                  style: theme.typography.body,
                  placeholderStyle: TextStyle(
                    color: theme.inactiveColor.withValues(alpha: 0.7),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),

            // 选项行
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                      checked: false,
                      onChanged: (value) {},
                    ),
                    const SizedBox(width: 8),
                    Text(
                      '记住密码',
                      style: theme.typography.body?.copyWith(
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
                HyperlinkButton(
                  onPressed: () {
                    displayInfoBar(
                      context,
                      builder: (context, close) {
                        return InfoBar(
                          title: const Text('找回密码'),
                          content: const Text('请联系管理员或通过邮箱重置密码'),
                          severity: InfoBarSeverity.info,
                          action: IconButton(
                            icon: const Icon(FluentIcons.clear),
                            onPressed: close,
                          ),
                        );
                      },
                    );
                  },
                  child: Text(
                    '忘记密码？',
                    style: theme.typography.body?.copyWith(
                      color: theme.accentColor,
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),

            // 登录按钮
            SizedBox(
              width: double.infinity,
              height: 44,
              child: FilledButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.resolveWith((states) {
                    if (states.contains(WidgetState.pressed)) {
                      return theme.accentColor.dark;
                    }
                    if (states.contains(WidgetState.hovered)) {
                      return theme.accentColor.light;
                    }
                    return theme.accentColor;
                  }),
                ),
                child: Text(
                  '登录',
                  style: theme.typography.bodyStrong?.copyWith(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
