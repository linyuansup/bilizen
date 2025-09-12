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
mixin _$CommentData {

 int get id; List<CommentData> get repliesPreview; int get totalReplyNum; UserData get sender; CommentContent get content; int get sendTime; bool get isUpReply; bool get isUpLike; LikeStatus get likeStatus; int get like;
/// Create a copy of CommentData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommentDataCopyWith<CommentData> get copyWith => _$CommentDataCopyWithImpl<CommentData>(this as CommentData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommentData&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.repliesPreview, repliesPreview)&&(identical(other.totalReplyNum, totalReplyNum) || other.totalReplyNum == totalReplyNum)&&(identical(other.sender, sender) || other.sender == sender)&&(identical(other.content, content) || other.content == content)&&(identical(other.sendTime, sendTime) || other.sendTime == sendTime)&&(identical(other.isUpReply, isUpReply) || other.isUpReply == isUpReply)&&(identical(other.isUpLike, isUpLike) || other.isUpLike == isUpLike)&&(identical(other.likeStatus, likeStatus) || other.likeStatus == likeStatus)&&(identical(other.like, like) || other.like == like));
}


@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(repliesPreview),totalReplyNum,sender,content,sendTime,isUpReply,isUpLike,likeStatus,like);

@override
String toString() {
  return 'CommentData(id: $id, repliesPreview: $repliesPreview, totalReplyNum: $totalReplyNum, sender: $sender, content: $content, sendTime: $sendTime, isUpReply: $isUpReply, isUpLike: $isUpLike, likeStatus: $likeStatus, like: $like)';
}


}

/// @nodoc
abstract mixin class $CommentDataCopyWith<$Res>  {
  factory $CommentDataCopyWith(CommentData value, $Res Function(CommentData) _then) = _$CommentDataCopyWithImpl;
@useResult
$Res call({
 int id, List<CommentData> repliesPreview, int totalReplyNum, UserData sender, CommentContent content, int sendTime, bool isUpReply, bool isUpLike, LikeStatus likeStatus, int like
});


$UserDataCopyWith<$Res> get sender;

}
/// @nodoc
class _$CommentDataCopyWithImpl<$Res>
    implements $CommentDataCopyWith<$Res> {
  _$CommentDataCopyWithImpl(this._self, this._then);

  final CommentData _self;
  final $Res Function(CommentData) _then;

/// Create a copy of CommentData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? repliesPreview = null,Object? totalReplyNum = null,Object? sender = null,Object? content = null,Object? sendTime = null,Object? isUpReply = null,Object? isUpLike = null,Object? likeStatus = null,Object? like = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,repliesPreview: null == repliesPreview ? _self.repliesPreview : repliesPreview // ignore: cast_nullable_to_non_nullable
as List<CommentData>,totalReplyNum: null == totalReplyNum ? _self.totalReplyNum : totalReplyNum // ignore: cast_nullable_to_non_nullable
as int,sender: null == sender ? _self.sender : sender // ignore: cast_nullable_to_non_nullable
as UserData,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as CommentContent,sendTime: null == sendTime ? _self.sendTime : sendTime // ignore: cast_nullable_to_non_nullable
as int,isUpReply: null == isUpReply ? _self.isUpReply : isUpReply // ignore: cast_nullable_to_non_nullable
as bool,isUpLike: null == isUpLike ? _self.isUpLike : isUpLike // ignore: cast_nullable_to_non_nullable
as bool,likeStatus: null == likeStatus ? _self.likeStatus : likeStatus // ignore: cast_nullable_to_non_nullable
as LikeStatus,like: null == like ? _self.like : like // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of CommentData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDataCopyWith<$Res> get sender {
  
  return $UserDataCopyWith<$Res>(_self.sender, (value) {
    return _then(_self.copyWith(sender: value));
  });
}
}


/// Adds pattern-matching-related methods to [CommentData].
extension CommentDataPatterns on CommentData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CommentData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CommentData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CommentData value)  $default,){
final _that = this;
switch (_that) {
case _CommentData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CommentData value)?  $default,){
final _that = this;
switch (_that) {
case _CommentData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  List<CommentData> repliesPreview,  int totalReplyNum,  UserData sender,  CommentContent content,  int sendTime,  bool isUpReply,  bool isUpLike,  LikeStatus likeStatus,  int like)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CommentData() when $default != null:
return $default(_that.id,_that.repliesPreview,_that.totalReplyNum,_that.sender,_that.content,_that.sendTime,_that.isUpReply,_that.isUpLike,_that.likeStatus,_that.like);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  List<CommentData> repliesPreview,  int totalReplyNum,  UserData sender,  CommentContent content,  int sendTime,  bool isUpReply,  bool isUpLike,  LikeStatus likeStatus,  int like)  $default,) {final _that = this;
switch (_that) {
case _CommentData():
return $default(_that.id,_that.repliesPreview,_that.totalReplyNum,_that.sender,_that.content,_that.sendTime,_that.isUpReply,_that.isUpLike,_that.likeStatus,_that.like);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  List<CommentData> repliesPreview,  int totalReplyNum,  UserData sender,  CommentContent content,  int sendTime,  bool isUpReply,  bool isUpLike,  LikeStatus likeStatus,  int like)?  $default,) {final _that = this;
switch (_that) {
case _CommentData() when $default != null:
return $default(_that.id,_that.repliesPreview,_that.totalReplyNum,_that.sender,_that.content,_that.sendTime,_that.isUpReply,_that.isUpLike,_that.likeStatus,_that.like);case _:
  return null;

}
}

}

/// @nodoc


class _CommentData implements CommentData {
  const _CommentData({required this.id, required final  List<CommentData> repliesPreview, required this.totalReplyNum, required this.sender, required this.content, required this.sendTime, required this.isUpReply, required this.isUpLike, required this.likeStatus, required this.like}): _repliesPreview = repliesPreview;
  

@override final  int id;
 final  List<CommentData> _repliesPreview;
@override List<CommentData> get repliesPreview {
  if (_repliesPreview is EqualUnmodifiableListView) return _repliesPreview;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_repliesPreview);
}

@override final  int totalReplyNum;
@override final  UserData sender;
@override final  CommentContent content;
@override final  int sendTime;
@override final  bool isUpReply;
@override final  bool isUpLike;
@override final  LikeStatus likeStatus;
@override final  int like;

/// Create a copy of CommentData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommentDataCopyWith<_CommentData> get copyWith => __$CommentDataCopyWithImpl<_CommentData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CommentData&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._repliesPreview, _repliesPreview)&&(identical(other.totalReplyNum, totalReplyNum) || other.totalReplyNum == totalReplyNum)&&(identical(other.sender, sender) || other.sender == sender)&&(identical(other.content, content) || other.content == content)&&(identical(other.sendTime, sendTime) || other.sendTime == sendTime)&&(identical(other.isUpReply, isUpReply) || other.isUpReply == isUpReply)&&(identical(other.isUpLike, isUpLike) || other.isUpLike == isUpLike)&&(identical(other.likeStatus, likeStatus) || other.likeStatus == likeStatus)&&(identical(other.like, like) || other.like == like));
}


@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_repliesPreview),totalReplyNum,sender,content,sendTime,isUpReply,isUpLike,likeStatus,like);

@override
String toString() {
  return 'CommentData(id: $id, repliesPreview: $repliesPreview, totalReplyNum: $totalReplyNum, sender: $sender, content: $content, sendTime: $sendTime, isUpReply: $isUpReply, isUpLike: $isUpLike, likeStatus: $likeStatus, like: $like)';
}


}

/// @nodoc
abstract mixin class _$CommentDataCopyWith<$Res> implements $CommentDataCopyWith<$Res> {
  factory _$CommentDataCopyWith(_CommentData value, $Res Function(_CommentData) _then) = __$CommentDataCopyWithImpl;
@override @useResult
$Res call({
 int id, List<CommentData> repliesPreview, int totalReplyNum, UserData sender, CommentContent content, int sendTime, bool isUpReply, bool isUpLike, LikeStatus likeStatus, int like
});


@override $UserDataCopyWith<$Res> get sender;

}
/// @nodoc
class __$CommentDataCopyWithImpl<$Res>
    implements _$CommentDataCopyWith<$Res> {
  __$CommentDataCopyWithImpl(this._self, this._then);

  final _CommentData _self;
  final $Res Function(_CommentData) _then;

/// Create a copy of CommentData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? repliesPreview = null,Object? totalReplyNum = null,Object? sender = null,Object? content = null,Object? sendTime = null,Object? isUpReply = null,Object? isUpLike = null,Object? likeStatus = null,Object? like = null,}) {
  return _then(_CommentData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,repliesPreview: null == repliesPreview ? _self._repliesPreview : repliesPreview // ignore: cast_nullable_to_non_nullable
as List<CommentData>,totalReplyNum: null == totalReplyNum ? _self.totalReplyNum : totalReplyNum // ignore: cast_nullable_to_non_nullable
as int,sender: null == sender ? _self.sender : sender // ignore: cast_nullable_to_non_nullable
as UserData,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as CommentContent,sendTime: null == sendTime ? _self.sendTime : sendTime // ignore: cast_nullable_to_non_nullable
as int,isUpReply: null == isUpReply ? _self.isUpReply : isUpReply // ignore: cast_nullable_to_non_nullable
as bool,isUpLike: null == isUpLike ? _self.isUpLike : isUpLike // ignore: cast_nullable_to_non_nullable
as bool,likeStatus: null == likeStatus ? _self.likeStatus : likeStatus // ignore: cast_nullable_to_non_nullable
as LikeStatus,like: null == like ? _self.like : like // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of CommentData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDataCopyWith<$Res> get sender {
  
  return $UserDataCopyWith<$Res>(_self.sender, (value) {
    return _then(_self.copyWith(sender: value));
  });
}
}

/// @nodoc
mixin _$UserData {

 int get uid; String get avatar; String get nickName;
/// Create a copy of UserData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserDataCopyWith<UserData> get copyWith => _$UserDataCopyWithImpl<UserData>(this as UserData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserData&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.nickName, nickName) || other.nickName == nickName));
}


@override
int get hashCode => Object.hash(runtimeType,uid,avatar,nickName);

@override
String toString() {
  return 'UserData(uid: $uid, avatar: $avatar, nickName: $nickName)';
}


}

/// @nodoc
abstract mixin class $UserDataCopyWith<$Res>  {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) _then) = _$UserDataCopyWithImpl;
@useResult
$Res call({
 int uid, String avatar, String nickName
});




}
/// @nodoc
class _$UserDataCopyWithImpl<$Res>
    implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(this._self, this._then);

  final UserData _self;
  final $Res Function(UserData) _then;

/// Create a copy of UserData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uid = null,Object? avatar = null,Object? nickName = null,}) {
  return _then(_self.copyWith(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as int,avatar: null == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String,nickName: null == nickName ? _self.nickName : nickName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UserData].
extension UserDataPatterns on UserData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserData value)  $default,){
final _that = this;
switch (_that) {
case _UserData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserData value)?  $default,){
final _that = this;
switch (_that) {
case _UserData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int uid,  String avatar,  String nickName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserData() when $default != null:
return $default(_that.uid,_that.avatar,_that.nickName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int uid,  String avatar,  String nickName)  $default,) {final _that = this;
switch (_that) {
case _UserData():
return $default(_that.uid,_that.avatar,_that.nickName);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int uid,  String avatar,  String nickName)?  $default,) {final _that = this;
switch (_that) {
case _UserData() when $default != null:
return $default(_that.uid,_that.avatar,_that.nickName);case _:
  return null;

}
}

}

/// @nodoc


class _UserData implements UserData {
  const _UserData({required this.uid, required this.avatar, required this.nickName});
  

@override final  int uid;
@override final  String avatar;
@override final  String nickName;

/// Create a copy of UserData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserDataCopyWith<_UserData> get copyWith => __$UserDataCopyWithImpl<_UserData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserData&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.nickName, nickName) || other.nickName == nickName));
}


@override
int get hashCode => Object.hash(runtimeType,uid,avatar,nickName);

@override
String toString() {
  return 'UserData(uid: $uid, avatar: $avatar, nickName: $nickName)';
}


}

/// @nodoc
abstract mixin class _$UserDataCopyWith<$Res> implements $UserDataCopyWith<$Res> {
  factory _$UserDataCopyWith(_UserData value, $Res Function(_UserData) _then) = __$UserDataCopyWithImpl;
@override @useResult
$Res call({
 int uid, String avatar, String nickName
});




}
/// @nodoc
class __$UserDataCopyWithImpl<$Res>
    implements _$UserDataCopyWith<$Res> {
  __$UserDataCopyWithImpl(this._self, this._then);

  final _UserData _self;
  final $Res Function(_UserData) _then;

/// Create a copy of UserData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uid = null,Object? avatar = null,Object? nickName = null,}) {
  return _then(_UserData(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as int,avatar: null == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String,nickName: null == nickName ? _self.nickName : nickName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$VideoCommentListState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoCommentListState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VideoCommentListState()';
}


}

/// @nodoc
class $VideoCommentListStateCopyWith<$Res>  {
$VideoCommentListStateCopyWith(VideoCommentListState _, $Res Function(VideoCommentListState) __);
}


/// Adds pattern-matching-related methods to [VideoCommentListState].
extension VideoCommentListStatePatterns on VideoCommentListState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( VideoCommentListStateLoading value)?  loading,TResult Function( VideoCommentListStateLoaded value)?  loaded,required TResult orElse(),}){
final _that = this;
switch (_that) {
case VideoCommentListStateLoading() when loading != null:
return loading(_that);case VideoCommentListStateLoaded() when loaded != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( VideoCommentListStateLoading value)  loading,required TResult Function( VideoCommentListStateLoaded value)  loaded,}){
final _that = this;
switch (_that) {
case VideoCommentListStateLoading():
return loading(_that);case VideoCommentListStateLoaded():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( VideoCommentListStateLoading value)?  loading,TResult? Function( VideoCommentListStateLoaded value)?  loaded,}){
final _that = this;
switch (_that) {
case VideoCommentListStateLoading() when loading != null:
return loading(_that);case VideoCommentListStateLoaded() when loaded != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( int upUid,  List<CommentData> comments)?  loaded,required TResult orElse(),}) {final _that = this;
switch (_that) {
case VideoCommentListStateLoading() when loading != null:
return loading();case VideoCommentListStateLoaded() when loaded != null:
return loaded(_that.upUid,_that.comments);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( int upUid,  List<CommentData> comments)  loaded,}) {final _that = this;
switch (_that) {
case VideoCommentListStateLoading():
return loading();case VideoCommentListStateLoaded():
return loaded(_that.upUid,_that.comments);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( int upUid,  List<CommentData> comments)?  loaded,}) {final _that = this;
switch (_that) {
case VideoCommentListStateLoading() when loading != null:
return loading();case VideoCommentListStateLoaded() when loaded != null:
return loaded(_that.upUid,_that.comments);case _:
  return null;

}
}

}

/// @nodoc


class VideoCommentListStateLoading implements VideoCommentListState {
  const VideoCommentListStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoCommentListStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VideoCommentListState.loading()';
}


}




/// @nodoc


class VideoCommentListStateLoaded implements VideoCommentListState {
  const VideoCommentListStateLoaded({required this.upUid, required final  List<CommentData> comments}): _comments = comments;
  

 final  int upUid;
 final  List<CommentData> _comments;
 List<CommentData> get comments {
  if (_comments is EqualUnmodifiableListView) return _comments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_comments);
}


/// Create a copy of VideoCommentListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VideoCommentListStateLoadedCopyWith<VideoCommentListStateLoaded> get copyWith => _$VideoCommentListStateLoadedCopyWithImpl<VideoCommentListStateLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoCommentListStateLoaded&&(identical(other.upUid, upUid) || other.upUid == upUid)&&const DeepCollectionEquality().equals(other._comments, _comments));
}


@override
int get hashCode => Object.hash(runtimeType,upUid,const DeepCollectionEquality().hash(_comments));

@override
String toString() {
  return 'VideoCommentListState.loaded(upUid: $upUid, comments: $comments)';
}


}

/// @nodoc
abstract mixin class $VideoCommentListStateLoadedCopyWith<$Res> implements $VideoCommentListStateCopyWith<$Res> {
  factory $VideoCommentListStateLoadedCopyWith(VideoCommentListStateLoaded value, $Res Function(VideoCommentListStateLoaded) _then) = _$VideoCommentListStateLoadedCopyWithImpl;
@useResult
$Res call({
 int upUid, List<CommentData> comments
});




}
/// @nodoc
class _$VideoCommentListStateLoadedCopyWithImpl<$Res>
    implements $VideoCommentListStateLoadedCopyWith<$Res> {
  _$VideoCommentListStateLoadedCopyWithImpl(this._self, this._then);

  final VideoCommentListStateLoaded _self;
  final $Res Function(VideoCommentListStateLoaded) _then;

/// Create a copy of VideoCommentListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? upUid = null,Object? comments = null,}) {
  return _then(VideoCommentListStateLoaded(
upUid: null == upUid ? _self.upUid : upUid // ignore: cast_nullable_to_non_nullable
as int,comments: null == comments ? _self._comments : comments // ignore: cast_nullable_to_non_nullable
as List<CommentData>,
  ));
}


}

// dart format on
