// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tool.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ToolSetting {

 bool get useProxy; String? get proxyAddress; String? get proxyPort;
/// Create a copy of ToolSetting
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ToolSettingCopyWith<ToolSetting> get copyWith => _$ToolSettingCopyWithImpl<ToolSetting>(this as ToolSetting, _$identity);

  /// Serializes this ToolSetting to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ToolSetting&&(identical(other.useProxy, useProxy) || other.useProxy == useProxy)&&(identical(other.proxyAddress, proxyAddress) || other.proxyAddress == proxyAddress)&&(identical(other.proxyPort, proxyPort) || other.proxyPort == proxyPort));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,useProxy,proxyAddress,proxyPort);

@override
String toString() {
  return 'ToolSetting(useProxy: $useProxy, proxyAddress: $proxyAddress, proxyPort: $proxyPort)';
}


}

/// @nodoc
abstract mixin class $ToolSettingCopyWith<$Res>  {
  factory $ToolSettingCopyWith(ToolSetting value, $Res Function(ToolSetting) _then) = _$ToolSettingCopyWithImpl;
@useResult
$Res call({
 bool useProxy, String? proxyAddress, String? proxyPort
});




}
/// @nodoc
class _$ToolSettingCopyWithImpl<$Res>
    implements $ToolSettingCopyWith<$Res> {
  _$ToolSettingCopyWithImpl(this._self, this._then);

  final ToolSetting _self;
  final $Res Function(ToolSetting) _then;

/// Create a copy of ToolSetting
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? useProxy = null,Object? proxyAddress = freezed,Object? proxyPort = freezed,}) {
  return _then(_self.copyWith(
useProxy: null == useProxy ? _self.useProxy : useProxy // ignore: cast_nullable_to_non_nullable
as bool,proxyAddress: freezed == proxyAddress ? _self.proxyAddress : proxyAddress // ignore: cast_nullable_to_non_nullable
as String?,proxyPort: freezed == proxyPort ? _self.proxyPort : proxyPort // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ToolSetting].
extension ToolSettingPatterns on ToolSetting {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ToolSetting value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ToolSetting() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ToolSetting value)  $default,){
final _that = this;
switch (_that) {
case _ToolSetting():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ToolSetting value)?  $default,){
final _that = this;
switch (_that) {
case _ToolSetting() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool useProxy,  String? proxyAddress,  String? proxyPort)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ToolSetting() when $default != null:
return $default(_that.useProxy,_that.proxyAddress,_that.proxyPort);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool useProxy,  String? proxyAddress,  String? proxyPort)  $default,) {final _that = this;
switch (_that) {
case _ToolSetting():
return $default(_that.useProxy,_that.proxyAddress,_that.proxyPort);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool useProxy,  String? proxyAddress,  String? proxyPort)?  $default,) {final _that = this;
switch (_that) {
case _ToolSetting() when $default != null:
return $default(_that.useProxy,_that.proxyAddress,_that.proxyPort);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ToolSetting implements ToolSetting {
  const _ToolSetting({required this.useProxy, this.proxyAddress, this.proxyPort});
  factory _ToolSetting.fromJson(Map<String, dynamic> json) => _$ToolSettingFromJson(json);

@override final  bool useProxy;
@override final  String? proxyAddress;
@override final  String? proxyPort;

/// Create a copy of ToolSetting
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ToolSettingCopyWith<_ToolSetting> get copyWith => __$ToolSettingCopyWithImpl<_ToolSetting>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ToolSettingToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ToolSetting&&(identical(other.useProxy, useProxy) || other.useProxy == useProxy)&&(identical(other.proxyAddress, proxyAddress) || other.proxyAddress == proxyAddress)&&(identical(other.proxyPort, proxyPort) || other.proxyPort == proxyPort));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,useProxy,proxyAddress,proxyPort);

@override
String toString() {
  return 'ToolSetting(useProxy: $useProxy, proxyAddress: $proxyAddress, proxyPort: $proxyPort)';
}


}

/// @nodoc
abstract mixin class _$ToolSettingCopyWith<$Res> implements $ToolSettingCopyWith<$Res> {
  factory _$ToolSettingCopyWith(_ToolSetting value, $Res Function(_ToolSetting) _then) = __$ToolSettingCopyWithImpl;
@override @useResult
$Res call({
 bool useProxy, String? proxyAddress, String? proxyPort
});




}
/// @nodoc
class __$ToolSettingCopyWithImpl<$Res>
    implements _$ToolSettingCopyWith<$Res> {
  __$ToolSettingCopyWithImpl(this._self, this._then);

  final _ToolSetting _self;
  final $Res Function(_ToolSetting) _then;

/// Create a copy of ToolSetting
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? useProxy = null,Object? proxyAddress = freezed,Object? proxyPort = freezed,}) {
  return _then(_ToolSetting(
useProxy: null == useProxy ? _self.useProxy : useProxy // ignore: cast_nullable_to_non_nullable
as bool,proxyAddress: freezed == proxyAddress ? _self.proxyAddress : proxyAddress // ignore: cast_nullable_to_non_nullable
as String?,proxyPort: freezed == proxyPort ? _self.proxyPort : proxyPort // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
