// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

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

String _$rightBarProviderHash() => r'1a1d90581a856fbbc3d35fea57d4d9186debfa77';

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
