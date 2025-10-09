// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(HotkeyProvider)
const hotKeyProvider = HotkeyProviderProvider._();

final class HotkeyProviderProvider
    extends $NotifierProvider<HotkeyProvider, HotkeyState> {
  const HotkeyProviderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'hotKeyProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$hotkeyProviderHash();

  @$internal
  @override
  HotkeyProvider create() => HotkeyProvider();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(HotkeyState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<HotkeyState>(value),
    );
  }
}

String _$hotkeyProviderHash() => r'aabfa4296c6b9ded54c6ef17eaec64f5690c0626';

abstract class _$HotkeyProvider extends $Notifier<HotkeyState> {
  HotkeyState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<HotkeyState, HotkeyState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<HotkeyState, HotkeyState>,
              HotkeyState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
