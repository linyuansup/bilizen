// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(TopBarProvider)
const topBarProvider = TopBarProviderProvider._();

final class TopBarProviderProvider
    extends $NotifierProvider<TopBarProvider, TopBarState> {
  const TopBarProviderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'topBarProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$topBarProviderHash();

  @$internal
  @override
  TopBarProvider create() => TopBarProvider();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TopBarState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TopBarState>(value),
    );
  }
}

String _$topBarProviderHash() => r'2d58ce8e62211978bb39a938ddf4254fa6943ad0';

abstract class _$TopBarProvider extends $Notifier<TopBarState> {
  TopBarState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<TopBarState, TopBarState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<TopBarState, TopBarState>,
              TopBarState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
