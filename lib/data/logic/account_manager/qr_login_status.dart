import 'package:freezed_annotation/freezed_annotation.dart';

part 'qr_login_status.freezed.dart';

@freezed
sealed class QrLoginStatus with _$QrLoginStatus {
  const factory QrLoginStatus.waitingForScan({
    required String qrCode,
    required String token,
  }) = QrLoginWaitingForScan;
  const factory QrLoginStatus.scanned({
    required String qrCode,
    required String token,
  }) = QrLoginScanned;
  const factory QrLoginStatus.timeout() = QrLoginTimeout;
}
