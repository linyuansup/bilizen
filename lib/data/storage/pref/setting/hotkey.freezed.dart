// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hotkey.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HotkeySetting {

 List<HotKeyStorageElement> get hotkeys;
/// Create a copy of HotkeySetting
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HotkeySettingCopyWith<HotkeySetting> get copyWith => _$HotkeySettingCopyWithImpl<HotkeySetting>(this as HotkeySetting, _$identity);

  /// Serializes this HotkeySetting to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HotkeySetting&&const DeepCollectionEquality().equals(other.hotkeys, hotkeys));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(hotkeys));

@override
String toString() {
  return 'HotkeySetting(hotkeys: $hotkeys)';
}


}

/// @nodoc
abstract mixin class $HotkeySettingCopyWith<$Res>  {
  factory $HotkeySettingCopyWith(HotkeySetting value, $Res Function(HotkeySetting) _then) = _$HotkeySettingCopyWithImpl;
@useResult
$Res call({
 List<HotKeyStorageElement> hotkeys
});




}
/// @nodoc
class _$HotkeySettingCopyWithImpl<$Res>
    implements $HotkeySettingCopyWith<$Res> {
  _$HotkeySettingCopyWithImpl(this._self, this._then);

  final HotkeySetting _self;
  final $Res Function(HotkeySetting) _then;

/// Create a copy of HotkeySetting
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? hotkeys = null,}) {
  return _then(_self.copyWith(
hotkeys: null == hotkeys ? _self.hotkeys : hotkeys // ignore: cast_nullable_to_non_nullable
as List<HotKeyStorageElement>,
  ));
}

}


/// Adds pattern-matching-related methods to [HotkeySetting].
extension HotkeySettingPatterns on HotkeySetting {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HotkeySetting value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HotkeySetting() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HotkeySetting value)  $default,){
final _that = this;
switch (_that) {
case _HotkeySetting():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HotkeySetting value)?  $default,){
final _that = this;
switch (_that) {
case _HotkeySetting() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<HotKeyStorageElement> hotkeys)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HotkeySetting() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<HotKeyStorageElement> hotkeys)  $default,) {final _that = this;
switch (_that) {
case _HotkeySetting():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<HotKeyStorageElement> hotkeys)?  $default,) {final _that = this;
switch (_that) {
case _HotkeySetting() when $default != null:
return $default(_that.hotkeys);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HotkeySetting implements HotkeySetting {
  const _HotkeySetting({required final  List<HotKeyStorageElement> hotkeys}): _hotkeys = hotkeys;
  factory _HotkeySetting.fromJson(Map<String, dynamic> json) => _$HotkeySettingFromJson(json);

 final  List<HotKeyStorageElement> _hotkeys;
@override List<HotKeyStorageElement> get hotkeys {
  if (_hotkeys is EqualUnmodifiableListView) return _hotkeys;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_hotkeys);
}


/// Create a copy of HotkeySetting
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HotkeySettingCopyWith<_HotkeySetting> get copyWith => __$HotkeySettingCopyWithImpl<_HotkeySetting>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HotkeySettingToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HotkeySetting&&const DeepCollectionEquality().equals(other._hotkeys, _hotkeys));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_hotkeys));

@override
String toString() {
  return 'HotkeySetting(hotkeys: $hotkeys)';
}


}

/// @nodoc
abstract mixin class _$HotkeySettingCopyWith<$Res> implements $HotkeySettingCopyWith<$Res> {
  factory _$HotkeySettingCopyWith(_HotkeySetting value, $Res Function(_HotkeySetting) _then) = __$HotkeySettingCopyWithImpl;
@override @useResult
$Res call({
 List<HotKeyStorageElement> hotkeys
});




}
/// @nodoc
class __$HotkeySettingCopyWithImpl<$Res>
    implements _$HotkeySettingCopyWith<$Res> {
  __$HotkeySettingCopyWithImpl(this._self, this._then);

  final _HotkeySetting _self;
  final $Res Function(_HotkeySetting) _then;

/// Create a copy of HotkeySetting
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? hotkeys = null,}) {
  return _then(_HotkeySetting(
hotkeys: null == hotkeys ? _self._hotkeys : hotkeys // ignore: cast_nullable_to_non_nullable
as List<HotKeyStorageElement>,
  ));
}


}

// dart format on
