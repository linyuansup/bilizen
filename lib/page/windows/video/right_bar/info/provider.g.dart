// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

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

String _$videoInfoProviderHash() => r'75490fd8fe6544f7aaf200babda92dff8a398a62';

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

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
