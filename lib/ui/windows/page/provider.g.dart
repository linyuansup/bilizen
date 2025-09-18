// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(UpdateToastRiverpod)
const updateToastRiverpod = UpdateToastRiverpodProvider._();

final class UpdateToastRiverpodProvider
    extends $NotifierProvider<UpdateToastRiverpod, UpdateToastState> {
  const UpdateToastRiverpodProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'updateToastRiverpod',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$updateToastRiverpodHash();

  @$internal
  @override
  UpdateToastRiverpod create() => UpdateToastRiverpod();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UpdateToastState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UpdateToastState>(value),
    );
  }
}

String _$updateToastRiverpodHash() =>
    r'30f631c7e75def81c56b5e9bbb1a7918b215562d';

abstract class _$UpdateToastRiverpod extends $Notifier<UpdateToastState> {
  UpdateToastState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<UpdateToastState, UpdateToastState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<UpdateToastState, UpdateToastState>,
              UpdateToastState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
