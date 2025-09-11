// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(LeftBarProvider)
const leftBarProvider = LeftBarProviderProvider._();

final class LeftBarProviderProvider
    extends $NotifierProvider<LeftBarProvider, LeftBarState> {
  const LeftBarProviderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'leftBarProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$leftBarProviderHash();

  @$internal
  @override
  LeftBarProvider create() => LeftBarProvider();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LeftBarState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LeftBarState>(value),
    );
  }
}

String _$leftBarProviderHash() => r'45a8c20862a660c89877018568bc108fbaf5421a';

abstract class _$LeftBarProvider extends $Notifier<LeftBarState> {
  LeftBarState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<LeftBarState, LeftBarState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<LeftBarState, LeftBarState>,
              LeftBarState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
