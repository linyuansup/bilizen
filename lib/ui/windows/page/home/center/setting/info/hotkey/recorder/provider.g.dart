// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(HotkeyRecorderProvider)
const hotkeyRecorderProvider = HotkeyRecorderProviderProvider._();

final class HotkeyRecorderProviderProvider
    extends $NotifierProvider<HotkeyRecorderProvider, HotkeyRecorderState> {
  const HotkeyRecorderProviderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'hotkeyRecorderProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$hotkeyRecorderProviderHash();

  @$internal
  @override
  HotkeyRecorderProvider create() => HotkeyRecorderProvider();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(HotkeyRecorderState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<HotkeyRecorderState>(value),
    );
  }
}

String _$hotkeyRecorderProviderHash() =>
    r'9a3d0b88b2991bb9e032d8eeb094431e47187dc5';

abstract class _$HotkeyRecorderProvider extends $Notifier<HotkeyRecorderState> {
  HotkeyRecorderState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<HotkeyRecorderState, HotkeyRecorderState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<HotkeyRecorderState, HotkeyRecorderState>,
              HotkeyRecorderState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
