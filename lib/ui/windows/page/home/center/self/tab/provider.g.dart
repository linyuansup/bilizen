// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(UserInfoTabProvider)
const userInfoTabProvider = UserInfoTabProviderProvider._();

final class UserInfoTabProviderProvider
    extends $NotifierProvider<UserInfoTabProvider, UserInfoTabState> {
  const UserInfoTabProviderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userInfoTabProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userInfoTabProviderHash();

  @$internal
  @override
  UserInfoTabProvider create() => UserInfoTabProvider();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UserInfoTabState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UserInfoTabState>(value),
    );
  }
}

String _$userInfoTabProviderHash() =>
    r'e88fe51100fa8de801a0b1446e8a25e5444dc55c';

abstract class _$UserInfoTabProvider extends $Notifier<UserInfoTabState> {
  UserInfoTabState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<UserInfoTabState, UserInfoTabState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<UserInfoTabState, UserInfoTabState>,
              UserInfoTabState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
