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
mixin _$HotkeyRecorderState {

 Map<String, dynamic>? get currentKey;
/// Create a copy of HotkeyRecorderState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HotkeyRecorderStateCopyWith<HotkeyRecorderState> get copyWith => _$HotkeyRecorderStateCopyWithImpl<HotkeyRecorderState>(this as HotkeyRecorderState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HotkeyRecorderState&&const DeepCollectionEquality().equals(other.currentKey, currentKey));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(currentKey));

@override
String toString() {
  return 'HotkeyRecorderState(currentKey: $currentKey)';
}


}

/// @nodoc
abstract mixin class $HotkeyRecorderStateCopyWith<$Res>  {
  factory $HotkeyRecorderStateCopyWith(HotkeyRecorderState value, $Res Function(HotkeyRecorderState) _then) = _$HotkeyRecorderStateCopyWithImpl;
@useResult
$Res call({
 Map<String, dynamic>? currentKey
});




}
/// @nodoc
class _$HotkeyRecorderStateCopyWithImpl<$Res>
    implements $HotkeyRecorderStateCopyWith<$Res> {
  _$HotkeyRecorderStateCopyWithImpl(this._self, this._then);

  final HotkeyRecorderState _self;
  final $Res Function(HotkeyRecorderState) _then;

/// Create a copy of HotkeyRecorderState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentKey = freezed,}) {
  return _then(_self.copyWith(
currentKey: freezed == currentKey ? _self.currentKey : currentKey // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [HotkeyRecorderState].
extension HotkeyRecorderStatePatterns on HotkeyRecorderState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HotkeyRecorderState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HotkeyRecorderState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HotkeyRecorderState value)  $default,){
final _that = this;
switch (_that) {
case _HotkeyRecorderState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HotkeyRecorderState value)?  $default,){
final _that = this;
switch (_that) {
case _HotkeyRecorderState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Map<String, dynamic>? currentKey)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HotkeyRecorderState() when $default != null:
return $default(_that.currentKey);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Map<String, dynamic>? currentKey)  $default,) {final _that = this;
switch (_that) {
case _HotkeyRecorderState():
return $default(_that.currentKey);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Map<String, dynamic>? currentKey)?  $default,) {final _that = this;
switch (_that) {
case _HotkeyRecorderState() when $default != null:
return $default(_that.currentKey);case _:
  return null;

}
}

}

/// @nodoc


class _HotkeyRecorderState implements HotkeyRecorderState {
  const _HotkeyRecorderState({required final  Map<String, dynamic>? currentKey}): _currentKey = currentKey;
  

 final  Map<String, dynamic>? _currentKey;
@override Map<String, dynamic>? get currentKey {
  final value = _currentKey;
  if (value == null) return null;
  if (_currentKey is EqualUnmodifiableMapView) return _currentKey;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of HotkeyRecorderState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HotkeyRecorderStateCopyWith<_HotkeyRecorderState> get copyWith => __$HotkeyRecorderStateCopyWithImpl<_HotkeyRecorderState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HotkeyRecorderState&&const DeepCollectionEquality().equals(other._currentKey, _currentKey));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_currentKey));

@override
String toString() {
  return 'HotkeyRecorderState(currentKey: $currentKey)';
}


}

/// @nodoc
abstract mixin class _$HotkeyRecorderStateCopyWith<$Res> implements $HotkeyRecorderStateCopyWith<$Res> {
  factory _$HotkeyRecorderStateCopyWith(_HotkeyRecorderState value, $Res Function(_HotkeyRecorderState) _then) = __$HotkeyRecorderStateCopyWithImpl;
@override @useResult
$Res call({
 Map<String, dynamic>? currentKey
});




}
/// @nodoc
class __$HotkeyRecorderStateCopyWithImpl<$Res>
    implements _$HotkeyRecorderStateCopyWith<$Res> {
  __$HotkeyRecorderStateCopyWithImpl(this._self, this._then);

  final _HotkeyRecorderState _self;
  final $Res Function(_HotkeyRecorderState) _then;

/// Create a copy of HotkeyRecorderState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentKey = freezed,}) {
  return _then(_HotkeyRecorderState(
currentKey: freezed == currentKey ? _self._currentKey : currentKey // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}

// dart format on
