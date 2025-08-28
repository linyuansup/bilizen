// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(RightBarProvider)
const rightBarProvider = RightBarProviderProvider._();

final class RightBarProviderProvider
    extends $NotifierProvider<RightBarProvider, RightBarState> {
  const RightBarProviderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'rightBarProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$rightBarProviderHash();

  @$internal
  @override
  RightBarProvider create() => RightBarProvider();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RightBarState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RightBarState>(value),
    );
  }
}

String _$rightBarProviderHash() => r'362070e73be7186496c91ced614ad04aed2124b6';

abstract class _$RightBarProvider extends $Notifier<RightBarState> {
  RightBarState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<RightBarState, RightBarState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<RightBarState, RightBarState>,
              RightBarState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
