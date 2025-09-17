// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(VideoCommentDetailProvider)
const videoCommentDetailProvider = VideoCommentDetailProviderProvider._();

final class VideoCommentDetailProviderProvider
    extends
        $NotifierProvider<VideoCommentDetailProvider, VideoCommentDetailState> {
  const VideoCommentDetailProviderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'videoCommentDetailProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$videoCommentDetailProviderHash();

  @$internal
  @override
  VideoCommentDetailProvider create() => VideoCommentDetailProvider();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(VideoCommentDetailState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<VideoCommentDetailState>(value),
    );
  }
}

String _$videoCommentDetailProviderHash() =>
    r'0329c058f52a507b2d8f4d621a620e7d09d7095d';

abstract class _$VideoCommentDetailProvider
    extends $Notifier<VideoCommentDetailState> {
  VideoCommentDetailState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<VideoCommentDetailState, VideoCommentDetailState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<VideoCommentDetailState, VideoCommentDetailState>,
              VideoCommentDetailState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
