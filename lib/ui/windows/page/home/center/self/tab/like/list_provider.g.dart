// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

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
