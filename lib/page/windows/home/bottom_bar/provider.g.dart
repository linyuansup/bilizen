// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

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

String _$bottomBarProviderHash() => r'6b21a69b8d37a018210e3a81287585ed1ecaa363';

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

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
