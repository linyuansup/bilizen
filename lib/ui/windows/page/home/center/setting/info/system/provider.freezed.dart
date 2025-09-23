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
mixin _$SystemState {

 CloseMainPanelAction get closeMainPanelAction;
/// Create a copy of SystemState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SystemStateCopyWith<SystemState> get copyWith => _$SystemStateCopyWithImpl<SystemState>(this as SystemState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SystemState&&(identical(other.closeMainPanelAction, closeMainPanelAction) || other.closeMainPanelAction == closeMainPanelAction));
}


@override
int get hashCode => Object.hash(runtimeType,closeMainPanelAction);

@override
String toString() {
  return 'SystemState(closeMainPanelAction: $closeMainPanelAction)';
}


}

/// @nodoc
abstract mixin class $SystemStateCopyWith<$Res>  {
  factory $SystemStateCopyWith(SystemState value, $Res Function(SystemState) _then) = _$SystemStateCopyWithImpl;
@useResult
$Res call({
 CloseMainPanelAction closeMainPanelAction
});




}
/// @nodoc
class _$SystemStateCopyWithImpl<$Res>
    implements $SystemStateCopyWith<$Res> {
  _$SystemStateCopyWithImpl(this._self, this._then);

  final SystemState _self;
  final $Res Function(SystemState) _then;

/// Create a copy of SystemState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? closeMainPanelAction = null,}) {
  return _then(_self.copyWith(
closeMainPanelAction: null == closeMainPanelAction ? _self.closeMainPanelAction : closeMainPanelAction // ignore: cast_nullable_to_non_nullable
as CloseMainPanelAction,
  ));
}

}


/// Adds pattern-matching-related methods to [SystemState].
extension SystemStatePatterns on SystemState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SystemState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SystemState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SystemState value)  $default,){
final _that = this;
switch (_that) {
case _SystemState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SystemState value)?  $default,){
final _that = this;
switch (_that) {
case _SystemState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CloseMainPanelAction closeMainPanelAction)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SystemState() when $default != null:
return $default(_that.closeMainPanelAction);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CloseMainPanelAction closeMainPanelAction)  $default,) {final _that = this;
switch (_that) {
case _SystemState():
return $default(_that.closeMainPanelAction);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CloseMainPanelAction closeMainPanelAction)?  $default,) {final _that = this;
switch (_that) {
case _SystemState() when $default != null:
return $default(_that.closeMainPanelAction);case _:
  return null;

}
}

}

/// @nodoc


class _SystemState implements SystemState {
  const _SystemState({required this.closeMainPanelAction});
  

@override final  CloseMainPanelAction closeMainPanelAction;

/// Create a copy of SystemState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SystemStateCopyWith<_SystemState> get copyWith => __$SystemStateCopyWithImpl<_SystemState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SystemState&&(identical(other.closeMainPanelAction, closeMainPanelAction) || other.closeMainPanelAction == closeMainPanelAction));
}


@override
int get hashCode => Object.hash(runtimeType,closeMainPanelAction);

@override
String toString() {
  return 'SystemState(closeMainPanelAction: $closeMainPanelAction)';
}


}

/// @nodoc
abstract mixin class _$SystemStateCopyWith<$Res> implements $SystemStateCopyWith<$Res> {
  factory _$SystemStateCopyWith(_SystemState value, $Res Function(_SystemState) _then) = __$SystemStateCopyWithImpl;
@override @useResult
$Res call({
 CloseMainPanelAction closeMainPanelAction
});




}
/// @nodoc
class __$SystemStateCopyWithImpl<$Res>
    implements _$SystemStateCopyWith<$Res> {
  __$SystemStateCopyWithImpl(this._self, this._then);

  final _SystemState _self;
  final $Res Function(_SystemState) _then;

/// Create a copy of SystemState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? closeMainPanelAction = null,}) {
  return _then(_SystemState(
closeMainPanelAction: null == closeMainPanelAction ? _self.closeMainPanelAction : closeMainPanelAction // ignore: cast_nullable_to_non_nullable
as CloseMainPanelAction,
  ));
}


}

// dart format on
