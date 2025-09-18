import 'dart:async';
import 'dart:io';

import 'package:bilizen/data/api/github/update.dart';
import 'package:crypto/crypto.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auto_update_manager.freezed.dart';

const _kCurrentVersion = "v2025-09-17";
typedef GithubUpdateData = Map<String, dynamic>;

@freezed
sealed class DownloadState with _$DownloadState {
  const factory DownloadState.downloading(double progress) = _Downloading;
  const factory DownloadState.checking() = _Checking;
  const factory DownloadState.completed() = _Completed;
}

class UpdateInfo {
  final String downloadUrl;
  final String digest;

  UpdateInfo({required this.downloadUrl, required this.digest});
}

@singleton
class AutoUpdateManager {
  final GithubUpdateApi _githubUpdateApi;
  final Dio _dio;

  AutoUpdateManager(this._githubUpdateApi, this._dio);

  Future<Stream<DownloadState>> startUpdate() async {
    final latestReleaseInfo = await _githubUpdateApi.getLatestReleaseInfo();
    final updateInfo = await _updateInfo(latestReleaseInfo);
    if (updateInfo == null) {
      return Stream.error(Exception('No download url available'));
    }
    late StreamController<DownloadState> controller;
    controller = StreamController<DownloadState>(
      onListen: () async {
        try {
          final response = await _dio.download(
            updateInfo.downloadUrl,
            './bilizen-latest.zip',
            onReceiveProgress: (received, total) {
              if (total != -1 && !controller.isClosed) {
                double value = received / total;
                if (value >= 1) {
                  value = 0.99;
                }
                controller.add(DownloadState.downloading(value));
              }
            },
          );

          if (response.statusCode == 200) {
            if (!controller.isClosed) {
              controller.add(DownloadState.checking());
              final success = await compute(_checkSha256, updateInfo.digest);
              if (success) {
                controller.add(DownloadState.completed());
              } else {
                controller.addError(Exception('SHA256 check failed'));
              }
            }
          } else {
            if (!controller.isClosed) {
              controller.addError(Exception('Failed to download update'));
            }
          }
        } catch (e) {
          if (!controller.isClosed) {
            controller.addError(e);
          }
        } finally {
          if (!controller.isClosed) {
            controller.close();
          }
        }
      },
    );

    return controller.stream;
  }

  Future<UpdateInfo?> _updateInfo(GithubUpdateData latestReleaseInfo) async {
    final newVersionTag = _newVersionTag(latestReleaseInfo);
    if (newVersionTag == null) {
      return null;
    }
    final assets = latestReleaseInfo['assets'] as List<dynamic>?;
    if (assets == null || assets.isEmpty) {
      return null;
    }
    final targetName = _getTargetName(newVersionTag.substring(1));
    final asset = assets.firstWhere(
      (asset) => (asset['name'] as String?) == targetName,
      orElse: () => null,
    );
    if (asset == null) {
      return null;
    }
    final downloadUrl = asset['browser_download_url'] as String?;
    final digest = asset['digest'] as String?;
    if (downloadUrl == null || digest == null) {
      return null;
    }
    final sha256 = digest.substring(
      digest.indexOf('sha256:') + 7,
      digest.indexOf('\n', digest.indexOf('sha256:')),
    );
    return UpdateInfo(downloadUrl: downloadUrl, digest: sha256);
  }

  Future<bool> hasNewVersion() async {
    final latestReleaseInfo = await _githubUpdateApi.getLatestReleaseInfo();
    final newVersionTag = _newVersionTag(latestReleaseInfo);
    return newVersionTag != null;
  }

  String? _newVersionTag(GithubUpdateData latestReleaseInfo) {
    final latestVersion = latestReleaseInfo['tag_name'] as String?;
    if (latestVersion == null) {
      return null;
    }
    return latestVersion != _kCurrentVersion ? latestVersion : null;
  }

  String _getTargetName(String newVersionTag) {
    final platform = "windows";
    return "bilizen-$platform-release-$newVersionTag.zip";
  }

  Future<bool> _checkSha256(String digest) async {
    final file = File('./bilizen-latest.zip');
    if (!await file.exists()) {
      return false;
    }
    try {
      final bytes = await file.readAsBytes();
      final hash = sha256.convert(bytes);
      final calculatedDigest = hash.toString();
      return calculatedDigest.toLowerCase() == digest.toLowerCase();
    } catch (e) {
      return false;
    }
  }
}
