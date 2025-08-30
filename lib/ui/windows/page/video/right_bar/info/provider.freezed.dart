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





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoInfoState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VideoInfoState()';
}


}

/// @nodoc
class $VideoInfoStateCopyWith<$Res>  {
$VideoInfoStateCopyWith(VideoInfoState _, $Res Function(VideoInfoState) __);
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( VideoInfoStateLoading value)?  loading,TResult Function( VideoInfoStateLoaded value)?  loaded,required TResult orElse(),}){
final _that = this;
switch (_that) {
case VideoInfoStateLoading() when loading != null:
return loading(_that);case VideoInfoStateLoaded() when loaded != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( VideoInfoStateLoading value)  loading,required TResult Function( VideoInfoStateLoaded value)  loaded,}){
final _that = this;
switch (_that) {
case VideoInfoStateLoading():
return loading(_that);case VideoInfoStateLoaded():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( VideoInfoStateLoading value)?  loading,TResult? Function( VideoInfoStateLoaded value)?  loaded,}){
final _that = this;
switch (_that) {
case VideoInfoStateLoading() when loading != null:
return loading(_that);case VideoInfoStateLoaded() when loaded != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( List<Staff> staffs,  int view,  int danmaku,  int uploadTime,  String onlineUser,  String description)?  loaded,required TResult orElse(),}) {final _that = this;
switch (_that) {
case VideoInfoStateLoading() when loading != null:
return loading();case VideoInfoStateLoaded() when loaded != null:
return loaded(_that.staffs,_that.view,_that.danmaku,_that.uploadTime,_that.onlineUser,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( List<Staff> staffs,  int view,  int danmaku,  int uploadTime,  String onlineUser,  String description)  loaded,}) {final _that = this;
switch (_that) {
case VideoInfoStateLoading():
return loading();case VideoInfoStateLoaded():
return loaded(_that.staffs,_that.view,_that.danmaku,_that.uploadTime,_that.onlineUser,_that.description);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( List<Staff> staffs,  int view,  int danmaku,  int uploadTime,  String onlineUser,  String description)?  loaded,}) {final _that = this;
switch (_that) {
case VideoInfoStateLoading() when loading != null:
return loading();case VideoInfoStateLoaded() when loaded != null:
return loaded(_that.staffs,_that.view,_that.danmaku,_that.uploadTime,_that.onlineUser,_that.description);case _:
  return null;

}
}

}

/// @nodoc


class VideoInfoStateLoading implements VideoInfoState {
  const VideoInfoStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoInfoStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VideoInfoState.loading()';
}


}




/// @nodoc


class VideoInfoStateLoaded implements VideoInfoState {
  const VideoInfoStateLoaded({required final  List<Staff> staffs, required this.view, required this.danmaku, required this.uploadTime, required this.onlineUser, required this.description}): _staffs = staffs;
  

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
 final  String description;

/// Create a copy of VideoInfoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VideoInfoStateLoadedCopyWith<VideoInfoStateLoaded> get copyWith => _$VideoInfoStateLoadedCopyWithImpl<VideoInfoStateLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoInfoStateLoaded&&const DeepCollectionEquality().equals(other._staffs, _staffs)&&(identical(other.view, view) || other.view == view)&&(identical(other.danmaku, danmaku) || other.danmaku == danmaku)&&(identical(other.uploadTime, uploadTime) || other.uploadTime == uploadTime)&&(identical(other.onlineUser, onlineUser) || other.onlineUser == onlineUser)&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_staffs),view,danmaku,uploadTime,onlineUser,description);

@override
String toString() {
  return 'VideoInfoState.loaded(staffs: $staffs, view: $view, danmaku: $danmaku, uploadTime: $uploadTime, onlineUser: $onlineUser, description: $description)';
}


}

/// @nodoc
abstract mixin class $VideoInfoStateLoadedCopyWith<$Res> implements $VideoInfoStateCopyWith<$Res> {
  factory $VideoInfoStateLoadedCopyWith(VideoInfoStateLoaded value, $Res Function(VideoInfoStateLoaded) _then) = _$VideoInfoStateLoadedCopyWithImpl;
@useResult
$Res call({
 List<Staff> staffs, int view, int danmaku, int uploadTime, String onlineUser, String description
});




}
/// @nodoc
class _$VideoInfoStateLoadedCopyWithImpl<$Res>
    implements $VideoInfoStateLoadedCopyWith<$Res> {
  _$VideoInfoStateLoadedCopyWithImpl(this._self, this._then);

  final VideoInfoStateLoaded _self;
  final $Res Function(VideoInfoStateLoaded) _then;

/// Create a copy of VideoInfoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? staffs = null,Object? view = null,Object? danmaku = null,Object? uploadTime = null,Object? onlineUser = null,Object? description = null,}) {
  return _then(VideoInfoStateLoaded(
staffs: null == staffs ? _self._staffs : staffs // ignore: cast_nullable_to_non_nullable
as List<Staff>,view: null == view ? _self.view : view // ignore: cast_nullable_to_non_nullable
as int,danmaku: null == danmaku ? _self.danmaku : danmaku // ignore: cast_nullable_to_non_nullable
as int,uploadTime: null == uploadTime ? _self.uploadTime : uploadTime // ignore: cast_nullable_to_non_nullable
as int,onlineUser: null == onlineUser ? _self.onlineUser : onlineUser // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
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

// dart format on
