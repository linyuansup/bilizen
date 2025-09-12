// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

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
    r'a0badf91b9861176190d1c50636891a4a9856557';

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

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
