// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

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

String _$selfProviderHash() => r'17d2258684113a717c4ea3d42eeb0fc0ddaa4558';

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

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
