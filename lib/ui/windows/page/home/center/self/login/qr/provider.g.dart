// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(QrCodeLoginProvider)
const qrCodeLoginProvider = QrCodeLoginProviderProvider._();

final class QrCodeLoginProviderProvider
    extends $NotifierProvider<QrCodeLoginProvider, QrCodeLoginState> {
  const QrCodeLoginProviderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'qrCodeLoginProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$qrCodeLoginProviderHash();

  @$internal
  @override
  QrCodeLoginProvider create() => QrCodeLoginProvider();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(QrCodeLoginState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<QrCodeLoginState>(value),
    );
  }
}

String _$qrCodeLoginProviderHash() =>
    r'7c2f14f6ec9a97c7b65734f15c9483d941662068';

abstract class _$QrCodeLoginProvider extends $Notifier<QrCodeLoginState> {
  QrCodeLoginState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<QrCodeLoginState, QrCodeLoginState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<QrCodeLoginState, QrCodeLoginState>,
              QrCodeLoginState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
