// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ToolPageProvider)
const toolPageProvider = ToolPageProviderProvider._();

final class ToolPageProviderProvider
    extends $NotifierProvider<ToolPageProvider, ToolPageState> {
  const ToolPageProviderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'toolPageProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$toolPageProviderHash();

  @$internal
  @override
  ToolPageProvider create() => ToolPageProvider();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ToolPageState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ToolPageState>(value),
    );
  }
}

String _$toolPageProviderHash() => r'7fd6ed31239317ba30816ad2dda9a238fa14a827';

abstract class _$ToolPageProvider extends $Notifier<ToolPageState> {
  ToolPageState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<ToolPageState, ToolPageState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ToolPageState, ToolPageState>,
              ToolPageState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
