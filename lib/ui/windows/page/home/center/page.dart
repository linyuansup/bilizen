import 'package:bilizen/data/logic/homepage_router.dart';
import 'package:bilizen/ui/windows/page/home/center/focus/page.dart';
import 'package:bilizen/ui/windows/page/home/center/home/page.dart';
import 'package:bilizen/ui/windows/page/home/center/provider.dart';
import 'package:bilizen/ui/windows/page/home/center/search/page.dart';
import 'package:bilizen/ui/windows/page/home/center/search/provider.dart';
import 'package:bilizen/ui/windows/page/home/center/setting/page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:bilizen/ui/windows/page/home/center/self/page.dart';

class CenterPage extends ConsumerWidget {
  const CenterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedItem = ref.watch(
      centerProvider.select((state) => state.page),
    );
    return switch (selectedItem.kind) {
      HomePageKind.home => const HomePage(),
      HomePageKind.focus => const FocusPage(),
      HomePageKind.self => const SelfPage(),
      HomePageKind.setting => const SettingPage(),
      HomePageKind.search => Consumer(
        builder: (context, ref, child) {
          Future.delayed(Duration.zero, () {
            ref.read(searchPageProvider.notifier).clear();
          });
          return SearchPage(
            key: Key(selectedItem.addOn),
            keyword: selectedItem.addOn,
          );
        },
      ),
    };
  }
}
