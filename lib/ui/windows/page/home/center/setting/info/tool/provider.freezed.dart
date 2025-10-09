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
mixin _$ToolPageState {

 bool get useProxy; String? get proxyAddress; String? get proxyPort;
/// Create a copy of ToolPageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ToolPageStateCopyWith<ToolPageState> get copyWith => _$ToolPageStateCopyWithImpl<ToolPageState>(this as ToolPageState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ToolPageState&&(identical(other.useProxy, useProxy) || other.useProxy == useProxy)&&(identical(other.proxyAddress, proxyAddress) || other.proxyAddress == proxyAddress)&&(identical(other.proxyPort, proxyPort) || other.proxyPort == proxyPort));
}


@override
int get hashCode => Object.hash(runtimeType,useProxy,proxyAddress,proxyPort);

@override
String toString() {
  return 'ToolPageState(useProxy: $useProxy, proxyAddress: $proxyAddress, proxyPort: $proxyPort)';
}


}

/// @nodoc
abstract mixin class $ToolPageStateCopyWith<$Res>  {
  factory $ToolPageStateCopyWith(ToolPageState value, $Res Function(ToolPageState) _then) = _$ToolPageStateCopyWithImpl;
@useResult
$Res call({
 bool useProxy, String? proxyAddress, String? proxyPort
});




}
/// @nodoc
class _$ToolPageStateCopyWithImpl<$Res>
    implements $ToolPageStateCopyWith<$Res> {
  _$ToolPageStateCopyWithImpl(this._self, this._then);

  final ToolPageState _self;
  final $Res Function(ToolPageState) _then;

/// Create a copy of ToolPageState
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


/// Adds pattern-matching-related methods to [ToolPageState].
extension ToolPageStatePatterns on ToolPageState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ToolPageState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ToolPageState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ToolPageState value)  $default,){
final _that = this;
switch (_that) {
case _ToolPageState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ToolPageState value)?  $default,){
final _that = this;
switch (_that) {
case _ToolPageState() when $default != null:
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
case _ToolPageState() when $default != null:
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
case _ToolPageState():
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
case _ToolPageState() when $default != null:
return $default(_that.useProxy,_that.proxyAddress,_that.proxyPort);case _:
  return null;

}
}

}

/// @nodoc


class _ToolPageState implements ToolPageState {
  const _ToolPageState({required this.useProxy, this.proxyAddress, this.proxyPort});
  

@override final  bool useProxy;
@override final  String? proxyAddress;
@override final  String? proxyPort;

/// Create a copy of ToolPageState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ToolPageStateCopyWith<_ToolPageState> get copyWith => __$ToolPageStateCopyWithImpl<_ToolPageState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ToolPageState&&(identical(other.useProxy, useProxy) || other.useProxy == useProxy)&&(identical(other.proxyAddress, proxyAddress) || other.proxyAddress == proxyAddress)&&(identical(other.proxyPort, proxyPort) || other.proxyPort == proxyPort));
}


@override
int get hashCode => Object.hash(runtimeType,useProxy,proxyAddress,proxyPort);

@override
String toString() {
  return 'ToolPageState(useProxy: $useProxy, proxyAddress: $proxyAddress, proxyPort: $proxyPort)';
}


}

/// @nodoc
abstract mixin class _$ToolPageStateCopyWith<$Res> implements $ToolPageStateCopyWith<$Res> {
  factory _$ToolPageStateCopyWith(_ToolPageState value, $Res Function(_ToolPageState) _then) = __$ToolPageStateCopyWithImpl;
@override @useResult
$Res call({
 bool useProxy, String? proxyAddress, String? proxyPort
});




}
/// @nodoc
class __$ToolPageStateCopyWithImpl<$Res>
    implements _$ToolPageStateCopyWith<$Res> {
  __$ToolPageStateCopyWithImpl(this._self, this._then);

  final _ToolPageState _self;
  final $Res Function(_ToolPageState) _then;

/// Create a copy of ToolPageState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? useProxy = null,Object? proxyAddress = freezed,Object? proxyPort = freezed,}) {
  return _then(_ToolPageState(
useProxy: null == useProxy ? _self.useProxy : useProxy // ignore: cast_nullable_to_non_nullable
as bool,proxyAddress: freezed == proxyAddress ? _self.proxyAddress : proxyAddress // ignore: cast_nullable_to_non_nullable
as String?,proxyPort: freezed == proxyPort ? _self.proxyPort : proxyPort // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
