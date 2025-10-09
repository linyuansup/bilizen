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
mixin _$PlaybackState {

 List<AudioDevice> get devices; int? get currentAudioDeviceIndex; bool get playOnStart;
/// Create a copy of PlaybackState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlaybackStateCopyWith<PlaybackState> get copyWith => _$PlaybackStateCopyWithImpl<PlaybackState>(this as PlaybackState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlaybackState&&const DeepCollectionEquality().equals(other.devices, devices)&&(identical(other.currentAudioDeviceIndex, currentAudioDeviceIndex) || other.currentAudioDeviceIndex == currentAudioDeviceIndex)&&(identical(other.playOnStart, playOnStart) || other.playOnStart == playOnStart));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(devices),currentAudioDeviceIndex,playOnStart);

@override
String toString() {
  return 'PlaybackState(devices: $devices, currentAudioDeviceIndex: $currentAudioDeviceIndex, playOnStart: $playOnStart)';
}


}

/// @nodoc
abstract mixin class $PlaybackStateCopyWith<$Res>  {
  factory $PlaybackStateCopyWith(PlaybackState value, $Res Function(PlaybackState) _then) = _$PlaybackStateCopyWithImpl;
@useResult
$Res call({
 List<AudioDevice> devices, int? currentAudioDeviceIndex, bool playOnStart
});




}
/// @nodoc
class _$PlaybackStateCopyWithImpl<$Res>
    implements $PlaybackStateCopyWith<$Res> {
  _$PlaybackStateCopyWithImpl(this._self, this._then);

  final PlaybackState _self;
  final $Res Function(PlaybackState) _then;

/// Create a copy of PlaybackState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? devices = null,Object? currentAudioDeviceIndex = freezed,Object? playOnStart = null,}) {
  return _then(_self.copyWith(
devices: null == devices ? _self.devices : devices // ignore: cast_nullable_to_non_nullable
as List<AudioDevice>,currentAudioDeviceIndex: freezed == currentAudioDeviceIndex ? _self.currentAudioDeviceIndex : currentAudioDeviceIndex // ignore: cast_nullable_to_non_nullable
as int?,playOnStart: null == playOnStart ? _self.playOnStart : playOnStart // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [PlaybackState].
extension PlaybackStatePatterns on PlaybackState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlaybackState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlaybackState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlaybackState value)  $default,){
final _that = this;
switch (_that) {
case _PlaybackState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlaybackState value)?  $default,){
final _that = this;
switch (_that) {
case _PlaybackState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<AudioDevice> devices,  int? currentAudioDeviceIndex,  bool playOnStart)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlaybackState() when $default != null:
return $default(_that.devices,_that.currentAudioDeviceIndex,_that.playOnStart);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<AudioDevice> devices,  int? currentAudioDeviceIndex,  bool playOnStart)  $default,) {final _that = this;
switch (_that) {
case _PlaybackState():
return $default(_that.devices,_that.currentAudioDeviceIndex,_that.playOnStart);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<AudioDevice> devices,  int? currentAudioDeviceIndex,  bool playOnStart)?  $default,) {final _that = this;
switch (_that) {
case _PlaybackState() when $default != null:
return $default(_that.devices,_that.currentAudioDeviceIndex,_that.playOnStart);case _:
  return null;

}
}

}

/// @nodoc


class _PlaybackState implements PlaybackState {
  const _PlaybackState({required final  List<AudioDevice> devices, required this.currentAudioDeviceIndex, required this.playOnStart}): _devices = devices;
  

 final  List<AudioDevice> _devices;
@override List<AudioDevice> get devices {
  if (_devices is EqualUnmodifiableListView) return _devices;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_devices);
}

@override final  int? currentAudioDeviceIndex;
@override final  bool playOnStart;

/// Create a copy of PlaybackState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlaybackStateCopyWith<_PlaybackState> get copyWith => __$PlaybackStateCopyWithImpl<_PlaybackState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlaybackState&&const DeepCollectionEquality().equals(other._devices, _devices)&&(identical(other.currentAudioDeviceIndex, currentAudioDeviceIndex) || other.currentAudioDeviceIndex == currentAudioDeviceIndex)&&(identical(other.playOnStart, playOnStart) || other.playOnStart == playOnStart));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_devices),currentAudioDeviceIndex,playOnStart);

@override
String toString() {
  return 'PlaybackState(devices: $devices, currentAudioDeviceIndex: $currentAudioDeviceIndex, playOnStart: $playOnStart)';
}


}

/// @nodoc
abstract mixin class _$PlaybackStateCopyWith<$Res> implements $PlaybackStateCopyWith<$Res> {
  factory _$PlaybackStateCopyWith(_PlaybackState value, $Res Function(_PlaybackState) _then) = __$PlaybackStateCopyWithImpl;
@override @useResult
$Res call({
 List<AudioDevice> devices, int? currentAudioDeviceIndex, bool playOnStart
});




}
/// @nodoc
class __$PlaybackStateCopyWithImpl<$Res>
    implements _$PlaybackStateCopyWith<$Res> {
  __$PlaybackStateCopyWithImpl(this._self, this._then);

  final _PlaybackState _self;
  final $Res Function(_PlaybackState) _then;

/// Create a copy of PlaybackState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? devices = null,Object? currentAudioDeviceIndex = freezed,Object? playOnStart = null,}) {
  return _then(_PlaybackState(
devices: null == devices ? _self._devices : devices // ignore: cast_nullable_to_non_nullable
as List<AudioDevice>,currentAudioDeviceIndex: freezed == currentAudioDeviceIndex ? _self.currentAudioDeviceIndex : currentAudioDeviceIndex // ignore: cast_nullable_to_non_nullable
as int?,playOnStart: null == playOnStart ? _self.playOnStart : playOnStart // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
