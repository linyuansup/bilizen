// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(VideoCommentListProvider)
const videoCommentListProvider = VideoCommentListProviderProvider._();

final class VideoCommentListProviderProvider
    extends $NotifierProvider<VideoCommentListProvider, VideoCommentListState> {
  const VideoCommentListProviderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'videoCommentListProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$videoCommentListProviderHash();

  @$internal
  @override
  VideoCommentListProvider create() => VideoCommentListProvider();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(VideoCommentListState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<VideoCommentListState>(value),
    );
  }
}

String _$videoCommentListProviderHash() =>
    r'7f434174e78fb17f7bc9753da91ab4b7ec07d438';

abstract class _$VideoCommentListProvider
    extends $Notifier<VideoCommentListState> {
  VideoCommentListState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<VideoCommentListState, VideoCommentListState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<VideoCommentListState, VideoCommentListState>,
              VideoCommentListState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
