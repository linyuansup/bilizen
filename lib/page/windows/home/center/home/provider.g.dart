// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(HomePageProvider)
const homePageProvider = HomePageProviderProvider._();

final class HomePageProviderProvider
    extends $NotifierProvider<HomePageProvider, HomePageState> {
  const HomePageProviderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'homePageProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$homePageProviderHash();

  @$internal
  @override
  HomePageProvider create() => HomePageProvider();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(HomePageState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<HomePageState>(value),
    );
  }
}

String _$homePageProviderHash() => r'88c6e3fab4c30b7aa03e6781007bd4f5663bfa0a';

abstract class _$HomePageProvider extends $Notifier<HomePageState> {
  HomePageState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<HomePageState, HomePageState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<HomePageState, HomePageState>,
              HomePageState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
