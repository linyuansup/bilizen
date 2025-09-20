// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(UpdateDialogProvider)
const updateDialogProvider = UpdateDialogProviderProvider._();

final class UpdateDialogProviderProvider
    extends $NotifierProvider<UpdateDialogProvider, UpdateDialogState> {
  const UpdateDialogProviderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'updateDialogProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$updateDialogProviderHash();

  @$internal
  @override
  UpdateDialogProvider create() => UpdateDialogProvider();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UpdateDialogState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UpdateDialogState>(value),
    );
  }
}

String _$updateDialogProviderHash() =>
    r'76a7d93f3ebf0b70aaee7521d2dc0d8e5187b235';

abstract class _$UpdateDialogProvider extends $Notifier<UpdateDialogState> {
  UpdateDialogState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<UpdateDialogState, UpdateDialogState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<UpdateDialogState, UpdateDialogState>,
              UpdateDialogState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
