import 'package:fluent_ui/fluent_ui.dart';
import 'package:toastification/toastification.dart';

class Toast {
  static void success(String text) {
    toastification.show(
      type: ToastificationType.success,
      title: Text(
        text,
        style: TextStyle(fontFamily: "Microsoft YaHei"),
      ),
      autoCloseDuration: const Duration(seconds: 5),
    );
  }
}
