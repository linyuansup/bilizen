// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'system.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SystemSetting {

 bool get closeMainPanelToTray;
/// Create a copy of SystemSetting
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SystemSettingCopyWith<SystemSetting> get copyWith => _$SystemSettingCopyWithImpl<SystemSetting>(this as SystemSetting, _$identity);

  /// Serializes this SystemSetting to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SystemSetting&&(identical(other.closeMainPanelToTray, closeMainPanelToTray) || other.closeMainPanelToTray == closeMainPanelToTray));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,closeMainPanelToTray);

@override
String toString() {
  return 'SystemSetting(closeMainPanelToTray: $closeMainPanelToTray)';
}


}

/// @nodoc
abstract mixin class $SystemSettingCopyWith<$Res>  {
  factory $SystemSettingCopyWith(SystemSetting value, $Res Function(SystemSetting) _then) = _$SystemSettingCopyWithImpl;
@useResult
$Res call({
 bool closeMainPanelToTray
});




}
/// @nodoc
class _$SystemSettingCopyWithImpl<$Res>
    implements $SystemSettingCopyWith<$Res> {
  _$SystemSettingCopyWithImpl(this._self, this._then);

  final SystemSetting _self;
  final $Res Function(SystemSetting) _then;

/// Create a copy of SystemSetting
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? closeMainPanelToTray = null,}) {
  return _then(_self.copyWith(
closeMainPanelToTray: null == closeMainPanelToTray ? _self.closeMainPanelToTray : closeMainPanelToTray // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SystemSetting].
extension SystemSettingPatterns on SystemSetting {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SystemSetting value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SystemSetting() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SystemSetting value)  $default,){
final _that = this;
switch (_that) {
case _SystemSetting():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SystemSetting value)?  $default,){
final _that = this;
switch (_that) {
case _SystemSetting() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool closeMainPanelToTray)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SystemSetting() when $default != null:
return $default(_that.closeMainPanelToTray);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool closeMainPanelToTray)  $default,) {final _that = this;
switch (_that) {
case _SystemSetting():
return $default(_that.closeMainPanelToTray);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool closeMainPanelToTray)?  $default,) {final _that = this;
switch (_that) {
case _SystemSetting() when $default != null:
return $default(_that.closeMainPanelToTray);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SystemSetting implements SystemSetting {
  const _SystemSetting({required this.closeMainPanelToTray});
  factory _SystemSetting.fromJson(Map<String, dynamic> json) => _$SystemSettingFromJson(json);

@override final  bool closeMainPanelToTray;

/// Create a copy of SystemSetting
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SystemSettingCopyWith<_SystemSetting> get copyWith => __$SystemSettingCopyWithImpl<_SystemSetting>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SystemSettingToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SystemSetting&&(identical(other.closeMainPanelToTray, closeMainPanelToTray) || other.closeMainPanelToTray == closeMainPanelToTray));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,closeMainPanelToTray);

@override
String toString() {
  return 'SystemSetting(closeMainPanelToTray: $closeMainPanelToTray)';
}


}

/// @nodoc
abstract mixin class _$SystemSettingCopyWith<$Res> implements $SystemSettingCopyWith<$Res> {
  factory _$SystemSettingCopyWith(_SystemSetting value, $Res Function(_SystemSetting) _then) = __$SystemSettingCopyWithImpl;
@override @useResult
$Res call({
 bool closeMainPanelToTray
});




}
/// @nodoc
class __$SystemSettingCopyWithImpl<$Res>
    implements _$SystemSettingCopyWith<$Res> {
  __$SystemSettingCopyWithImpl(this._self, this._then);

  final _SystemSetting _self;
  final $Res Function(_SystemSetting) _then;

/// Create a copy of SystemSetting
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? closeMainPanelToTray = null,}) {
  return _then(_SystemSetting(
closeMainPanelToTray: null == closeMainPanelToTray ? _self.closeMainPanelToTray : closeMainPanelToTray // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
