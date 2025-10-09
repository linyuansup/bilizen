// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SelfProvider)
const selfProvider = SelfProviderProvider._();

final class SelfProviderProvider
    extends $NotifierProvider<SelfProvider, SelfState> {
  const SelfProviderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'selfProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$selfProviderHash();

  @$internal
  @override
  SelfProvider create() => SelfProvider();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SelfState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SelfState>(value),
    );
  }
}

String _$selfProviderHash() => r'872a5f066d38fe2d18eeac066ca9656c34d5ecf7';

abstract class _$SelfProvider extends $Notifier<SelfState> {
  SelfState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<SelfState, SelfState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<SelfState, SelfState>,
              SelfState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
