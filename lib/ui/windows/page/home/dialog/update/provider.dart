import 'dart:io';

import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/package/auto_update_manager.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:talker/talker.dart';

part 'provider.freezed.dart';
part 'provider.g.dart';

@Riverpod(keepAlive: true, name: "updateDialogProvider")
class UpdateDialogProvider extends _$UpdateDialogProvider {
  final _autoUpdate = getIt<AutoUpdateManager>();

  @override
  UpdateDialogState build() {
    return UpdateDialogState.waiting();
  }

  void startUpdate() {
    state = const UpdateDialogState.updating(0);
    _autoUpdate
        .startUpdate()
        .then((stream) {
          stream.listen(
            (event) {
              event.when(
                downloading: (progress) {
                  state = UpdateDialogState.updating(progress);
                },
                checking: () {
                  state = const UpdateDialogState.checking();
                },
                completed: () async {
                  getIt<Talker>().debug("下载完成，准备安装更新");
                  await _launchUpdateAndExit();
                },
              );
            },
            onError: (error) {
              state = UpdateDialogState.error(
                error,
              );
            },
          );
        })
        .catchError((error) {
          state = UpdateDialogState.error(
            error,
          );
        });
  }

  Future<void> _launchUpdateAndExit() async {
    try {
      final currentExecutable = Platform.resolvedExecutable;
      final currentDir = Directory(currentExecutable).parent.path;
      final updateExePath = '$currentDir${Platform.pathSeparator}update.exe';
      final updateFile = File(updateExePath);
      if (!await updateFile.exists()) {
        return;
      }
      await Process.start(
        updateExePath,
        [],
        mode: ProcessStartMode.detached,
        workingDirectory: currentDir,
      );
      await Future.delayed(const Duration(milliseconds: 500));
      exit(0);
    } catch (e) {
      getIt<Talker>().error("启动更新程序失败: $e");
      state = UpdateDialogState.error(StateError("启动更新程序失败: $e"));
    }
  }
}

@freezed
sealed class UpdateDialogState with _$UpdateDialogState {
  const factory UpdateDialogState.waiting() = _Waiting;
  const factory UpdateDialogState.updating(double progress) = _Updating;
  const factory UpdateDialogState.checking() = _Checking;
  const factory UpdateDialogState.error(Error error) = _Error;
}
