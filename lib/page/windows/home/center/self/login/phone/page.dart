import 'package:fluent_ui/fluent_ui.dart';

class PhoneLoginPage extends StatefulWidget {
  const PhoneLoginPage({super.key});

  @override
  State<PhoneLoginPage> createState() => _PhoneLoginPageState();
}

class _PhoneLoginPageState extends State<PhoneLoginPage> {
  final _phoneController = TextEditingController();
  final _codeController = TextEditingController();

  @override
  void dispose() {
    _phoneController.dispose();
    _codeController.dispose();
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
            // 手机号输入框
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '手机号',
                  style: theme.typography.bodyStrong?.copyWith(
                    color: theme.inactiveColor,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(height: 8),
                TextBox(
                  controller: _phoneController,
                  placeholder: '请输入您的手机号',
                  prefix: Container(
                    padding: const EdgeInsets.only(left: 12, right: 8),
                    child: Icon(
                      FluentIcons.phone,
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

            // 验证码输入框
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '验证码',
                  style: theme.typography.bodyStrong?.copyWith(
                    color: theme.inactiveColor,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Expanded(
                      child: TextBox(
                        controller: _codeController,
                        placeholder: '请输入验证码',
                        prefix: Container(
                          padding: const EdgeInsets.only(left: 12, right: 8),
                          child: Icon(
                            FluentIcons.authenticator_app,
                            size: 16,
                            color: theme.accentColor,
                          ),
                        ),
                        style: theme.typography.body,
                        placeholderStyle: TextStyle(
                          color: theme.inactiveColor.withValues(alpha: 0.7),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    SizedBox(
                      height: 32,
                      child: Button(
                        onPressed: () {
                          displayInfoBar(
                            context,
                            builder: (context, close) {
                              return InfoBar(
                                title: const Text('验证码已发送'),
                                content: const Text('请查看您的手机短信'),
                                severity: InfoBarSeverity.success,
                                action: IconButton(
                                  icon: const Icon(FluentIcons.clear),
                                  onPressed: close,
                                ),
                              );
                            },
                          );
                        },
                        child: const Text('发送验证码'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 32),

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
