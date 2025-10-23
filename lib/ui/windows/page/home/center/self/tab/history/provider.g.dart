// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(HistoryProvider)
const historyProvider = HistoryProviderProvider._();

final class HistoryProviderProvider
    extends $NotifierProvider<HistoryProvider, HistoryState> {
  const HistoryProviderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'historyProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$historyProviderHash();

  @$internal
  @override
  HistoryProvider create() => HistoryProvider();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(HistoryState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<HistoryState>(value),
    );
  }
}

String _$historyProviderHash() => r'f904ec41bd978166c9c5279ec7c9dc11d33765c7';

abstract class _$HistoryProvider extends $Notifier<HistoryState> {
  HistoryState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<HistoryState, HistoryState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<HistoryState, HistoryState>,
              HistoryState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
