// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(LeftBarProvider)
const leftBarProvider = LeftBarProviderProvider._();

final class LeftBarProviderProvider
    extends $NotifierProvider<LeftBarProvider, LeftBarState> {
  const LeftBarProviderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'leftBarProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$leftBarProviderHash();

  @$internal
  @override
  LeftBarProvider create() => LeftBarProvider();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LeftBarState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LeftBarState>(value),
    );
  }
}

String _$leftBarProviderHash() => r'45a8c20862a660c89877018568bc108fbaf5421a';

abstract class _$LeftBarProvider extends $Notifier<LeftBarState> {
  LeftBarState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<LeftBarState, LeftBarState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<LeftBarState, LeftBarState>,
              LeftBarState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
