// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(BottomBarProvider)
const bottomBarProvider = BottomBarProviderProvider._();

final class BottomBarProviderProvider
    extends $NotifierProvider<BottomBarProvider, BottomBarState> {
  const BottomBarProviderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'bottomBarProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$bottomBarProviderHash();

  @$internal
  @override
  BottomBarProvider create() => BottomBarProvider();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(BottomBarState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<BottomBarState>(value),
    );
  }
}

String _$bottomBarProviderHash() => r'b30f40e853c7085d7c7601ed82c1bc53afebf651';

abstract class _$BottomBarProvider extends $Notifier<BottomBarState> {
  BottomBarState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<BottomBarState, BottomBarState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<BottomBarState, BottomBarState>,
              BottomBarState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
