// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fav_data_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(FavDataProvider)
const favDataProvider = FavDataProviderProvider._();

final class FavDataProviderProvider
    extends $NotifierProvider<FavDataProvider, FavDataState> {
  const FavDataProviderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'favDataProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$favDataProviderHash();

  @$internal
  @override
  FavDataProvider create() => FavDataProvider();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FavDataState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FavDataState>(value),
    );
  }
}

String _$favDataProviderHash() => r'f3f70c52da6cbcd91b72cdf614ad7c94aa31fce1';

abstract class _$FavDataProvider extends $Notifier<FavDataState> {
  FavDataState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<FavDataState, FavDataState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<FavDataState, FavDataState>,
              FavDataState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
