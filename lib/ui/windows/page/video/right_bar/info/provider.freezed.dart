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
mixin _$VideoInfoState {

 VideoBasicInfo get basicInfo; VideoRecommendInfo get recommendInfo;
/// Create a copy of VideoInfoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VideoInfoStateCopyWith<VideoInfoState> get copyWith => _$VideoInfoStateCopyWithImpl<VideoInfoState>(this as VideoInfoState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoInfoState&&(identical(other.basicInfo, basicInfo) || other.basicInfo == basicInfo)&&(identical(other.recommendInfo, recommendInfo) || other.recommendInfo == recommendInfo));
}


@override
int get hashCode => Object.hash(runtimeType,basicInfo,recommendInfo);

@override
String toString() {
  return 'VideoInfoState(basicInfo: $basicInfo, recommendInfo: $recommendInfo)';
}


}

/// @nodoc
abstract mixin class $VideoInfoStateCopyWith<$Res>  {
  factory $VideoInfoStateCopyWith(VideoInfoState value, $Res Function(VideoInfoState) _then) = _$VideoInfoStateCopyWithImpl;
@useResult
$Res call({
 VideoBasicInfo basicInfo, VideoRecommendInfo recommendInfo
});


$VideoBasicInfoCopyWith<$Res> get basicInfo;$VideoRecommendInfoCopyWith<$Res> get recommendInfo;

}
/// @nodoc
class _$VideoInfoStateCopyWithImpl<$Res>
    implements $VideoInfoStateCopyWith<$Res> {
  _$VideoInfoStateCopyWithImpl(this._self, this._then);

  final VideoInfoState _self;
  final $Res Function(VideoInfoState) _then;

/// Create a copy of VideoInfoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? basicInfo = null,Object? recommendInfo = null,}) {
  return _then(_self.copyWith(
basicInfo: null == basicInfo ? _self.basicInfo : basicInfo // ignore: cast_nullable_to_non_nullable
as VideoBasicInfo,recommendInfo: null == recommendInfo ? _self.recommendInfo : recommendInfo // ignore: cast_nullable_to_non_nullable
as VideoRecommendInfo,
  ));
}
/// Create a copy of VideoInfoState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VideoBasicInfoCopyWith<$Res> get basicInfo {
  
  return $VideoBasicInfoCopyWith<$Res>(_self.basicInfo, (value) {
    return _then(_self.copyWith(basicInfo: value));
  });
}/// Create a copy of VideoInfoState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VideoRecommendInfoCopyWith<$Res> get recommendInfo {
  
  return $VideoRecommendInfoCopyWith<$Res>(_self.recommendInfo, (value) {
    return _then(_self.copyWith(recommendInfo: value));
  });
}
}


/// Adds pattern-matching-related methods to [VideoInfoState].
extension VideoInfoStatePatterns on VideoInfoState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( VideoInfoStateInitial value)?  initial,required TResult orElse(),}){
final _that = this;
switch (_that) {
case VideoInfoStateInitial() when initial != null:
return initial(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( VideoInfoStateInitial value)  initial,}){
final _that = this;
switch (_that) {
case VideoInfoStateInitial():
return initial(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( VideoInfoStateInitial value)?  initial,}){
final _that = this;
switch (_that) {
case VideoInfoStateInitial() when initial != null:
return initial(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( VideoBasicInfo basicInfo,  VideoRecommendInfo recommendInfo)?  initial,required TResult orElse(),}) {final _that = this;
switch (_that) {
case VideoInfoStateInitial() when initial != null:
return initial(_that.basicInfo,_that.recommendInfo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( VideoBasicInfo basicInfo,  VideoRecommendInfo recommendInfo)  initial,}) {final _that = this;
switch (_that) {
case VideoInfoStateInitial():
return initial(_that.basicInfo,_that.recommendInfo);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( VideoBasicInfo basicInfo,  VideoRecommendInfo recommendInfo)?  initial,}) {final _that = this;
switch (_that) {
case VideoInfoStateInitial() when initial != null:
return initial(_that.basicInfo,_that.recommendInfo);case _:
  return null;

}
}

}

/// @nodoc


class VideoInfoStateInitial implements VideoInfoState {
  const VideoInfoStateInitial({required this.basicInfo, required this.recommendInfo});
  

@override final  VideoBasicInfo basicInfo;
@override final  VideoRecommendInfo recommendInfo;

/// Create a copy of VideoInfoState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VideoInfoStateInitialCopyWith<VideoInfoStateInitial> get copyWith => _$VideoInfoStateInitialCopyWithImpl<VideoInfoStateInitial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoInfoStateInitial&&(identical(other.basicInfo, basicInfo) || other.basicInfo == basicInfo)&&(identical(other.recommendInfo, recommendInfo) || other.recommendInfo == recommendInfo));
}


@override
int get hashCode => Object.hash(runtimeType,basicInfo,recommendInfo);

@override
String toString() {
  return 'VideoInfoState.initial(basicInfo: $basicInfo, recommendInfo: $recommendInfo)';
}


}

/// @nodoc
abstract mixin class $VideoInfoStateInitialCopyWith<$Res> implements $VideoInfoStateCopyWith<$Res> {
  factory $VideoInfoStateInitialCopyWith(VideoInfoStateInitial value, $Res Function(VideoInfoStateInitial) _then) = _$VideoInfoStateInitialCopyWithImpl;
@override @useResult
$Res call({
 VideoBasicInfo basicInfo, VideoRecommendInfo recommendInfo
});


@override $VideoBasicInfoCopyWith<$Res> get basicInfo;@override $VideoRecommendInfoCopyWith<$Res> get recommendInfo;

}
/// @nodoc
class _$VideoInfoStateInitialCopyWithImpl<$Res>
    implements $VideoInfoStateInitialCopyWith<$Res> {
  _$VideoInfoStateInitialCopyWithImpl(this._self, this._then);

  final VideoInfoStateInitial _self;
  final $Res Function(VideoInfoStateInitial) _then;

/// Create a copy of VideoInfoState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? basicInfo = null,Object? recommendInfo = null,}) {
  return _then(VideoInfoStateInitial(
basicInfo: null == basicInfo ? _self.basicInfo : basicInfo // ignore: cast_nullable_to_non_nullable
as VideoBasicInfo,recommendInfo: null == recommendInfo ? _self.recommendInfo : recommendInfo // ignore: cast_nullable_to_non_nullable
as VideoRecommendInfo,
  ));
}

/// Create a copy of VideoInfoState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VideoBasicInfoCopyWith<$Res> get basicInfo {
  
  return $VideoBasicInfoCopyWith<$Res>(_self.basicInfo, (value) {
    return _then(_self.copyWith(basicInfo: value));
  });
}/// Create a copy of VideoInfoState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VideoRecommendInfoCopyWith<$Res> get recommendInfo {
  
  return $VideoRecommendInfoCopyWith<$Res>(_self.recommendInfo, (value) {
    return _then(_self.copyWith(recommendInfo: value));
  });
}
}

/// @nodoc
mixin _$VideoBasicInfo {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoBasicInfo);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VideoBasicInfo()';
}


}

/// @nodoc
class $VideoBasicInfoCopyWith<$Res>  {
$VideoBasicInfoCopyWith(VideoBasicInfo _, $Res Function(VideoBasicInfo) __);
}


/// Adds pattern-matching-related methods to [VideoBasicInfo].
extension VideoBasicInfoPatterns on VideoBasicInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( VideoBasicInfoLoading value)?  loading,TResult Function( VideoBasicInfoLoaded value)?  loaded,required TResult orElse(),}){
final _that = this;
switch (_that) {
case VideoBasicInfoLoading() when loading != null:
return loading(_that);case VideoBasicInfoLoaded() when loaded != null:
return loaded(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( VideoBasicInfoLoading value)  loading,required TResult Function( VideoBasicInfoLoaded value)  loaded,}){
final _that = this;
switch (_that) {
case VideoBasicInfoLoading():
return loading(_that);case VideoBasicInfoLoaded():
return loaded(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( VideoBasicInfoLoading value)?  loading,TResult? Function( VideoBasicInfoLoaded value)?  loaded,}){
final _that = this;
switch (_that) {
case VideoBasicInfoLoading() when loading != null:
return loading(_that);case VideoBasicInfoLoaded() when loaded != null:
return loaded(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( List<Staff> staffs,  int view,  int danmaku,  int uploadTime,  String onlineUser)?  loaded,required TResult orElse(),}) {final _that = this;
switch (_that) {
case VideoBasicInfoLoading() when loading != null:
return loading();case VideoBasicInfoLoaded() when loaded != null:
return loaded(_that.staffs,_that.view,_that.danmaku,_that.uploadTime,_that.onlineUser);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( List<Staff> staffs,  int view,  int danmaku,  int uploadTime,  String onlineUser)  loaded,}) {final _that = this;
switch (_that) {
case VideoBasicInfoLoading():
return loading();case VideoBasicInfoLoaded():
return loaded(_that.staffs,_that.view,_that.danmaku,_that.uploadTime,_that.onlineUser);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( List<Staff> staffs,  int view,  int danmaku,  int uploadTime,  String onlineUser)?  loaded,}) {final _that = this;
switch (_that) {
case VideoBasicInfoLoading() when loading != null:
return loading();case VideoBasicInfoLoaded() when loaded != null:
return loaded(_that.staffs,_that.view,_that.danmaku,_that.uploadTime,_that.onlineUser);case _:
  return null;

}
}

}

/// @nodoc


class VideoBasicInfoLoading implements VideoBasicInfo {
  const VideoBasicInfoLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoBasicInfoLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VideoBasicInfo.loading()';
}


}




/// @nodoc


class VideoBasicInfoLoaded implements VideoBasicInfo {
  const VideoBasicInfoLoaded({required final  List<Staff> staffs, required this.view, required this.danmaku, required this.uploadTime, required this.onlineUser}): _staffs = staffs;
  

 final  List<Staff> _staffs;
 List<Staff> get staffs {
  if (_staffs is EqualUnmodifiableListView) return _staffs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_staffs);
}

 final  int view;
 final  int danmaku;
 final  int uploadTime;
 final  String onlineUser;

/// Create a copy of VideoBasicInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VideoBasicInfoLoadedCopyWith<VideoBasicInfoLoaded> get copyWith => _$VideoBasicInfoLoadedCopyWithImpl<VideoBasicInfoLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoBasicInfoLoaded&&const DeepCollectionEquality().equals(other._staffs, _staffs)&&(identical(other.view, view) || other.view == view)&&(identical(other.danmaku, danmaku) || other.danmaku == danmaku)&&(identical(other.uploadTime, uploadTime) || other.uploadTime == uploadTime)&&(identical(other.onlineUser, onlineUser) || other.onlineUser == onlineUser));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_staffs),view,danmaku,uploadTime,onlineUser);

@override
String toString() {
  return 'VideoBasicInfo.loaded(staffs: $staffs, view: $view, danmaku: $danmaku, uploadTime: $uploadTime, onlineUser: $onlineUser)';
}


}

/// @nodoc
abstract mixin class $VideoBasicInfoLoadedCopyWith<$Res> implements $VideoBasicInfoCopyWith<$Res> {
  factory $VideoBasicInfoLoadedCopyWith(VideoBasicInfoLoaded value, $Res Function(VideoBasicInfoLoaded) _then) = _$VideoBasicInfoLoadedCopyWithImpl;
@useResult
$Res call({
 List<Staff> staffs, int view, int danmaku, int uploadTime, String onlineUser
});




}
/// @nodoc
class _$VideoBasicInfoLoadedCopyWithImpl<$Res>
    implements $VideoBasicInfoLoadedCopyWith<$Res> {
  _$VideoBasicInfoLoadedCopyWithImpl(this._self, this._then);

  final VideoBasicInfoLoaded _self;
  final $Res Function(VideoBasicInfoLoaded) _then;

/// Create a copy of VideoBasicInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? staffs = null,Object? view = null,Object? danmaku = null,Object? uploadTime = null,Object? onlineUser = null,}) {
  return _then(VideoBasicInfoLoaded(
staffs: null == staffs ? _self._staffs : staffs // ignore: cast_nullable_to_non_nullable
as List<Staff>,view: null == view ? _self.view : view // ignore: cast_nullable_to_non_nullable
as int,danmaku: null == danmaku ? _self.danmaku : danmaku // ignore: cast_nullable_to_non_nullable
as int,uploadTime: null == uploadTime ? _self.uploadTime : uploadTime // ignore: cast_nullable_to_non_nullable
as int,onlineUser: null == onlineUser ? _self.onlineUser : onlineUser // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$Staff {

 String get role; String get name; String get avatar;
/// Create a copy of Staff
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StaffCopyWith<Staff> get copyWith => _$StaffCopyWithImpl<Staff>(this as Staff, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Staff&&(identical(other.role, role) || other.role == role)&&(identical(other.name, name) || other.name == name)&&(identical(other.avatar, avatar) || other.avatar == avatar));
}


@override
int get hashCode => Object.hash(runtimeType,role,name,avatar);

@override
String toString() {
  return 'Staff(role: $role, name: $name, avatar: $avatar)';
}


}

/// @nodoc
abstract mixin class $StaffCopyWith<$Res>  {
  factory $StaffCopyWith(Staff value, $Res Function(Staff) _then) = _$StaffCopyWithImpl;
@useResult
$Res call({
 String role, String name, String avatar
});




}
/// @nodoc
class _$StaffCopyWithImpl<$Res>
    implements $StaffCopyWith<$Res> {
  _$StaffCopyWithImpl(this._self, this._then);

  final Staff _self;
  final $Res Function(Staff) _then;

/// Create a copy of Staff
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? role = null,Object? name = null,Object? avatar = null,}) {
  return _then(_self.copyWith(
role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,avatar: null == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Staff].
extension StaffPatterns on Staff {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Staff value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Staff() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Staff value)  $default,){
final _that = this;
switch (_that) {
case _Staff():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Staff value)?  $default,){
final _that = this;
switch (_that) {
case _Staff() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String role,  String name,  String avatar)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Staff() when $default != null:
return $default(_that.role,_that.name,_that.avatar);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String role,  String name,  String avatar)  $default,) {final _that = this;
switch (_that) {
case _Staff():
return $default(_that.role,_that.name,_that.avatar);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String role,  String name,  String avatar)?  $default,) {final _that = this;
switch (_that) {
case _Staff() when $default != null:
return $default(_that.role,_that.name,_that.avatar);case _:
  return null;

}
}

}

/// @nodoc


class _Staff implements Staff {
  const _Staff({required this.role, required this.name, required this.avatar});
  

@override final  String role;
@override final  String name;
@override final  String avatar;

/// Create a copy of Staff
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StaffCopyWith<_Staff> get copyWith => __$StaffCopyWithImpl<_Staff>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Staff&&(identical(other.role, role) || other.role == role)&&(identical(other.name, name) || other.name == name)&&(identical(other.avatar, avatar) || other.avatar == avatar));
}


@override
int get hashCode => Object.hash(runtimeType,role,name,avatar);

@override
String toString() {
  return 'Staff(role: $role, name: $name, avatar: $avatar)';
}


}

/// @nodoc
abstract mixin class _$StaffCopyWith<$Res> implements $StaffCopyWith<$Res> {
  factory _$StaffCopyWith(_Staff value, $Res Function(_Staff) _then) = __$StaffCopyWithImpl;
@override @useResult
$Res call({
 String role, String name, String avatar
});




}
/// @nodoc
class __$StaffCopyWithImpl<$Res>
    implements _$StaffCopyWith<$Res> {
  __$StaffCopyWithImpl(this._self, this._then);

  final _Staff _self;
  final $Res Function(_Staff) _then;

/// Create a copy of Staff
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? role = null,Object? name = null,Object? avatar = null,}) {
  return _then(_Staff(
role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,avatar: null == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$VideoRecommendInfo {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoRecommendInfo);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VideoRecommendInfo()';
}


}

/// @nodoc
class $VideoRecommendInfoCopyWith<$Res>  {
$VideoRecommendInfoCopyWith(VideoRecommendInfo _, $Res Function(VideoRecommendInfo) __);
}


/// Adds pattern-matching-related methods to [VideoRecommendInfo].
extension VideoRecommendInfoPatterns on VideoRecommendInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( VideoRecommendInfoLoading value)?  loading,TResult Function( VideoRecommendInfoLoaded value)?  loaded,required TResult orElse(),}){
final _that = this;
switch (_that) {
case VideoRecommendInfoLoading() when loading != null:
return loading(_that);case VideoRecommendInfoLoaded() when loaded != null:
return loaded(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( VideoRecommendInfoLoading value)  loading,required TResult Function( VideoRecommendInfoLoaded value)  loaded,}){
final _that = this;
switch (_that) {
case VideoRecommendInfoLoading():
return loading(_that);case VideoRecommendInfoLoaded():
return loaded(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( VideoRecommendInfoLoading value)?  loading,TResult? Function( VideoRecommendInfoLoaded value)?  loaded,}){
final _that = this;
switch (_that) {
case VideoRecommendInfoLoading() when loading != null:
return loading(_that);case VideoRecommendInfoLoaded() when loaded != null:
return loaded(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function()?  loaded,required TResult orElse(),}) {final _that = this;
switch (_that) {
case VideoRecommendInfoLoading() when loading != null:
return loading();case VideoRecommendInfoLoaded() when loaded != null:
return loaded();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function()  loaded,}) {final _that = this;
switch (_that) {
case VideoRecommendInfoLoading():
return loading();case VideoRecommendInfoLoaded():
return loaded();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function()?  loaded,}) {final _that = this;
switch (_that) {
case VideoRecommendInfoLoading() when loading != null:
return loading();case VideoRecommendInfoLoaded() when loaded != null:
return loaded();case _:
  return null;

}
}

}

/// @nodoc


class VideoRecommendInfoLoading implements VideoRecommendInfo {
  const VideoRecommendInfoLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoRecommendInfoLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VideoRecommendInfo.loading()';
}


}




/// @nodoc


class VideoRecommendInfoLoaded implements VideoRecommendInfo {
  const VideoRecommendInfoLoaded();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoRecommendInfoLoaded);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VideoRecommendInfo.loaded()';
}


}




// dart format on
