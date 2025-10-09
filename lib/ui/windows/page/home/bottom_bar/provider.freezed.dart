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
mixin _$BottomBarState {

 double get volume; SwitchMode get switchMode; List<VideoState> get videos;
/// Create a copy of BottomBarState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BottomBarStateCopyWith<BottomBarState> get copyWith => _$BottomBarStateCopyWithImpl<BottomBarState>(this as BottomBarState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BottomBarState&&(identical(other.volume, volume) || other.volume == volume)&&(identical(other.switchMode, switchMode) || other.switchMode == switchMode)&&const DeepCollectionEquality().equals(other.videos, videos));
}


@override
int get hashCode => Object.hash(runtimeType,volume,switchMode,const DeepCollectionEquality().hash(videos));

@override
String toString() {
  return 'BottomBarState(volume: $volume, switchMode: $switchMode, videos: $videos)';
}


}

/// @nodoc
abstract mixin class $BottomBarStateCopyWith<$Res>  {
  factory $BottomBarStateCopyWith(BottomBarState value, $Res Function(BottomBarState) _then) = _$BottomBarStateCopyWithImpl;
@useResult
$Res call({
 double volume, SwitchMode switchMode, List<VideoState> videos
});




}
/// @nodoc
class _$BottomBarStateCopyWithImpl<$Res>
    implements $BottomBarStateCopyWith<$Res> {
  _$BottomBarStateCopyWithImpl(this._self, this._then);

  final BottomBarState _self;
  final $Res Function(BottomBarState) _then;

/// Create a copy of BottomBarState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? volume = null,Object? switchMode = null,Object? videos = null,}) {
  return _then(_self.copyWith(
volume: null == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as double,switchMode: null == switchMode ? _self.switchMode : switchMode // ignore: cast_nullable_to_non_nullable
as SwitchMode,videos: null == videos ? _self.videos : videos // ignore: cast_nullable_to_non_nullable
as List<VideoState>,
  ));
}

}


/// Adds pattern-matching-related methods to [BottomBarState].
extension BottomBarStatePatterns on BottomBarState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _NotPlaying value)?  notPlaying,TResult Function( _Playing value)?  playing,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotPlaying() when notPlaying != null:
return notPlaying(_that);case _Playing() when playing != null:
return playing(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _NotPlaying value)  notPlaying,required TResult Function( _Playing value)  playing,}){
final _that = this;
switch (_that) {
case _NotPlaying():
return notPlaying(_that);case _Playing():
return playing(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _NotPlaying value)?  notPlaying,TResult? Function( _Playing value)?  playing,}){
final _that = this;
switch (_that) {
case _NotPlaying() when notPlaying != null:
return notPlaying(_that);case _Playing() when playing != null:
return playing(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( double volume,  SwitchMode switchMode,  List<VideoState> videos)?  notPlaying,TResult Function( VideoState video,  int process,  bool isPlaying,  double volume,  SwitchMode switchMode,  AudioFormat audioFormat,  VideoFormat videoFormat,  List<VideoState> videos)?  playing,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotPlaying() when notPlaying != null:
return notPlaying(_that.volume,_that.switchMode,_that.videos);case _Playing() when playing != null:
return playing(_that.video,_that.process,_that.isPlaying,_that.volume,_that.switchMode,_that.audioFormat,_that.videoFormat,_that.videos);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( double volume,  SwitchMode switchMode,  List<VideoState> videos)  notPlaying,required TResult Function( VideoState video,  int process,  bool isPlaying,  double volume,  SwitchMode switchMode,  AudioFormat audioFormat,  VideoFormat videoFormat,  List<VideoState> videos)  playing,}) {final _that = this;
switch (_that) {
case _NotPlaying():
return notPlaying(_that.volume,_that.switchMode,_that.videos);case _Playing():
return playing(_that.video,_that.process,_that.isPlaying,_that.volume,_that.switchMode,_that.audioFormat,_that.videoFormat,_that.videos);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( double volume,  SwitchMode switchMode,  List<VideoState> videos)?  notPlaying,TResult? Function( VideoState video,  int process,  bool isPlaying,  double volume,  SwitchMode switchMode,  AudioFormat audioFormat,  VideoFormat videoFormat,  List<VideoState> videos)?  playing,}) {final _that = this;
switch (_that) {
case _NotPlaying() when notPlaying != null:
return notPlaying(_that.volume,_that.switchMode,_that.videos);case _Playing() when playing != null:
return playing(_that.video,_that.process,_that.isPlaying,_that.volume,_that.switchMode,_that.audioFormat,_that.videoFormat,_that.videos);case _:
  return null;

}
}

}

/// @nodoc


class _NotPlaying implements BottomBarState {
  const _NotPlaying({required this.volume, required this.switchMode, required final  List<VideoState> videos}): _videos = videos;
  

@override final  double volume;
@override final  SwitchMode switchMode;
 final  List<VideoState> _videos;
@override List<VideoState> get videos {
  if (_videos is EqualUnmodifiableListView) return _videos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_videos);
}


/// Create a copy of BottomBarState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotPlayingCopyWith<_NotPlaying> get copyWith => __$NotPlayingCopyWithImpl<_NotPlaying>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotPlaying&&(identical(other.volume, volume) || other.volume == volume)&&(identical(other.switchMode, switchMode) || other.switchMode == switchMode)&&const DeepCollectionEquality().equals(other._videos, _videos));
}


@override
int get hashCode => Object.hash(runtimeType,volume,switchMode,const DeepCollectionEquality().hash(_videos));

@override
String toString() {
  return 'BottomBarState.notPlaying(volume: $volume, switchMode: $switchMode, videos: $videos)';
}


}

/// @nodoc
abstract mixin class _$NotPlayingCopyWith<$Res> implements $BottomBarStateCopyWith<$Res> {
  factory _$NotPlayingCopyWith(_NotPlaying value, $Res Function(_NotPlaying) _then) = __$NotPlayingCopyWithImpl;
@override @useResult
$Res call({
 double volume, SwitchMode switchMode, List<VideoState> videos
});




}
/// @nodoc
class __$NotPlayingCopyWithImpl<$Res>
    implements _$NotPlayingCopyWith<$Res> {
  __$NotPlayingCopyWithImpl(this._self, this._then);

  final _NotPlaying _self;
  final $Res Function(_NotPlaying) _then;

/// Create a copy of BottomBarState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? volume = null,Object? switchMode = null,Object? videos = null,}) {
  return _then(_NotPlaying(
volume: null == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as double,switchMode: null == switchMode ? _self.switchMode : switchMode // ignore: cast_nullable_to_non_nullable
as SwitchMode,videos: null == videos ? _self._videos : videos // ignore: cast_nullable_to_non_nullable
as List<VideoState>,
  ));
}


}

/// @nodoc


class _Playing implements BottomBarState {
  const _Playing({required this.video, required this.process, required this.isPlaying, required this.volume, required this.switchMode, required this.audioFormat, required this.videoFormat, required final  List<VideoState> videos}): _videos = videos;
  

 final  VideoState video;
 final  int process;
 final  bool isPlaying;
@override final  double volume;
@override final  SwitchMode switchMode;
 final  AudioFormat audioFormat;
 final  VideoFormat videoFormat;
 final  List<VideoState> _videos;
@override List<VideoState> get videos {
  if (_videos is EqualUnmodifiableListView) return _videos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_videos);
}


/// Create a copy of BottomBarState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlayingCopyWith<_Playing> get copyWith => __$PlayingCopyWithImpl<_Playing>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Playing&&(identical(other.video, video) || other.video == video)&&(identical(other.process, process) || other.process == process)&&(identical(other.isPlaying, isPlaying) || other.isPlaying == isPlaying)&&(identical(other.volume, volume) || other.volume == volume)&&(identical(other.switchMode, switchMode) || other.switchMode == switchMode)&&(identical(other.audioFormat, audioFormat) || other.audioFormat == audioFormat)&&(identical(other.videoFormat, videoFormat) || other.videoFormat == videoFormat)&&const DeepCollectionEquality().equals(other._videos, _videos));
}


@override
int get hashCode => Object.hash(runtimeType,video,process,isPlaying,volume,switchMode,audioFormat,videoFormat,const DeepCollectionEquality().hash(_videos));

@override
String toString() {
  return 'BottomBarState.playing(video: $video, process: $process, isPlaying: $isPlaying, volume: $volume, switchMode: $switchMode, audioFormat: $audioFormat, videoFormat: $videoFormat, videos: $videos)';
}


}

/// @nodoc
abstract mixin class _$PlayingCopyWith<$Res> implements $BottomBarStateCopyWith<$Res> {
  factory _$PlayingCopyWith(_Playing value, $Res Function(_Playing) _then) = __$PlayingCopyWithImpl;
@override @useResult
$Res call({
 VideoState video, int process, bool isPlaying, double volume, SwitchMode switchMode, AudioFormat audioFormat, VideoFormat videoFormat, List<VideoState> videos
});


$VideoStateCopyWith<$Res> get video;

}
/// @nodoc
class __$PlayingCopyWithImpl<$Res>
    implements _$PlayingCopyWith<$Res> {
  __$PlayingCopyWithImpl(this._self, this._then);

  final _Playing _self;
  final $Res Function(_Playing) _then;

/// Create a copy of BottomBarState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? video = null,Object? process = null,Object? isPlaying = null,Object? volume = null,Object? switchMode = null,Object? audioFormat = null,Object? videoFormat = null,Object? videos = null,}) {
  return _then(_Playing(
video: null == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as VideoState,process: null == process ? _self.process : process // ignore: cast_nullable_to_non_nullable
as int,isPlaying: null == isPlaying ? _self.isPlaying : isPlaying // ignore: cast_nullable_to_non_nullable
as bool,volume: null == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as double,switchMode: null == switchMode ? _self.switchMode : switchMode // ignore: cast_nullable_to_non_nullable
as SwitchMode,audioFormat: null == audioFormat ? _self.audioFormat : audioFormat // ignore: cast_nullable_to_non_nullable
as AudioFormat,videoFormat: null == videoFormat ? _self.videoFormat : videoFormat // ignore: cast_nullable_to_non_nullable
as VideoFormat,videos: null == videos ? _self._videos : videos // ignore: cast_nullable_to_non_nullable
as List<VideoState>,
  ));
}

/// Create a copy of BottomBarState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VideoStateCopyWith<$Res> get video {
  
  return $VideoStateCopyWith<$Res>(_self.video, (value) {
    return _then(_self.copyWith(video: value));
  });
}
}

/// @nodoc
mixin _$VideoState {

 String get title; String get cover; int get duration; String get uploaderAvatar; String get uploader; int get pIndex;
/// Create a copy of VideoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VideoStateCopyWith<VideoState> get copyWith => _$VideoStateCopyWithImpl<VideoState>(this as VideoState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoState&&(identical(other.title, title) || other.title == title)&&(identical(other.cover, cover) || other.cover == cover)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.uploaderAvatar, uploaderAvatar) || other.uploaderAvatar == uploaderAvatar)&&(identical(other.uploader, uploader) || other.uploader == uploader)&&(identical(other.pIndex, pIndex) || other.pIndex == pIndex));
}


@override
int get hashCode => Object.hash(runtimeType,title,cover,duration,uploaderAvatar,uploader,pIndex);

@override
String toString() {
  return 'VideoState(title: $title, cover: $cover, duration: $duration, uploaderAvatar: $uploaderAvatar, uploader: $uploader, pIndex: $pIndex)';
}


}

/// @nodoc
abstract mixin class $VideoStateCopyWith<$Res>  {
  factory $VideoStateCopyWith(VideoState value, $Res Function(VideoState) _then) = _$VideoStateCopyWithImpl;
@useResult
$Res call({
 String title, String cover, int duration, String uploaderAvatar, String uploader, int pIndex
});




}
/// @nodoc
class _$VideoStateCopyWithImpl<$Res>
    implements $VideoStateCopyWith<$Res> {
  _$VideoStateCopyWithImpl(this._self, this._then);

  final VideoState _self;
  final $Res Function(VideoState) _then;

/// Create a copy of VideoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? cover = null,Object? duration = null,Object? uploaderAvatar = null,Object? uploader = null,Object? pIndex = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,cover: null == cover ? _self.cover : cover // ignore: cast_nullable_to_non_nullable
as String,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int,uploaderAvatar: null == uploaderAvatar ? _self.uploaderAvatar : uploaderAvatar // ignore: cast_nullable_to_non_nullable
as String,uploader: null == uploader ? _self.uploader : uploader // ignore: cast_nullable_to_non_nullable
as String,pIndex: null == pIndex ? _self.pIndex : pIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [VideoState].
extension VideoStatePatterns on VideoState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( VideoStateData value)?  data,required TResult orElse(),}){
final _that = this;
switch (_that) {
case VideoStateData() when data != null:
return data(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( VideoStateData value)  data,}){
final _that = this;
switch (_that) {
case VideoStateData():
return data(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( VideoStateData value)?  data,}){
final _that = this;
switch (_that) {
case VideoStateData() when data != null:
return data(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String title,  String cover,  int duration,  String uploaderAvatar,  String uploader,  int pIndex)?  data,required TResult orElse(),}) {final _that = this;
switch (_that) {
case VideoStateData() when data != null:
return data(_that.title,_that.cover,_that.duration,_that.uploaderAvatar,_that.uploader,_that.pIndex);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String title,  String cover,  int duration,  String uploaderAvatar,  String uploader,  int pIndex)  data,}) {final _that = this;
switch (_that) {
case VideoStateData():
return data(_that.title,_that.cover,_that.duration,_that.uploaderAvatar,_that.uploader,_that.pIndex);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String title,  String cover,  int duration,  String uploaderAvatar,  String uploader,  int pIndex)?  data,}) {final _that = this;
switch (_that) {
case VideoStateData() when data != null:
return data(_that.title,_that.cover,_that.duration,_that.uploaderAvatar,_that.uploader,_that.pIndex);case _:
  return null;

}
}

}

/// @nodoc


class VideoStateData implements VideoState {
  const VideoStateData({required this.title, required this.cover, required this.duration, required this.uploaderAvatar, required this.uploader, required this.pIndex});
  

@override final  String title;
@override final  String cover;
@override final  int duration;
@override final  String uploaderAvatar;
@override final  String uploader;
@override final  int pIndex;

/// Create a copy of VideoState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VideoStateDataCopyWith<VideoStateData> get copyWith => _$VideoStateDataCopyWithImpl<VideoStateData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoStateData&&(identical(other.title, title) || other.title == title)&&(identical(other.cover, cover) || other.cover == cover)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.uploaderAvatar, uploaderAvatar) || other.uploaderAvatar == uploaderAvatar)&&(identical(other.uploader, uploader) || other.uploader == uploader)&&(identical(other.pIndex, pIndex) || other.pIndex == pIndex));
}


@override
int get hashCode => Object.hash(runtimeType,title,cover,duration,uploaderAvatar,uploader,pIndex);

@override
String toString() {
  return 'VideoState.data(title: $title, cover: $cover, duration: $duration, uploaderAvatar: $uploaderAvatar, uploader: $uploader, pIndex: $pIndex)';
}


}

/// @nodoc
abstract mixin class $VideoStateDataCopyWith<$Res> implements $VideoStateCopyWith<$Res> {
  factory $VideoStateDataCopyWith(VideoStateData value, $Res Function(VideoStateData) _then) = _$VideoStateDataCopyWithImpl;
@override @useResult
$Res call({
 String title, String cover, int duration, String uploaderAvatar, String uploader, int pIndex
});




}
/// @nodoc
class _$VideoStateDataCopyWithImpl<$Res>
    implements $VideoStateDataCopyWith<$Res> {
  _$VideoStateDataCopyWithImpl(this._self, this._then);

  final VideoStateData _self;
  final $Res Function(VideoStateData) _then;

/// Create a copy of VideoState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? cover = null,Object? duration = null,Object? uploaderAvatar = null,Object? uploader = null,Object? pIndex = null,}) {
  return _then(VideoStateData(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,cover: null == cover ? _self.cover : cover // ignore: cast_nullable_to_non_nullable
as String,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int,uploaderAvatar: null == uploaderAvatar ? _self.uploaderAvatar : uploaderAvatar // ignore: cast_nullable_to_non_nullable
as String,uploader: null == uploader ? _self.uploader : uploader // ignore: cast_nullable_to_non_nullable
as String,pIndex: null == pIndex ? _self.pIndex : pIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
