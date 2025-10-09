// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fav_data_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

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

String _$favDataProviderHash() => r'bc8046c00897e0fbc49690a8a454c97522dd7681';

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
