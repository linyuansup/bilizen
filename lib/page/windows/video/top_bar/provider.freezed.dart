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
mixin _$TopBarState {

 WindowState get windowState; bool get onTop; CurrentVideoItem? get videoInfo;
/// Create a copy of TopBarState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TopBarStateCopyWith<TopBarState> get copyWith => _$TopBarStateCopyWithImpl<TopBarState>(this as TopBarState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TopBarState&&(identical(other.windowState, windowState) || other.windowState == windowState)&&(identical(other.onTop, onTop) || other.onTop == onTop)&&(identical(other.videoInfo, videoInfo) || other.videoInfo == videoInfo));
}


@override
int get hashCode => Object.hash(runtimeType,windowState,onTop,videoInfo);

@override
String toString() {
  return 'TopBarState(windowState: $windowState, onTop: $onTop, videoInfo: $videoInfo)';
}


}

/// @nodoc
abstract mixin class $TopBarStateCopyWith<$Res>  {
  factory $TopBarStateCopyWith(TopBarState value, $Res Function(TopBarState) _then) = _$TopBarStateCopyWithImpl;
@useResult
$Res call({
 WindowState windowState, bool onTop, CurrentVideoItem? videoInfo
});


$CurrentVideoItemCopyWith<$Res>? get videoInfo;

}
/// @nodoc
class _$TopBarStateCopyWithImpl<$Res>
    implements $TopBarStateCopyWith<$Res> {
  _$TopBarStateCopyWithImpl(this._self, this._then);

  final TopBarState _self;
  final $Res Function(TopBarState) _then;

/// Create a copy of TopBarState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? windowState = null,Object? onTop = null,Object? videoInfo = freezed,}) {
  return _then(_self.copyWith(
windowState: null == windowState ? _self.windowState : windowState // ignore: cast_nullable_to_non_nullable
as WindowState,onTop: null == onTop ? _self.onTop : onTop // ignore: cast_nullable_to_non_nullable
as bool,videoInfo: freezed == videoInfo ? _self.videoInfo : videoInfo // ignore: cast_nullable_to_non_nullable
as CurrentVideoItem?,
  ));
}
/// Create a copy of TopBarState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CurrentVideoItemCopyWith<$Res>? get videoInfo {
    if (_self.videoInfo == null) {
    return null;
  }

  return $CurrentVideoItemCopyWith<$Res>(_self.videoInfo!, (value) {
    return _then(_self.copyWith(videoInfo: value));
  });
}
}


/// Adds pattern-matching-related methods to [TopBarState].
extension TopBarStatePatterns on TopBarState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TopBarState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TopBarState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TopBarState value)  $default,){
final _that = this;
switch (_that) {
case _TopBarState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TopBarState value)?  $default,){
final _that = this;
switch (_that) {
case _TopBarState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( WindowState windowState,  bool onTop,  CurrentVideoItem? videoInfo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TopBarState() when $default != null:
return $default(_that.windowState,_that.onTop,_that.videoInfo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( WindowState windowState,  bool onTop,  CurrentVideoItem? videoInfo)  $default,) {final _that = this;
switch (_that) {
case _TopBarState():
return $default(_that.windowState,_that.onTop,_that.videoInfo);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( WindowState windowState,  bool onTop,  CurrentVideoItem? videoInfo)?  $default,) {final _that = this;
switch (_that) {
case _TopBarState() when $default != null:
return $default(_that.windowState,_that.onTop,_that.videoInfo);case _:
  return null;

}
}

}

/// @nodoc


class _TopBarState implements TopBarState {
  const _TopBarState({required this.windowState, required this.onTop, required this.videoInfo});
  

@override final  WindowState windowState;
@override final  bool onTop;
@override final  CurrentVideoItem? videoInfo;

/// Create a copy of TopBarState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TopBarStateCopyWith<_TopBarState> get copyWith => __$TopBarStateCopyWithImpl<_TopBarState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TopBarState&&(identical(other.windowState, windowState) || other.windowState == windowState)&&(identical(other.onTop, onTop) || other.onTop == onTop)&&(identical(other.videoInfo, videoInfo) || other.videoInfo == videoInfo));
}


@override
int get hashCode => Object.hash(runtimeType,windowState,onTop,videoInfo);

@override
String toString() {
  return 'TopBarState(windowState: $windowState, onTop: $onTop, videoInfo: $videoInfo)';
}


}

/// @nodoc
abstract mixin class _$TopBarStateCopyWith<$Res> implements $TopBarStateCopyWith<$Res> {
  factory _$TopBarStateCopyWith(_TopBarState value, $Res Function(_TopBarState) _then) = __$TopBarStateCopyWithImpl;
@override @useResult
$Res call({
 WindowState windowState, bool onTop, CurrentVideoItem? videoInfo
});


@override $CurrentVideoItemCopyWith<$Res>? get videoInfo;

}
/// @nodoc
class __$TopBarStateCopyWithImpl<$Res>
    implements _$TopBarStateCopyWith<$Res> {
  __$TopBarStateCopyWithImpl(this._self, this._then);

  final _TopBarState _self;
  final $Res Function(_TopBarState) _then;

/// Create a copy of TopBarState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? windowState = null,Object? onTop = null,Object? videoInfo = freezed,}) {
  return _then(_TopBarState(
windowState: null == windowState ? _self.windowState : windowState // ignore: cast_nullable_to_non_nullable
as WindowState,onTop: null == onTop ? _self.onTop : onTop // ignore: cast_nullable_to_non_nullable
as bool,videoInfo: freezed == videoInfo ? _self.videoInfo : videoInfo // ignore: cast_nullable_to_non_nullable
as CurrentVideoItem?,
  ));
}

/// Create a copy of TopBarState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CurrentVideoItemCopyWith<$Res>? get videoInfo {
    if (_self.videoInfo == null) {
    return null;
  }

  return $CurrentVideoItemCopyWith<$Res>(_self.videoInfo!, (value) {
    return _then(_self.copyWith(videoInfo: value));
  });
}
}

/// @nodoc
mixin _$CurrentVideoItem {

 String get bvid; UserInfo get up; String get title;
/// Create a copy of CurrentVideoItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CurrentVideoItemCopyWith<CurrentVideoItem> get copyWith => _$CurrentVideoItemCopyWithImpl<CurrentVideoItem>(this as CurrentVideoItem, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CurrentVideoItem&&(identical(other.bvid, bvid) || other.bvid == bvid)&&(identical(other.up, up) || other.up == up)&&(identical(other.title, title) || other.title == title));
}


@override
int get hashCode => Object.hash(runtimeType,bvid,up,title);

@override
String toString() {
  return 'CurrentVideoItem(bvid: $bvid, up: $up, title: $title)';
}


}

/// @nodoc
abstract mixin class $CurrentVideoItemCopyWith<$Res>  {
  factory $CurrentVideoItemCopyWith(CurrentVideoItem value, $Res Function(CurrentVideoItem) _then) = _$CurrentVideoItemCopyWithImpl;
@useResult
$Res call({
 String bvid, UserInfo up, String title
});


$UserInfoCopyWith<$Res> get up;

}
/// @nodoc
class _$CurrentVideoItemCopyWithImpl<$Res>
    implements $CurrentVideoItemCopyWith<$Res> {
  _$CurrentVideoItemCopyWithImpl(this._self, this._then);

  final CurrentVideoItem _self;
  final $Res Function(CurrentVideoItem) _then;

/// Create a copy of CurrentVideoItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bvid = null,Object? up = null,Object? title = null,}) {
  return _then(_self.copyWith(
bvid: null == bvid ? _self.bvid : bvid // ignore: cast_nullable_to_non_nullable
as String,up: null == up ? _self.up : up // ignore: cast_nullable_to_non_nullable
as UserInfo,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of CurrentVideoItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserInfoCopyWith<$Res> get up {
  
  return $UserInfoCopyWith<$Res>(_self.up, (value) {
    return _then(_self.copyWith(up: value));
  });
}
}


/// Adds pattern-matching-related methods to [CurrentVideoItem].
extension CurrentVideoItemPatterns on CurrentVideoItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CurrentVideoItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CurrentVideoItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CurrentVideoItem value)  $default,){
final _that = this;
switch (_that) {
case _CurrentVideoItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CurrentVideoItem value)?  $default,){
final _that = this;
switch (_that) {
case _CurrentVideoItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String bvid,  UserInfo up,  String title)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CurrentVideoItem() when $default != null:
return $default(_that.bvid,_that.up,_that.title);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String bvid,  UserInfo up,  String title)  $default,) {final _that = this;
switch (_that) {
case _CurrentVideoItem():
return $default(_that.bvid,_that.up,_that.title);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String bvid,  UserInfo up,  String title)?  $default,) {final _that = this;
switch (_that) {
case _CurrentVideoItem() when $default != null:
return $default(_that.bvid,_that.up,_that.title);case _:
  return null;

}
}

}

/// @nodoc


class _CurrentVideoItem implements CurrentVideoItem {
  const _CurrentVideoItem({required this.bvid, required this.up, required this.title});
  

@override final  String bvid;
@override final  UserInfo up;
@override final  String title;

/// Create a copy of CurrentVideoItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CurrentVideoItemCopyWith<_CurrentVideoItem> get copyWith => __$CurrentVideoItemCopyWithImpl<_CurrentVideoItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CurrentVideoItem&&(identical(other.bvid, bvid) || other.bvid == bvid)&&(identical(other.up, up) || other.up == up)&&(identical(other.title, title) || other.title == title));
}


@override
int get hashCode => Object.hash(runtimeType,bvid,up,title);

@override
String toString() {
  return 'CurrentVideoItem(bvid: $bvid, up: $up, title: $title)';
}


}

/// @nodoc
abstract mixin class _$CurrentVideoItemCopyWith<$Res> implements $CurrentVideoItemCopyWith<$Res> {
  factory _$CurrentVideoItemCopyWith(_CurrentVideoItem value, $Res Function(_CurrentVideoItem) _then) = __$CurrentVideoItemCopyWithImpl;
@override @useResult
$Res call({
 String bvid, UserInfo up, String title
});


@override $UserInfoCopyWith<$Res> get up;

}
/// @nodoc
class __$CurrentVideoItemCopyWithImpl<$Res>
    implements _$CurrentVideoItemCopyWith<$Res> {
  __$CurrentVideoItemCopyWithImpl(this._self, this._then);

  final _CurrentVideoItem _self;
  final $Res Function(_CurrentVideoItem) _then;

/// Create a copy of CurrentVideoItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bvid = null,Object? up = null,Object? title = null,}) {
  return _then(_CurrentVideoItem(
bvid: null == bvid ? _self.bvid : bvid // ignore: cast_nullable_to_non_nullable
as String,up: null == up ? _self.up : up // ignore: cast_nullable_to_non_nullable
as UserInfo,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of CurrentVideoItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserInfoCopyWith<$Res> get up {
  
  return $UserInfoCopyWith<$Res>(_self.up, (value) {
    return _then(_self.copyWith(up: value));
  });
}
}

/// @nodoc
mixin _$UserInfo {

 String get username; String get avatar;
/// Create a copy of UserInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserInfoCopyWith<UserInfo> get copyWith => _$UserInfoCopyWithImpl<UserInfo>(this as UserInfo, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserInfo&&(identical(other.username, username) || other.username == username)&&(identical(other.avatar, avatar) || other.avatar == avatar));
}


@override
int get hashCode => Object.hash(runtimeType,username,avatar);

@override
String toString() {
  return 'UserInfo(username: $username, avatar: $avatar)';
}


}

/// @nodoc
abstract mixin class $UserInfoCopyWith<$Res>  {
  factory $UserInfoCopyWith(UserInfo value, $Res Function(UserInfo) _then) = _$UserInfoCopyWithImpl;
@useResult
$Res call({
 String username, String avatar
});




}
/// @nodoc
class _$UserInfoCopyWithImpl<$Res>
    implements $UserInfoCopyWith<$Res> {
  _$UserInfoCopyWithImpl(this._self, this._then);

  final UserInfo _self;
  final $Res Function(UserInfo) _then;

/// Create a copy of UserInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? username = null,Object? avatar = null,}) {
  return _then(_self.copyWith(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,avatar: null == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UserInfo].
extension UserInfoPatterns on UserInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserInfo value)  $default,){
final _that = this;
switch (_that) {
case _UserInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserInfo value)?  $default,){
final _that = this;
switch (_that) {
case _UserInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String username,  String avatar)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserInfo() when $default != null:
return $default(_that.username,_that.avatar);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String username,  String avatar)  $default,) {final _that = this;
switch (_that) {
case _UserInfo():
return $default(_that.username,_that.avatar);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String username,  String avatar)?  $default,) {final _that = this;
switch (_that) {
case _UserInfo() when $default != null:
return $default(_that.username,_that.avatar);case _:
  return null;

}
}

}

/// @nodoc


class _UserInfo implements UserInfo {
  const _UserInfo({required this.username, required this.avatar});
  

@override final  String username;
@override final  String avatar;

/// Create a copy of UserInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserInfoCopyWith<_UserInfo> get copyWith => __$UserInfoCopyWithImpl<_UserInfo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserInfo&&(identical(other.username, username) || other.username == username)&&(identical(other.avatar, avatar) || other.avatar == avatar));
}


@override
int get hashCode => Object.hash(runtimeType,username,avatar);

@override
String toString() {
  return 'UserInfo(username: $username, avatar: $avatar)';
}


}

/// @nodoc
abstract mixin class _$UserInfoCopyWith<$Res> implements $UserInfoCopyWith<$Res> {
  factory _$UserInfoCopyWith(_UserInfo value, $Res Function(_UserInfo) _then) = __$UserInfoCopyWithImpl;
@override @useResult
$Res call({
 String username, String avatar
});




}
/// @nodoc
class __$UserInfoCopyWithImpl<$Res>
    implements _$UserInfoCopyWith<$Res> {
  __$UserInfoCopyWithImpl(this._self, this._then);

  final _UserInfo _self;
  final $Res Function(_UserInfo) _then;

/// Create a copy of UserInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? username = null,Object? avatar = null,}) {
  return _then(_UserInfo(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,avatar: null == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
