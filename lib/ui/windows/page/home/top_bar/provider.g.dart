// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(TopBarProvider)
const topBarProvider = TopBarProviderProvider._();

final class TopBarProviderProvider
    extends $NotifierProvider<TopBarProvider, TopBarState> {
  const TopBarProviderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'topBarProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$topBarProviderHash();

  @$internal
  @override
  TopBarProvider create() => TopBarProvider();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TopBarState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TopBarState>(value),
    );
  }
}

String _$topBarProviderHash() => r'f49569dd64a6a0ec1b348afa4f2e304977606804';

abstract class _$TopBarProvider extends $Notifier<TopBarState> {
  TopBarState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<TopBarState, TopBarState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<TopBarState, TopBarState>,
              TopBarState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
