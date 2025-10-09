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
mixin _$HotkeyState {

 List<HotKeyElement> get hotkeys;
/// Create a copy of HotkeyState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HotkeyStateCopyWith<HotkeyState> get copyWith => _$HotkeyStateCopyWithImpl<HotkeyState>(this as HotkeyState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HotkeyState&&const DeepCollectionEquality().equals(other.hotkeys, hotkeys));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(hotkeys));

@override
String toString() {
  return 'HotkeyState(hotkeys: $hotkeys)';
}


}

/// @nodoc
abstract mixin class $HotkeyStateCopyWith<$Res>  {
  factory $HotkeyStateCopyWith(HotkeyState value, $Res Function(HotkeyState) _then) = _$HotkeyStateCopyWithImpl;
@useResult
$Res call({
 List<HotKeyElement> hotkeys
});




}
/// @nodoc
class _$HotkeyStateCopyWithImpl<$Res>
    implements $HotkeyStateCopyWith<$Res> {
  _$HotkeyStateCopyWithImpl(this._self, this._then);

  final HotkeyState _self;
  final $Res Function(HotkeyState) _then;

/// Create a copy of HotkeyState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? hotkeys = null,}) {
  return _then(_self.copyWith(
hotkeys: null == hotkeys ? _self.hotkeys : hotkeys // ignore: cast_nullable_to_non_nullable
as List<HotKeyElement>,
  ));
}

}


/// Adds pattern-matching-related methods to [HotkeyState].
extension HotkeyStatePatterns on HotkeyState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HotkeyState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HotkeyState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HotkeyState value)  $default,){
final _that = this;
switch (_that) {
case _HotkeyState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HotkeyState value)?  $default,){
final _that = this;
switch (_that) {
case _HotkeyState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<HotKeyElement> hotkeys)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HotkeyState() when $default != null:
return $default(_that.hotkeys);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<HotKeyElement> hotkeys)  $default,) {final _that = this;
switch (_that) {
case _HotkeyState():
return $default(_that.hotkeys);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<HotKeyElement> hotkeys)?  $default,) {final _that = this;
switch (_that) {
case _HotkeyState() when $default != null:
return $default(_that.hotkeys);case _:
  return null;

}
}

}

/// @nodoc


class _HotkeyState implements HotkeyState {
  const _HotkeyState({required final  List<HotKeyElement> hotkeys}): _hotkeys = hotkeys;
  

 final  List<HotKeyElement> _hotkeys;
@override List<HotKeyElement> get hotkeys {
  if (_hotkeys is EqualUnmodifiableListView) return _hotkeys;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_hotkeys);
}


/// Create a copy of HotkeyState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HotkeyStateCopyWith<_HotkeyState> get copyWith => __$HotkeyStateCopyWithImpl<_HotkeyState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HotkeyState&&const DeepCollectionEquality().equals(other._hotkeys, _hotkeys));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_hotkeys));

@override
String toString() {
  return 'HotkeyState(hotkeys: $hotkeys)';
}


}

/// @nodoc
abstract mixin class _$HotkeyStateCopyWith<$Res> implements $HotkeyStateCopyWith<$Res> {
  factory _$HotkeyStateCopyWith(_HotkeyState value, $Res Function(_HotkeyState) _then) = __$HotkeyStateCopyWithImpl;
@override @useResult
$Res call({
 List<HotKeyElement> hotkeys
});




}
/// @nodoc
class __$HotkeyStateCopyWithImpl<$Res>
    implements _$HotkeyStateCopyWith<$Res> {
  __$HotkeyStateCopyWithImpl(this._self, this._then);

  final _HotkeyState _self;
  final $Res Function(_HotkeyState) _then;

/// Create a copy of HotkeyState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? hotkeys = null,}) {
  return _then(_HotkeyState(
hotkeys: null == hotkeys ? _self._hotkeys : hotkeys // ignore: cast_nullable_to_non_nullable
as List<HotKeyElement>,
  ));
}


}

/// @nodoc
mixin _$HotKeyElement {

 HotKeyAction get action; Map<String, dynamic>? get jsonKey; Map<String, dynamic>? get globalJsonKey;
/// Create a copy of HotKeyElement
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HotKeyElementCopyWith<HotKeyElement> get copyWith => _$HotKeyElementCopyWithImpl<HotKeyElement>(this as HotKeyElement, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HotKeyElement&&(identical(other.action, action) || other.action == action)&&const DeepCollectionEquality().equals(other.jsonKey, jsonKey)&&const DeepCollectionEquality().equals(other.globalJsonKey, globalJsonKey));
}


@override
int get hashCode => Object.hash(runtimeType,action,const DeepCollectionEquality().hash(jsonKey),const DeepCollectionEquality().hash(globalJsonKey));

@override
String toString() {
  return 'HotKeyElement(action: $action, jsonKey: $jsonKey, globalJsonKey: $globalJsonKey)';
}


}

/// @nodoc
abstract mixin class $HotKeyElementCopyWith<$Res>  {
  factory $HotKeyElementCopyWith(HotKeyElement value, $Res Function(HotKeyElement) _then) = _$HotKeyElementCopyWithImpl;
@useResult
$Res call({
 HotKeyAction action, Map<String, dynamic>? jsonKey, Map<String, dynamic>? globalJsonKey
});




}
/// @nodoc
class _$HotKeyElementCopyWithImpl<$Res>
    implements $HotKeyElementCopyWith<$Res> {
  _$HotKeyElementCopyWithImpl(this._self, this._then);

  final HotKeyElement _self;
  final $Res Function(HotKeyElement) _then;

/// Create a copy of HotKeyElement
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? action = null,Object? jsonKey = freezed,Object? globalJsonKey = freezed,}) {
  return _then(_self.copyWith(
action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as HotKeyAction,jsonKey: freezed == jsonKey ? _self.jsonKey : jsonKey // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,globalJsonKey: freezed == globalJsonKey ? _self.globalJsonKey : globalJsonKey // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [HotKeyElement].
extension HotKeyElementPatterns on HotKeyElement {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HotKeyElement value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HotKeyElement() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HotKeyElement value)  $default,){
final _that = this;
switch (_that) {
case _HotKeyElement():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HotKeyElement value)?  $default,){
final _that = this;
switch (_that) {
case _HotKeyElement() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( HotKeyAction action,  Map<String, dynamic>? jsonKey,  Map<String, dynamic>? globalJsonKey)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HotKeyElement() when $default != null:
return $default(_that.action,_that.jsonKey,_that.globalJsonKey);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( HotKeyAction action,  Map<String, dynamic>? jsonKey,  Map<String, dynamic>? globalJsonKey)  $default,) {final _that = this;
switch (_that) {
case _HotKeyElement():
return $default(_that.action,_that.jsonKey,_that.globalJsonKey);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( HotKeyAction action,  Map<String, dynamic>? jsonKey,  Map<String, dynamic>? globalJsonKey)?  $default,) {final _that = this;
switch (_that) {
case _HotKeyElement() when $default != null:
return $default(_that.action,_that.jsonKey,_that.globalJsonKey);case _:
  return null;

}
}

}

/// @nodoc


class _HotKeyElement implements HotKeyElement {
  const _HotKeyElement({required this.action, required final  Map<String, dynamic>? jsonKey, required final  Map<String, dynamic>? globalJsonKey}): _jsonKey = jsonKey,_globalJsonKey = globalJsonKey;
  

@override final  HotKeyAction action;
 final  Map<String, dynamic>? _jsonKey;
@override Map<String, dynamic>? get jsonKey {
  final value = _jsonKey;
  if (value == null) return null;
  if (_jsonKey is EqualUnmodifiableMapView) return _jsonKey;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  Map<String, dynamic>? _globalJsonKey;
@override Map<String, dynamic>? get globalJsonKey {
  final value = _globalJsonKey;
  if (value == null) return null;
  if (_globalJsonKey is EqualUnmodifiableMapView) return _globalJsonKey;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of HotKeyElement
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HotKeyElementCopyWith<_HotKeyElement> get copyWith => __$HotKeyElementCopyWithImpl<_HotKeyElement>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HotKeyElement&&(identical(other.action, action) || other.action == action)&&const DeepCollectionEquality().equals(other._jsonKey, _jsonKey)&&const DeepCollectionEquality().equals(other._globalJsonKey, _globalJsonKey));
}


@override
int get hashCode => Object.hash(runtimeType,action,const DeepCollectionEquality().hash(_jsonKey),const DeepCollectionEquality().hash(_globalJsonKey));

@override
String toString() {
  return 'HotKeyElement(action: $action, jsonKey: $jsonKey, globalJsonKey: $globalJsonKey)';
}


}

/// @nodoc
abstract mixin class _$HotKeyElementCopyWith<$Res> implements $HotKeyElementCopyWith<$Res> {
  factory _$HotKeyElementCopyWith(_HotKeyElement value, $Res Function(_HotKeyElement) _then) = __$HotKeyElementCopyWithImpl;
@override @useResult
$Res call({
 HotKeyAction action, Map<String, dynamic>? jsonKey, Map<String, dynamic>? globalJsonKey
});




}
/// @nodoc
class __$HotKeyElementCopyWithImpl<$Res>
    implements _$HotKeyElementCopyWith<$Res> {
  __$HotKeyElementCopyWithImpl(this._self, this._then);

  final _HotKeyElement _self;
  final $Res Function(_HotKeyElement) _then;

/// Create a copy of HotKeyElement
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? action = null,Object? jsonKey = freezed,Object? globalJsonKey = freezed,}) {
  return _then(_HotKeyElement(
action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as HotKeyAction,jsonKey: freezed == jsonKey ? _self._jsonKey : jsonKey // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,globalJsonKey: freezed == globalJsonKey ? _self._globalJsonKey : globalJsonKey // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}

// dart format on
