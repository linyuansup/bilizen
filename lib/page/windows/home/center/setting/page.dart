import 'package:bilizen/inject/inject.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' as material;
import 'package:talker_flutter/talker_flutter.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return TabView(
      currentIndex: currentIndex,
      onChanged: (index) => setState(() => currentIndex = index),
      tabs: [
        Tab(
          text: const Text('Talker'),
          body: TalkerScreen(
            talker: getIt<Talker>(),
            theme: TalkerScreenTheme.fromTheme(
              material.Theme.of(context),
            ),
          ),
        ),
        Tab(
          text: const Text('关于'),
          body: const Center(
            child: Text('关于页面内容'),
          ),
        ),
      ],
      maxTabWidth: 150,
      minTabWidth: 150,
      tabWidthBehavior: TabWidthBehavior.equal,
    );
  }
}
