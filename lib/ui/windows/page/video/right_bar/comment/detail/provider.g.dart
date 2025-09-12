// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

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
    r'54eb23db2ad3528bc87fb7fc11a8cfc9b22d2b49';

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

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
