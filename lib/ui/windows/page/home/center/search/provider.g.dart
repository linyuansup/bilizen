// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(SearchPageProvider)
const searchPageProvider = SearchPageProviderProvider._();

final class SearchPageProviderProvider
    extends $NotifierProvider<SearchPageProvider, SearchPageState> {
  const SearchPageProviderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'searchPageProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$searchPageProviderHash();

  @$internal
  @override
  SearchPageProvider create() => SearchPageProvider();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SearchPageState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SearchPageState>(value),
    );
  }
}

String _$searchPageProviderHash() =>
    r'7263a8385ec1febe4b7c46acbfb4398c50aab832';

abstract class _$SearchPageProvider extends $Notifier<SearchPageState> {
  SearchPageState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<SearchPageState, SearchPageState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<SearchPageState, SearchPageState>,
              SearchPageState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
