import 'package:bilizen/ui/windows/page/home/center/focus/page.dart';
import 'package:bilizen/ui/windows/page/home/center/search/page.dart';
import 'package:bilizen/ui/windows/page/home/center/search/provider.dart';
import 'package:bilizen/ui/windows/page/home/center/self/page.dart';
import 'package:bilizen/ui/windows/page/home/center/setting/page.dart';
import 'package:bilizen/ui/windows/page/home/center/suggest/page.dart';
import 'package:bilizen/ui/windows/page/home/page.dart';
import 'package:bilizen/ui/windows/page/video/page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';

@singleton
class WindowsAppRouter {
  final router = GoRouter(
    initialLocation: "/suggest",
    routes: [
      GoRoute(
        path: "/video",
        name: "video",
        builder: (context, state) {
          return VideoPage();
        },
      ),

      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return HomePage(
            center: navigationShell,
            onNavigationChanged: (index) {
              navigationShell.goBranch(index);
            },
          );
        },
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: "/suggest",
                name: "suggest",
                builder: (context, state) {
                  return SuggestPage();
                },
              ),
            ],
          ),

          StatefulShellBranch(
            routes: [
              GoRoute(
                path: "/focus",
                name: "focus",
                builder: (context, state) {
                  return FocusPage();
                },
              ),
            ],
          ),

          StatefulShellBranch(
            routes: [
              GoRoute(
                path: "/self",
                name: "self",
                builder: (context, state) {
                  return SelfPage();
                },
              ),
            ],
          ),

          StatefulShellBranch(
            routes: [
              GoRoute(
                path: "/setting",
                name: "setting",
                builder: (context, state) {
                  return SettingPage();
                },
              ),
            ],
          ),

          StatefulShellBranch(
            routes: [
              GoRoute(
                path: "/search/:keyword",
                name: "search",
                builder: (context, state) {
                  return Consumer(
                    builder: (context, ref, child) {
                      Future.delayed(Duration.zero, () async {
                        ref.read(searchPageProvider.notifier).clear();
                      });
                      return SearchPage(
                        keyword: state.pathParameters['keyword']!,
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
