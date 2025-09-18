import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/ui/windows/page/home/page.dart';
import 'package:bilizen/ui/windows/page/router.dart';
import 'package:bilizen/ui/windows/page/video/page.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:smtc_windows/smtc_windows.dart';
import 'package:talker/talker.dart';
import 'package:talker_riverpod_logger/talker_riverpod_logger.dart';
import 'package:toastification/toastification.dart';
import 'package:tray_manager/tray_manager.dart';
import 'package:window_manager/window_manager.dart';

final _router = GoRouter(
  navigatorKey: getIt<WindowsRouter>().main.key,
  observers: [getIt<WindowsRouter>().main.observer],
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) {
        return HomePage();
      },
    ),
    GoRoute(
      path: "/video",
      name: "video",
      builder: (context, state) {
        return VideoPage();
      },
    ),
  ],
);

class WindowsApp extends StatefulWidget {
  const WindowsApp({super.key});

  @override
  State<WindowsApp> createState() => _WindowsAppState();
}

class _WindowsAppState extends State<WindowsApp> with TrayListener {
  late SMTCWindows smtc;

  @override
  void initState() {
    trayManager.addListener(this);
    smtc = SMTCWindows(
      metadata: const MusicMetadata(
        title: 'Title',
        album: 'Album',
        albumArtist: 'Album Artist',
        artist: 'Artist',
        thumbnail:
            'https://media.glamour.com/photos/5f4c44e20c71c58fc210d35f/master/w_2560%2Cc_limit/mgid_ao_image_mtv.jpg',
      ),
      timeline: const PlaybackTimeline(
        startTimeMs: 0,
        endTimeMs: 1000,
        positionMs: 0,
        minSeekTimeMs: 0,
        maxSeekTimeMs: 1000,
      ),
      config: const SMTCConfig(
        fastForwardEnabled: true,
        nextEnabled: true,
        pauseEnabled: true,
        playEnabled: true,
        rewindEnabled: true,
        prevEnabled: true,
        stopEnabled: false,
      ),
    );
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      try {
        // Listen to button events and update playback status accordingly
        smtc.buttonPressStream.listen((event) {
          switch (event) {
            case PressedButton.play:
              // Update playback status
              smtc.setPlaybackStatus(PlaybackStatus.playing);
              break;
            case PressedButton.pause:
              smtc.setPlaybackStatus(PlaybackStatus.paused);
              break;
            case PressedButton.next:
              print('Next');
              break;
            case PressedButton.previous:
              print('Previous');
              break;
            case PressedButton.stop:
              smtc.setPlaybackStatus(PlaybackStatus.stopped);
              smtc.disableSmtc();
              break;
            default:
              break;
          }
        });
      } catch (e) {
        debugPrint("Error: $e");
      }
    });
    super.initState();
  }

  @override
  void onTrayIconMouseDown() {
    windowManager.show();
  }

  @override
  void onTrayIconRightMouseDown() {
    trayManager.popUpContextMenu();
  }

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      observers: [TalkerRiverpodObserver(talker: getIt<Talker>())],
      child: ToastificationWrapper(
        child: FluentApp.router(
          debugShowCheckedModeBanner: false,
          theme: FluentThemeData(
            accentColor: Colors.blue,
            fontFamily: 'Microsoft YaHei',
          ),
          routerConfig: _router,
        ),
      ),
    );
  }
}
