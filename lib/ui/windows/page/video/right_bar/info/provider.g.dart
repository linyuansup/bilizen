// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(VideoInfoProvider)
const videoInfoProvider = VideoInfoProviderProvider._();

final class VideoInfoProviderProvider
    extends $NotifierProvider<VideoInfoProvider, VideoInfoState> {
  const VideoInfoProviderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'videoInfoProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$videoInfoProviderHash();

  @$internal
  @override
  VideoInfoProvider create() => VideoInfoProvider();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(VideoInfoState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<VideoInfoState>(value),
    );
  }
}

String _$videoInfoProviderHash() => r'5757a04c48eb4863d347610945b987a52b11cf86';

abstract class _$VideoInfoProvider extends $Notifier<VideoInfoState> {
  VideoInfoState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<VideoInfoState, VideoInfoState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<VideoInfoState, VideoInfoState>,
              VideoInfoState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
