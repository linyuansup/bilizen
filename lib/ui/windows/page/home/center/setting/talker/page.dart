import 'package:bilizen/inject/inject.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:talker_flutter/talker_flutter.dart';

class SettingTalkerPage extends StatelessWidget {
  const SettingTalkerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 90),
      child: TalkerScreen(
        talker: getIt<Talker>(),
      ),
    );
  }
}
