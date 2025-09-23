// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'playback.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PlaybackSetting {

 bool get playOnStart; String? get audioDevice;
/// Create a copy of PlaybackSetting
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlaybackSettingCopyWith<PlaybackSetting> get copyWith => _$PlaybackSettingCopyWithImpl<PlaybackSetting>(this as PlaybackSetting, _$identity);

  /// Serializes this PlaybackSetting to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlaybackSetting&&(identical(other.playOnStart, playOnStart) || other.playOnStart == playOnStart)&&(identical(other.audioDevice, audioDevice) || other.audioDevice == audioDevice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,playOnStart,audioDevice);

@override
String toString() {
  return 'PlaybackSetting(playOnStart: $playOnStart, audioDevice: $audioDevice)';
}


}

/// @nodoc
abstract mixin class $PlaybackSettingCopyWith<$Res>  {
  factory $PlaybackSettingCopyWith(PlaybackSetting value, $Res Function(PlaybackSetting) _then) = _$PlaybackSettingCopyWithImpl;
@useResult
$Res call({
 bool playOnStart, String? audioDevice
});




}
/// @nodoc
class _$PlaybackSettingCopyWithImpl<$Res>
    implements $PlaybackSettingCopyWith<$Res> {
  _$PlaybackSettingCopyWithImpl(this._self, this._then);

  final PlaybackSetting _self;
  final $Res Function(PlaybackSetting) _then;

/// Create a copy of PlaybackSetting
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? playOnStart = null,Object? audioDevice = freezed,}) {
  return _then(_self.copyWith(
playOnStart: null == playOnStart ? _self.playOnStart : playOnStart // ignore: cast_nullable_to_non_nullable
as bool,audioDevice: freezed == audioDevice ? _self.audioDevice : audioDevice // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PlaybackSetting].
extension PlaybackSettingPatterns on PlaybackSetting {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlaybackSetting value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlaybackSetting() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlaybackSetting value)  $default,){
final _that = this;
switch (_that) {
case _PlaybackSetting():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlaybackSetting value)?  $default,){
final _that = this;
switch (_that) {
case _PlaybackSetting() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool playOnStart,  String? audioDevice)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlaybackSetting() when $default != null:
return $default(_that.playOnStart,_that.audioDevice);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool playOnStart,  String? audioDevice)  $default,) {final _that = this;
switch (_that) {
case _PlaybackSetting():
return $default(_that.playOnStart,_that.audioDevice);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool playOnStart,  String? audioDevice)?  $default,) {final _that = this;
switch (_that) {
case _PlaybackSetting() when $default != null:
return $default(_that.playOnStart,_that.audioDevice);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PlaybackSetting implements PlaybackSetting {
  const _PlaybackSetting({required this.playOnStart, required this.audioDevice});
  factory _PlaybackSetting.fromJson(Map<String, dynamic> json) => _$PlaybackSettingFromJson(json);

@override final  bool playOnStart;
@override final  String? audioDevice;

/// Create a copy of PlaybackSetting
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlaybackSettingCopyWith<_PlaybackSetting> get copyWith => __$PlaybackSettingCopyWithImpl<_PlaybackSetting>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlaybackSettingToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlaybackSetting&&(identical(other.playOnStart, playOnStart) || other.playOnStart == playOnStart)&&(identical(other.audioDevice, audioDevice) || other.audioDevice == audioDevice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,playOnStart,audioDevice);

@override
String toString() {
  return 'PlaybackSetting(playOnStart: $playOnStart, audioDevice: $audioDevice)';
}


}

/// @nodoc
abstract mixin class _$PlaybackSettingCopyWith<$Res> implements $PlaybackSettingCopyWith<$Res> {
  factory _$PlaybackSettingCopyWith(_PlaybackSetting value, $Res Function(_PlaybackSetting) _then) = __$PlaybackSettingCopyWithImpl;
@override @useResult
$Res call({
 bool playOnStart, String? audioDevice
});




}
/// @nodoc
class __$PlaybackSettingCopyWithImpl<$Res>
    implements _$PlaybackSettingCopyWith<$Res> {
  __$PlaybackSettingCopyWithImpl(this._self, this._then);

  final _PlaybackSetting _self;
  final $Res Function(_PlaybackSetting) _then;

/// Create a copy of PlaybackSetting
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? playOnStart = null,Object? audioDevice = freezed,}) {
  return _then(_PlaybackSetting(
playOnStart: null == playOnStart ? _self.playOnStart : playOnStart // ignore: cast_nullable_to_non_nullable
as bool,audioDevice: freezed == audioDevice ? _self.audioDevice : audioDevice // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
