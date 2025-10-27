// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'common.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CommonSetting {

 bool get enablePlaybackHardwareAcceleration;
/// Create a copy of CommonSetting
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommonSettingCopyWith<CommonSetting> get copyWith => _$CommonSettingCopyWithImpl<CommonSetting>(this as CommonSetting, _$identity);

  /// Serializes this CommonSetting to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommonSetting&&(identical(other.enablePlaybackHardwareAcceleration, enablePlaybackHardwareAcceleration) || other.enablePlaybackHardwareAcceleration == enablePlaybackHardwareAcceleration));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,enablePlaybackHardwareAcceleration);

@override
String toString() {
  return 'CommonSetting(enablePlaybackHardwareAcceleration: $enablePlaybackHardwareAcceleration)';
}


}

/// @nodoc
abstract mixin class $CommonSettingCopyWith<$Res>  {
  factory $CommonSettingCopyWith(CommonSetting value, $Res Function(CommonSetting) _then) = _$CommonSettingCopyWithImpl;
@useResult
$Res call({
 bool enablePlaybackHardwareAcceleration
});




}
/// @nodoc
class _$CommonSettingCopyWithImpl<$Res>
    implements $CommonSettingCopyWith<$Res> {
  _$CommonSettingCopyWithImpl(this._self, this._then);

  final CommonSetting _self;
  final $Res Function(CommonSetting) _then;

/// Create a copy of CommonSetting
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? enablePlaybackHardwareAcceleration = null,}) {
  return _then(_self.copyWith(
enablePlaybackHardwareAcceleration: null == enablePlaybackHardwareAcceleration ? _self.enablePlaybackHardwareAcceleration : enablePlaybackHardwareAcceleration // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CommonSetting].
extension CommonSettingPatterns on CommonSetting {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CommonSetting value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CommonSetting() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CommonSetting value)  $default,){
final _that = this;
switch (_that) {
case _CommonSetting():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CommonSetting value)?  $default,){
final _that = this;
switch (_that) {
case _CommonSetting() when $default != null:
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
case _CommonSetting() when $default != null:
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
case _CommonSetting():
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
case _CommonSetting() when $default != null:
return $default(_that.enablePlaybackHardwareAcceleration);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CommonSetting implements CommonSetting {
  const _CommonSetting({required this.enablePlaybackHardwareAcceleration});
  factory _CommonSetting.fromJson(Map<String, dynamic> json) => _$CommonSettingFromJson(json);

@override final  bool enablePlaybackHardwareAcceleration;

/// Create a copy of CommonSetting
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommonSettingCopyWith<_CommonSetting> get copyWith => __$CommonSettingCopyWithImpl<_CommonSetting>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CommonSettingToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CommonSetting&&(identical(other.enablePlaybackHardwareAcceleration, enablePlaybackHardwareAcceleration) || other.enablePlaybackHardwareAcceleration == enablePlaybackHardwareAcceleration));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,enablePlaybackHardwareAcceleration);

@override
String toString() {
  return 'CommonSetting(enablePlaybackHardwareAcceleration: $enablePlaybackHardwareAcceleration)';
}


}

/// @nodoc
abstract mixin class _$CommonSettingCopyWith<$Res> implements $CommonSettingCopyWith<$Res> {
  factory _$CommonSettingCopyWith(_CommonSetting value, $Res Function(_CommonSetting) _then) = __$CommonSettingCopyWithImpl;
@override @useResult
$Res call({
 bool enablePlaybackHardwareAcceleration
});




}
/// @nodoc
class __$CommonSettingCopyWithImpl<$Res>
    implements _$CommonSettingCopyWith<$Res> {
  __$CommonSettingCopyWithImpl(this._self, this._then);

  final _CommonSetting _self;
  final $Res Function(_CommonSetting) _then;

/// Create a copy of CommonSetting
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? enablePlaybackHardwareAcceleration = null,}) {
  return _then(_CommonSetting(
enablePlaybackHardwareAcceleration: null == enablePlaybackHardwareAcceleration ? _self.enablePlaybackHardwareAcceleration : enablePlaybackHardwareAcceleration // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
