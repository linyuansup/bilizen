import 'package:fluent_ui/fluent_ui.dart';
import 'package:injectable/injectable.dart';

@singleton
class WindowsToast {
  late BuildContext context;

  Future<void> info({
    required String title,
    required String content,
    VoidCallback? onTap,
  }) async {
    return await _show(
      title: title,
      content: content,
      severity: InfoBarSeverity.info,
      onTap: onTap,
    );
  }

  Future<void> error({
    required String title,
    required String content,
    VoidCallback? onTap,
  }) async {
    return await _show(
      title: title,
      content: content,
      severity: InfoBarSeverity.error,
      onTap: onTap,
    );
  }

  Future<void> success({
    required String title,
    required String content,
    VoidCallback? onTap,
  }) async {
    return await _show(
      title: title,
      content: content,
      severity: InfoBarSeverity.success,
      onTap: onTap,
    );
  }

  Future<void> warning({
    required String title,
    required String content,
    VoidCallback? onTap,
  }) async {
    return await _show(
      title: title,
      content: content,
      severity: InfoBarSeverity.warning,
      onTap: onTap,
    );
  }

  Future<void> _show({
    required String title,
    required String content,
    required InfoBarSeverity severity,
    VoidCallback? onTap,
  }) async {
    return await displayInfoBar(
      context,
      builder: (context, close) {
        final infoBar = InfoBar(
          title: Text(title),
          content: Text(content),
          severity: severity,
        );
        if (onTap != null) {
          return GestureDetector(
            onTap: () {
              onTap();
              close();
            },
            child: infoBar,
          );
        }
        return infoBar;
      },
    );
  }
}
