// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(CenterProvider)
const centerProvider = CenterProviderProvider._();

final class CenterProviderProvider
    extends $NotifierProvider<CenterProvider, CenterState> {
  const CenterProviderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'centerProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$centerProviderHash();

  @$internal
  @override
  CenterProvider create() => CenterProvider();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CenterState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CenterState>(value),
    );
  }
}

String _$centerProviderHash() => r'18580939da8b43efa37c5e2727b19c3738625b63';

abstract class _$CenterProvider extends $Notifier<CenterState> {
  CenterState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<CenterState, CenterState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<CenterState, CenterState>,
              CenterState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
