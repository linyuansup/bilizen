// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(LikeListProvider)
const likeListProviderProvider = LikeListProviderProvider._();

final class LikeListProviderProvider
    extends $NotifierProvider<LikeListProvider, LikeListState> {
  const LikeListProviderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'likeListProviderProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$likeListProviderHash();

  @$internal
  @override
  LikeListProvider create() => LikeListProvider();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LikeListState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LikeListState>(value),
    );
  }
}

String _$likeListProviderHash() => r'78b7978cd9c4668093fa0fdc49a3f288810f5e0d';

abstract class _$LikeListProvider extends $Notifier<LikeListState> {
  LikeListState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<LikeListState, LikeListState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<LikeListState, LikeListState>,
              LikeListState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
