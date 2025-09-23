// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SystemProvider)
const systemProvider = SystemProviderProvider._();

final class SystemProviderProvider
    extends $NotifierProvider<SystemProvider, SystemState> {
  const SystemProviderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'systemProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$systemProviderHash();

  @$internal
  @override
  SystemProvider create() => SystemProvider();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SystemState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SystemState>(value),
    );
  }
}

String _$systemProviderHash() => r'3a41e5cba5493e736c55d58eb95f9bce2734f0d4';

abstract class _$SystemProvider extends $Notifier<SystemState> {
  SystemState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<SystemState, SystemState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<SystemState, SystemState>,
              SystemState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
