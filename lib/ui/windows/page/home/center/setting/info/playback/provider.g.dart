// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PlaybackProvider)
const playbackProvider = PlaybackProviderProvider._();

final class PlaybackProviderProvider
    extends $NotifierProvider<PlaybackProvider, PlaybackState> {
  const PlaybackProviderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'playbackProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$playbackProviderHash();

  @$internal
  @override
  PlaybackProvider create() => PlaybackProvider();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PlaybackState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PlaybackState>(value),
    );
  }
}

String _$playbackProviderHash() => r'4980d0bbe6807ade92a2df8c5eb3e56c4cd4cbb4';

abstract class _$PlaybackProvider extends $Notifier<PlaybackState> {
  PlaybackState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<PlaybackState, PlaybackState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<PlaybackState, PlaybackState>,
              PlaybackState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
