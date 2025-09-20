import 'package:fluent_ui/fluent_ui.dart';
import 'package:toastification/toastification.dart';

abstract class Toast {
  static void success(String text, {String? description}) {
    toastification.show(
      type: ToastificationType.success,
      title: Text(
        text,
        style: TextStyle(fontFamily: "Microsoft YaHei"),
      ),
      description: description != null
          ? Text(
              description,
              style: TextStyle(fontFamily: "Microsoft YaHei"),
            )
          : null,
      autoCloseDuration: const Duration(seconds: 5),
    );
  }

  static void warning(String text, {String? description}) {
    toastification.show(
      type: ToastificationType.warning,
      title: Text(
        text,
        style: TextStyle(fontFamily: "Microsoft YaHei"),
      ),
      description: description != null
          ? Text(
              description,
              style: TextStyle(fontFamily: "Microsoft YaHei"),
            )
          : null,
      autoCloseDuration: const Duration(seconds: 5),
    );
  }

  static void info(String text, {String? description, VoidCallback? onTap}) {
    toastification.show(
      type: ToastificationType.info,
      title: Text(
        text,
        style: TextStyle(fontFamily: "Microsoft YaHei"),
      ),
      callbacks: ToastificationCallbacks(
        onTap: (_) => onTap?.call(),
      ),
      closeOnClick: true,
      description: description != null
          ? Text(
              description,
              style: TextStyle(fontFamily: "Microsoft YaHei"),
            )
          : null,
      autoCloseDuration: const Duration(seconds: 5),
    );
  }

  static void error(String text, {String? description}) {
    toastification.show(
      type: ToastificationType.error,
      title: Text(
        text,
        style: TextStyle(fontFamily: "Microsoft YaHei"),
      ),
      description: description != null
          ? Text(
              description,
              style: TextStyle(fontFamily: "Microsoft YaHei"),
            )
          : null,
      autoCloseDuration: const Duration(seconds: 5),
    );
  }
}
