import 'package:bilizen/data/logic/window_state.dart' as manager;
import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/ui/windows/page/home/top_bar/provider.dart';
import 'package:bilizen/ui/windows/router.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: FluentTheme.of(context).micaBackgroundColor,
        border: Border(
          bottom: BorderSide(
            color: FluentTheme.of(context).inactiveColor.withValues(alpha: 0.2),
            width: 0.5,
          ),
        ),
      ),
      child: Row(
        children: [
          _BackButton(),
          _Logo(),
          _SearchBar(),
          _UserIcon(),
          _WindowController(),
        ],
      ),
    );
  }
}

class _BackButton extends StatelessWidget {
  const _BackButton();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: RepaintBoundary(
        child: Consumer(
          builder: (context, ref, child) {
            return IconButton(
              icon: Icon(FluentIcons.back),
              onPressed:
                  ref.watch(topBarProvider.select((value) => value.canPop))
                  ? () {
                      getIt<WindowsAppRouter>().homepageRouter.stream.value
                          .pop();
                    }
                  : null,
            );
          },
        ),
      ),
    );
  }
}

class _WindowController extends StatelessWidget {
  const _WindowController();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        RepaintBoundary(child: _MinimumButton()),
        RepaintBoundary(child: _MaximumButton()),
        RepaintBoundary(child: _CloseButton()),
      ],
    );
  }
}

class _CloseButton extends StatelessWidget {
  const _CloseButton();

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        return SizedBox(
          width: 46,
          height: 50,
          child: Button(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.resolveWith((states) {
                if (states.contains(WidgetState.hovered)) {
                  return Colors.red.withValues(alpha: 0.8);
                }
                return Colors.transparent;
              }),
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                  side: BorderSide.none,
                ),
              ),
            ),
            onPressed: () async {
              await ref.read(topBarProvider.notifier).onCloseClick();
            },
            child: Icon(
              FluentIcons.chrome_close,
              size: 12,
              color: FluentTheme.of(context).typography.body?.color,
            ),
          ),
        );
      },
    );
  }
}

class _MaximumButton extends StatelessWidget {
  const _MaximumButton();

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        return SizedBox(
          width: 46,
          height: 50,
          child: Button(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.resolveWith((states) {
                if (states.contains(WidgetState.hovered)) {
                  return Colors.grey.withValues(alpha: 0.1);
                }
                return Colors.transparent;
              }),
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                  side: BorderSide.none,
                ),
              ),
            ),
            onPressed: () async {
              await ref.read(topBarProvider.notifier).onMaximumClick();
            },
            child: Consumer(
              builder: (context, ref, child) {
                final isMaximum = ref.watch(
                  topBarProvider.select(
                    (state) =>
                        state.windowState == manager.WindowState.maximized,
                  ),
                );
                return Icon(
                  isMaximum
                      ? FluentIcons.chrome_restore
                      : FluentIcons.single_column,
                  size: 12,
                  color: FluentTheme.of(context).typography.body?.color,
                );
              },
            ),
          ),
        );
      },
    );
  }
}

class _MinimumButton extends StatelessWidget {
  const _MinimumButton();

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        return SizedBox(
          width: 46,
          height: 50,
          child: Button(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.resolveWith((states) {
                if (states.contains(WidgetState.hovered)) {
                  return Colors.grey.withValues(alpha: 0.1);
                }
                return Colors.transparent;
              }),
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                  side: BorderSide.none,
                ),
              ),
            ),
            onPressed: () async {
              await ref.read(topBarProvider.notifier).onMinimumClick();
            },
            child: Icon(
              FluentIcons.chrome_minimize,
              size: 12,
              color: FluentTheme.of(context).typography.body?.color,
            ),
          ),
        );
      },
    );
  }
}

class _UserIcon extends ConsumerWidget {
  const _UserIcon();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userInfo = ref.watch(
      topBarProvider.select((state) => state.userInfo),
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 32,
            height: 32,
            child: Builder(
              builder: (context) {
                if (userInfo?.avatar != null) {
                  return ClipOval(
                    child: RepaintBoundary(
                      child: CachedNetworkImage(
                        imageUrl: userInfo!.avatar,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                } else {
                  return Icon(
                    FluentIcons.contact,
                    size: 20,
                    color: FluentTheme.of(context).typography.body?.color,
                  );
                }
              },
            ),
          ),
          const SizedBox(width: 8),
          Text(
            userInfo?.username ?? '未登录',
            style: FluentTheme.of(context).typography.body,
          ),
        ],
      ),
    );
  }
}

class _SearchBar extends StatelessWidget {
  const _SearchBar();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 32,
              child: RepaintBoundary(
                child: _SearchInputArea(),
              ),
            ),
            SizedBox(
              height: 1,
            ),
            Consumer(
              builder: (context, ref, child) {
                final color = GoRouter.of(context).state.name == "search"
                    ? Colors.blue
                    : Colors.transparent;
                return Container(
                  height: 1,
                  color: color,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _SearchInputArea extends ConsumerStatefulWidget {
  const _SearchInputArea();

  @override
  ConsumerState<_SearchInputArea> createState() => __SearchInputAreaState();
}

class __SearchInputAreaState extends ConsumerState<_SearchInputArea> {
  final _controller = TextEditingController();
  late final FocusNode _focusNode = FocusNode(
    onKeyEvent: (node, event) {
      if (event.logicalKey == LogicalKeyboardKey.enter) {
        context.pushNamed(
          "search",
          pathParameters: {"keyword": _controller.text},
        );
        key.currentState?.dismissOverlay();
        return KeyEventResult.handled;
      }
      return KeyEventResult.ignored;
    },
  );
  final key = GlobalKey<AutoSuggestBoxState>();

  @override
  void initState() {
    _controller.addListener(() {
      ref.read(topBarProvider.notifier).updateSearchRecommend(_controller.text);
    });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AutoSuggestBox<String>(
      key: key,
      focusNode: _focusNode,
      items: ref
          .watch(
            topBarProvider.select(
              (state) => state.searchRecommends,
            ),
          )
          .map(
            (e) => AutoSuggestBoxItem<String>(value: e, label: e),
          )
          .toList(),
      placeholder: '搜索...',
      controller: _controller,
      leadingIcon: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Icon(
          FluentIcons.search,
          size: 16,
          color: FluentTheme.of(
            context,
          ).typography.caption?.color,
        ),
      ),
      onSelected: (value) async {
        await context.pushNamed(
          "search",
          pathParameters: {"keyword": _controller.text},
        );
      },
    );
  }
}

class _Logo extends StatelessWidget {
  const _Logo();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Container(
        width: 45,
        height: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          image: const DecorationImage(
            image: AssetImage('assets/bilibili_blue.png'),
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
