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
mixin _$SelfState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelfState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SelfState()';
}


}

/// @nodoc
class $SelfStateCopyWith<$Res>  {
$SelfStateCopyWith(SelfState _, $Res Function(SelfState) __);
}


/// Adds pattern-matching-related methods to [SelfState].
extension SelfStatePatterns on SelfState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SelfStateNoLogin value)?  noLogin,TResult Function( SelfStateLoading value)?  loading,TResult Function( SelfStateLoggedIn value)?  loggedIn,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SelfStateNoLogin() when noLogin != null:
return noLogin(_that);case SelfStateLoading() when loading != null:
return loading(_that);case SelfStateLoggedIn() when loggedIn != null:
return loggedIn(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SelfStateNoLogin value)  noLogin,required TResult Function( SelfStateLoading value)  loading,required TResult Function( SelfStateLoggedIn value)  loggedIn,}){
final _that = this;
switch (_that) {
case SelfStateNoLogin():
return noLogin(_that);case SelfStateLoading():
return loading(_that);case SelfStateLoggedIn():
return loggedIn(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SelfStateNoLogin value)?  noLogin,TResult? Function( SelfStateLoading value)?  loading,TResult? Function( SelfStateLoggedIn value)?  loggedIn,}){
final _that = this;
switch (_that) {
case SelfStateNoLogin() when noLogin != null:
return noLogin(_that);case SelfStateLoading() when loading != null:
return loading(_that);case SelfStateLoggedIn() when loggedIn != null:
return loggedIn(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  noLogin,TResult Function( Self self)?  loading,TResult Function( UserInfoCard userInfoCard)?  loggedIn,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SelfStateNoLogin() when noLogin != null:
return noLogin();case SelfStateLoading() when loading != null:
return loading(_that.self);case SelfStateLoggedIn() when loggedIn != null:
return loggedIn(_that.userInfoCard);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  noLogin,required TResult Function( Self self)  loading,required TResult Function( UserInfoCard userInfoCard)  loggedIn,}) {final _that = this;
switch (_that) {
case SelfStateNoLogin():
return noLogin();case SelfStateLoading():
return loading(_that.self);case SelfStateLoggedIn():
return loggedIn(_that.userInfoCard);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  noLogin,TResult? Function( Self self)?  loading,TResult? Function( UserInfoCard userInfoCard)?  loggedIn,}) {final _that = this;
switch (_that) {
case SelfStateNoLogin() when noLogin != null:
return noLogin();case SelfStateLoading() when loading != null:
return loading(_that.self);case SelfStateLoggedIn() when loggedIn != null:
return loggedIn(_that.userInfoCard);case _:
  return null;

}
}

}

/// @nodoc


class SelfStateNoLogin implements SelfState {
  const SelfStateNoLogin();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelfStateNoLogin);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SelfState.noLogin()';
}


}




/// @nodoc


class SelfStateLoading implements SelfState {
  const SelfStateLoading(this.self);
  

 final  Self self;

/// Create a copy of SelfState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SelfStateLoadingCopyWith<SelfStateLoading> get copyWith => _$SelfStateLoadingCopyWithImpl<SelfStateLoading>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelfStateLoading&&(identical(other.self, self) || other.self == self));
}


@override
int get hashCode => Object.hash(runtimeType,self);

@override
String toString() {
  return 'SelfState.loading(self: $self)';
}


}

/// @nodoc
abstract mixin class $SelfStateLoadingCopyWith<$Res> implements $SelfStateCopyWith<$Res> {
  factory $SelfStateLoadingCopyWith(SelfStateLoading value, $Res Function(SelfStateLoading) _then) = _$SelfStateLoadingCopyWithImpl;
@useResult
$Res call({
 Self self
});




}
/// @nodoc
class _$SelfStateLoadingCopyWithImpl<$Res>
    implements $SelfStateLoadingCopyWith<$Res> {
  _$SelfStateLoadingCopyWithImpl(this._self, this._then);

  final SelfStateLoading _self;
  final $Res Function(SelfStateLoading) _then;

/// Create a copy of SelfState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? self = null,}) {
  return _then(SelfStateLoading(
null == self ? _self.self : self // ignore: cast_nullable_to_non_nullable
as Self,
  ));
}


}

/// @nodoc


class SelfStateLoggedIn implements SelfState {
  const SelfStateLoggedIn({required this.userInfoCard});
  

 final  UserInfoCard userInfoCard;

/// Create a copy of SelfState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SelfStateLoggedInCopyWith<SelfStateLoggedIn> get copyWith => _$SelfStateLoggedInCopyWithImpl<SelfStateLoggedIn>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelfStateLoggedIn&&(identical(other.userInfoCard, userInfoCard) || other.userInfoCard == userInfoCard));
}


@override
int get hashCode => Object.hash(runtimeType,userInfoCard);

@override
String toString() {
  return 'SelfState.loggedIn(userInfoCard: $userInfoCard)';
}


}

/// @nodoc
abstract mixin class $SelfStateLoggedInCopyWith<$Res> implements $SelfStateCopyWith<$Res> {
  factory $SelfStateLoggedInCopyWith(SelfStateLoggedIn value, $Res Function(SelfStateLoggedIn) _then) = _$SelfStateLoggedInCopyWithImpl;
@useResult
$Res call({
 UserInfoCard userInfoCard
});


$UserInfoCardCopyWith<$Res> get userInfoCard;

}
/// @nodoc
class _$SelfStateLoggedInCopyWithImpl<$Res>
    implements $SelfStateLoggedInCopyWith<$Res> {
  _$SelfStateLoggedInCopyWithImpl(this._self, this._then);

  final SelfStateLoggedIn _self;
  final $Res Function(SelfStateLoggedIn) _then;

/// Create a copy of SelfState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userInfoCard = null,}) {
  return _then(SelfStateLoggedIn(
userInfoCard: null == userInfoCard ? _self.userInfoCard : userInfoCard // ignore: cast_nullable_to_non_nullable
as UserInfoCard,
  ));
}

/// Create a copy of SelfState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserInfoCardCopyWith<$Res> get userInfoCard {
  
  return $UserInfoCardCopyWith<$Res>(_self.userInfoCard, (value) {
    return _then(_self.copyWith(userInfoCard: value));
  });
}
}

/// @nodoc
mixin _$UserInfoCard {

 String get nickName; String get avatar; String get sex; String get sign; int get level; int get archiveCount; int get likeNum; int get fans; int get focus;
/// Create a copy of UserInfoCard
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserInfoCardCopyWith<UserInfoCard> get copyWith => _$UserInfoCardCopyWithImpl<UserInfoCard>(this as UserInfoCard, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserInfoCard&&(identical(other.nickName, nickName) || other.nickName == nickName)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.sex, sex) || other.sex == sex)&&(identical(other.sign, sign) || other.sign == sign)&&(identical(other.level, level) || other.level == level)&&(identical(other.archiveCount, archiveCount) || other.archiveCount == archiveCount)&&(identical(other.likeNum, likeNum) || other.likeNum == likeNum)&&(identical(other.fans, fans) || other.fans == fans)&&(identical(other.focus, focus) || other.focus == focus));
}


@override
int get hashCode => Object.hash(runtimeType,nickName,avatar,sex,sign,level,archiveCount,likeNum,fans,focus);

@override
String toString() {
  return 'UserInfoCard(nickName: $nickName, avatar: $avatar, sex: $sex, sign: $sign, level: $level, archiveCount: $archiveCount, likeNum: $likeNum, fans: $fans, focus: $focus)';
}


}

/// @nodoc
abstract mixin class $UserInfoCardCopyWith<$Res>  {
  factory $UserInfoCardCopyWith(UserInfoCard value, $Res Function(UserInfoCard) _then) = _$UserInfoCardCopyWithImpl;
@useResult
$Res call({
 String nickName, String avatar, String sex, String sign, int level, int archiveCount, int likeNum, int fans, int focus
});




}
/// @nodoc
class _$UserInfoCardCopyWithImpl<$Res>
    implements $UserInfoCardCopyWith<$Res> {
  _$UserInfoCardCopyWithImpl(this._self, this._then);

  final UserInfoCard _self;
  final $Res Function(UserInfoCard) _then;

/// Create a copy of UserInfoCard
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nickName = null,Object? avatar = null,Object? sex = null,Object? sign = null,Object? level = null,Object? archiveCount = null,Object? likeNum = null,Object? fans = null,Object? focus = null,}) {
  return _then(_self.copyWith(
nickName: null == nickName ? _self.nickName : nickName // ignore: cast_nullable_to_non_nullable
as String,avatar: null == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String,sex: null == sex ? _self.sex : sex // ignore: cast_nullable_to_non_nullable
as String,sign: null == sign ? _self.sign : sign // ignore: cast_nullable_to_non_nullable
as String,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int,archiveCount: null == archiveCount ? _self.archiveCount : archiveCount // ignore: cast_nullable_to_non_nullable
as int,likeNum: null == likeNum ? _self.likeNum : likeNum // ignore: cast_nullable_to_non_nullable
as int,fans: null == fans ? _self.fans : fans // ignore: cast_nullable_to_non_nullable
as int,focus: null == focus ? _self.focus : focus // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [UserInfoCard].
extension UserInfoCardPatterns on UserInfoCard {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( UserInfoCardLoaded value)?  loaded,required TResult orElse(),}){
final _that = this;
switch (_that) {
case UserInfoCardLoaded() when loaded != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( UserInfoCardLoaded value)  loaded,}){
final _that = this;
switch (_that) {
case UserInfoCardLoaded():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( UserInfoCardLoaded value)?  loaded,}){
final _that = this;
switch (_that) {
case UserInfoCardLoaded() when loaded != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String nickName,  String avatar,  String sex,  String sign,  int level,  int archiveCount,  int likeNum,  int fans,  int focus)?  loaded,required TResult orElse(),}) {final _that = this;
switch (_that) {
case UserInfoCardLoaded() when loaded != null:
return loaded(_that.nickName,_that.avatar,_that.sex,_that.sign,_that.level,_that.archiveCount,_that.likeNum,_that.fans,_that.focus);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String nickName,  String avatar,  String sex,  String sign,  int level,  int archiveCount,  int likeNum,  int fans,  int focus)  loaded,}) {final _that = this;
switch (_that) {
case UserInfoCardLoaded():
return loaded(_that.nickName,_that.avatar,_that.sex,_that.sign,_that.level,_that.archiveCount,_that.likeNum,_that.fans,_that.focus);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String nickName,  String avatar,  String sex,  String sign,  int level,  int archiveCount,  int likeNum,  int fans,  int focus)?  loaded,}) {final _that = this;
switch (_that) {
case UserInfoCardLoaded() when loaded != null:
return loaded(_that.nickName,_that.avatar,_that.sex,_that.sign,_that.level,_that.archiveCount,_that.likeNum,_that.fans,_that.focus);case _:
  return null;

}
}

}

/// @nodoc


class UserInfoCardLoaded implements UserInfoCard {
  const UserInfoCardLoaded({required this.nickName, required this.avatar, required this.sex, required this.sign, required this.level, required this.archiveCount, required this.likeNum, required this.fans, required this.focus});
  

@override final  String nickName;
@override final  String avatar;
@override final  String sex;
@override final  String sign;
@override final  int level;
@override final  int archiveCount;
@override final  int likeNum;
@override final  int fans;
@override final  int focus;

/// Create a copy of UserInfoCard
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserInfoCardLoadedCopyWith<UserInfoCardLoaded> get copyWith => _$UserInfoCardLoadedCopyWithImpl<UserInfoCardLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserInfoCardLoaded&&(identical(other.nickName, nickName) || other.nickName == nickName)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.sex, sex) || other.sex == sex)&&(identical(other.sign, sign) || other.sign == sign)&&(identical(other.level, level) || other.level == level)&&(identical(other.archiveCount, archiveCount) || other.archiveCount == archiveCount)&&(identical(other.likeNum, likeNum) || other.likeNum == likeNum)&&(identical(other.fans, fans) || other.fans == fans)&&(identical(other.focus, focus) || other.focus == focus));
}


@override
int get hashCode => Object.hash(runtimeType,nickName,avatar,sex,sign,level,archiveCount,likeNum,fans,focus);

@override
String toString() {
  return 'UserInfoCard.loaded(nickName: $nickName, avatar: $avatar, sex: $sex, sign: $sign, level: $level, archiveCount: $archiveCount, likeNum: $likeNum, fans: $fans, focus: $focus)';
}


}

/// @nodoc
abstract mixin class $UserInfoCardLoadedCopyWith<$Res> implements $UserInfoCardCopyWith<$Res> {
  factory $UserInfoCardLoadedCopyWith(UserInfoCardLoaded value, $Res Function(UserInfoCardLoaded) _then) = _$UserInfoCardLoadedCopyWithImpl;
@override @useResult
$Res call({
 String nickName, String avatar, String sex, String sign, int level, int archiveCount, int likeNum, int fans, int focus
});




}
/// @nodoc
class _$UserInfoCardLoadedCopyWithImpl<$Res>
    implements $UserInfoCardLoadedCopyWith<$Res> {
  _$UserInfoCardLoadedCopyWithImpl(this._self, this._then);

  final UserInfoCardLoaded _self;
  final $Res Function(UserInfoCardLoaded) _then;

/// Create a copy of UserInfoCard
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nickName = null,Object? avatar = null,Object? sex = null,Object? sign = null,Object? level = null,Object? archiveCount = null,Object? likeNum = null,Object? fans = null,Object? focus = null,}) {
  return _then(UserInfoCardLoaded(
nickName: null == nickName ? _self.nickName : nickName // ignore: cast_nullable_to_non_nullable
as String,avatar: null == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String,sex: null == sex ? _self.sex : sex // ignore: cast_nullable_to_non_nullable
as String,sign: null == sign ? _self.sign : sign // ignore: cast_nullable_to_non_nullable
as String,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int,archiveCount: null == archiveCount ? _self.archiveCount : archiveCount // ignore: cast_nullable_to_non_nullable
as int,likeNum: null == likeNum ? _self.likeNum : likeNum // ignore: cast_nullable_to_non_nullable
as int,fans: null == fans ? _self.fans : fans // ignore: cast_nullable_to_non_nullable
as int,focus: null == focus ? _self.focus : focus // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
