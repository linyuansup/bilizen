// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserInfoTabState {

 int get selectedIndex;
/// Create a copy of UserInfoTabState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserInfoTabStateCopyWith<UserInfoTabState> get copyWith => _$UserInfoTabStateCopyWithImpl<UserInfoTabState>(this as UserInfoTabState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserInfoTabState&&(identical(other.selectedIndex, selectedIndex) || other.selectedIndex == selectedIndex));
}


@override
int get hashCode => Object.hash(runtimeType,selectedIndex);

@override
String toString() {
  return 'UserInfoTabState(selectedIndex: $selectedIndex)';
}


}

/// @nodoc
abstract mixin class $UserInfoTabStateCopyWith<$Res>  {
  factory $UserInfoTabStateCopyWith(UserInfoTabState value, $Res Function(UserInfoTabState) _then) = _$UserInfoTabStateCopyWithImpl;
@useResult
$Res call({
 int selectedIndex
});




}
/// @nodoc
class _$UserInfoTabStateCopyWithImpl<$Res>
    implements $UserInfoTabStateCopyWith<$Res> {
  _$UserInfoTabStateCopyWithImpl(this._self, this._then);

  final UserInfoTabState _self;
  final $Res Function(UserInfoTabState) _then;

/// Create a copy of UserInfoTabState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selectedIndex = null,}) {
  return _then(_self.copyWith(
selectedIndex: null == selectedIndex ? _self.selectedIndex : selectedIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [UserInfoTabState].
extension UserInfoTabStatePatterns on UserInfoTabState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( UserInfoTabStateDefault value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case UserInfoTabStateDefault() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( UserInfoTabStateDefault value)  $default,){
final _that = this;
switch (_that) {
case UserInfoTabStateDefault():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( UserInfoTabStateDefault value)?  $default,){
final _that = this;
switch (_that) {
case UserInfoTabStateDefault() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int selectedIndex)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case UserInfoTabStateDefault() when $default != null:
return $default(_that.selectedIndex);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int selectedIndex)  $default,) {final _that = this;
switch (_that) {
case UserInfoTabStateDefault():
return $default(_that.selectedIndex);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int selectedIndex)?  $default,) {final _that = this;
switch (_that) {
case UserInfoTabStateDefault() when $default != null:
return $default(_that.selectedIndex);case _:
  return null;

}
}

}

/// @nodoc


class UserInfoTabStateDefault implements UserInfoTabState {
  const UserInfoTabStateDefault({required this.selectedIndex});
  

@override final  int selectedIndex;

/// Create a copy of UserInfoTabState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserInfoTabStateDefaultCopyWith<UserInfoTabStateDefault> get copyWith => _$UserInfoTabStateDefaultCopyWithImpl<UserInfoTabStateDefault>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserInfoTabStateDefault&&(identical(other.selectedIndex, selectedIndex) || other.selectedIndex == selectedIndex));
}


@override
int get hashCode => Object.hash(runtimeType,selectedIndex);

@override
String toString() {
  return 'UserInfoTabState(selectedIndex: $selectedIndex)';
}


}

/// @nodoc
abstract mixin class $UserInfoTabStateDefaultCopyWith<$Res> implements $UserInfoTabStateCopyWith<$Res> {
  factory $UserInfoTabStateDefaultCopyWith(UserInfoTabStateDefault value, $Res Function(UserInfoTabStateDefault) _then) = _$UserInfoTabStateDefaultCopyWithImpl;
@override @useResult
$Res call({
 int selectedIndex
});




}
/// @nodoc
class _$UserInfoTabStateDefaultCopyWithImpl<$Res>
    implements $UserInfoTabStateDefaultCopyWith<$Res> {
  _$UserInfoTabStateDefaultCopyWithImpl(this._self, this._then);

  final UserInfoTabStateDefault _self;
  final $Res Function(UserInfoTabStateDefault) _then;

/// Create a copy of UserInfoTabState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? selectedIndex = null,}) {
  return _then(UserInfoTabStateDefault(
selectedIndex: null == selectedIndex ? _self.selectedIndex : selectedIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
