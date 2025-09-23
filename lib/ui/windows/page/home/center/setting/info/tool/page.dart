import 'package:bilizen/ui/windows/page/home/center/setting/info/tool/provider.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ToolPage extends StatelessWidget {
  const ToolPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _Proxy(),
      ],
    );
  }
}

class _Proxy extends StatelessWidget {
  const _Proxy();

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 12,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 20,
          children: [
            Text(
              "代理",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: Consumer(
                builder: (context, ref, child) {
                  final useProxy = ref.watch(
                    toolPageProvider.select((value) => value.useProxy),
                  );
                  return Column(
                    spacing: 12,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:
                        [
                              Row(
                                spacing: 20,
                                children:
                                    [
                                          RadioButton(
                                            checked: !useProxy,
                                            onChanged: (value) async {
                                              await ref
                                                  .read(
                                                    toolPageProvider.notifier,
                                                  )
                                                  .setToolSetting(
                                                    ref
                                                        .read(toolPageProvider)
                                                        .copyWith(
                                                          useProxy: false,
                                                        ),
                                                  );
                                            },
                                            content: Text("不使用代理"),
                                          ),
                                          RadioButton(
                                            checked: useProxy,
                                            onChanged: (value) async {
                                              await ref
                                                  .read(
                                                    toolPageProvider.notifier,
                                                  )
                                                  .setToolSetting(
                                                    ref
                                                        .read(toolPageProvider)
                                                        .copyWith(
                                                          useProxy: true,
                                                        ),
                                                  );
                                            },
                                            content: Text("自定义代理"),
                                          ),
                                        ]
                                        .map(
                                          (e) => RepaintBoundary(
                                            child: e,
                                          ),
                                        )
                                        .toList(),
                              ),
                              if (useProxy) _ProxySettingArea(),
                            ]
                            .map(
                              (e) => RepaintBoundary(
                                child: e,
                              ),
                            )
                            .toList(),
                  );
                },
              ),
            ),
          ],
        ),
        SizedBox(
          width: double.infinity,
          child: InfoBar(
            title: Text("提示"),
            content: Text("设置代理后需要重启应用才能生效"),
            severity: InfoBarSeverity.warning,
            isLong: true,
          ),
        ),
      ],
    );
  }
}

class _ProxySettingArea extends ConsumerWidget {
  const _ProxySettingArea();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      spacing: 12,
      children: [
        Text("服务器"),
        Expanded(
          child: TextBox(
            onChanged: (value) async {
              await ref
                  .read(
                    toolPageProvider.notifier,
                  )
                  .setToolSetting(
                    ref
                        .read(toolPageProvider)
                        .copyWith(
                          proxyAddress: value,
                        ),
                  );
            },
          ),
        ),
        Text("端口"),
        Expanded(
          child: TextBox(
            keyboardType: TextInputType.number,
            onChanged: (value) async {
              await ref
                  .read(
                    toolPageProvider.notifier,
                  )
                  .setToolSetting(
                    ref
                        .read(toolPageProvider)
                        .copyWith(
                          proxyPort: value,
                        ),
                  );
            },
          ),
        ),
      ],
    );
  }
}
