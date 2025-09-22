import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/package/windows_toast/windows_toast.dart';
import 'package:fluent_ui/fluent_ui.dart';

class WindowsToastWrapper extends StatelessWidget {
  const WindowsToastWrapper({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    getIt<WindowsToast>().context = context;
    return child;
  }
}
