// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CommonProvider)
const commonProvider = CommonProviderProvider._();

final class CommonProviderProvider
    extends $NotifierProvider<CommonProvider, CommonState> {
  const CommonProviderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'commonProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$commonProviderHash();

  @$internal
  @override
  CommonProvider create() => CommonProvider();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CommonState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CommonState>(value),
    );
  }
}

String _$commonProviderHash() => r'3c0fd844c40b60af979d37872f807cdddea441ae';

abstract class _$CommonProvider extends $Notifier<CommonState> {
  CommonState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<CommonState, CommonState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<CommonState, CommonState>,
              CommonState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
