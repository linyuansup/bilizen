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
mixin _$CommonState {

 bool get enablePlaybackHardwareAcceleration;
/// Create a copy of CommonState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommonStateCopyWith<CommonState> get copyWith => _$CommonStateCopyWithImpl<CommonState>(this as CommonState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommonState&&(identical(other.enablePlaybackHardwareAcceleration, enablePlaybackHardwareAcceleration) || other.enablePlaybackHardwareAcceleration == enablePlaybackHardwareAcceleration));
}


@override
int get hashCode => Object.hash(runtimeType,enablePlaybackHardwareAcceleration);

@override
String toString() {
  return 'CommonState(enablePlaybackHardwareAcceleration: $enablePlaybackHardwareAcceleration)';
}


}

/// @nodoc
abstract mixin class $CommonStateCopyWith<$Res>  {
  factory $CommonStateCopyWith(CommonState value, $Res Function(CommonState) _then) = _$CommonStateCopyWithImpl;
@useResult
$Res call({
 bool enablePlaybackHardwareAcceleration
});




}
/// @nodoc
class _$CommonStateCopyWithImpl<$Res>
    implements $CommonStateCopyWith<$Res> {
  _$CommonStateCopyWithImpl(this._self, this._then);

  final CommonState _self;
  final $Res Function(CommonState) _then;

/// Create a copy of CommonState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? enablePlaybackHardwareAcceleration = null,}) {
  return _then(_self.copyWith(
enablePlaybackHardwareAcceleration: null == enablePlaybackHardwareAcceleration ? _self.enablePlaybackHardwareAcceleration : enablePlaybackHardwareAcceleration // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CommonState].
extension CommonStatePatterns on CommonState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CommonState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CommonState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CommonState value)  $default,){
final _that = this;
switch (_that) {
case _CommonState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CommonState value)?  $default,){
final _that = this;
switch (_that) {
case _CommonState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool enablePlaybackHardwareAcceleration)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CommonState() when $default != null:
return $default(_that.enablePlaybackHardwareAcceleration);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool enablePlaybackHardwareAcceleration)  $default,) {final _that = this;
switch (_that) {
case _CommonState():
return $default(_that.enablePlaybackHardwareAcceleration);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool enablePlaybackHardwareAcceleration)?  $default,) {final _that = this;
switch (_that) {
case _CommonState() when $default != null:
return $default(_that.enablePlaybackHardwareAcceleration);case _:
  return null;

}
}

}

/// @nodoc


class _CommonState implements CommonState {
  const _CommonState({required this.enablePlaybackHardwareAcceleration});
  

@override final  bool enablePlaybackHardwareAcceleration;

/// Create a copy of CommonState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommonStateCopyWith<_CommonState> get copyWith => __$CommonStateCopyWithImpl<_CommonState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CommonState&&(identical(other.enablePlaybackHardwareAcceleration, enablePlaybackHardwareAcceleration) || other.enablePlaybackHardwareAcceleration == enablePlaybackHardwareAcceleration));
}


@override
int get hashCode => Object.hash(runtimeType,enablePlaybackHardwareAcceleration);

@override
String toString() {
  return 'CommonState(enablePlaybackHardwareAcceleration: $enablePlaybackHardwareAcceleration)';
}


}

/// @nodoc
abstract mixin class _$CommonStateCopyWith<$Res> implements $CommonStateCopyWith<$Res> {
  factory _$CommonStateCopyWith(_CommonState value, $Res Function(_CommonState) _then) = __$CommonStateCopyWithImpl;
@override @useResult
$Res call({
 bool enablePlaybackHardwareAcceleration
});




}
/// @nodoc
class __$CommonStateCopyWithImpl<$Res>
    implements _$CommonStateCopyWith<$Res> {
  __$CommonStateCopyWithImpl(this._self, this._then);

  final _CommonState _self;
  final $Res Function(_CommonState) _then;

/// Create a copy of CommonState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? enablePlaybackHardwareAcceleration = null,}) {
  return _then(_CommonState(
enablePlaybackHardwareAcceleration: null == enablePlaybackHardwareAcceleration ? _self.enablePlaybackHardwareAcceleration : enablePlaybackHardwareAcceleration // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
