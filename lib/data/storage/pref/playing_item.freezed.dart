// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'playing_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PlayingItem {

 String get bvid; int get pIndex; int get position;
/// Create a copy of PlayingItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlayingItemCopyWith<PlayingItem> get copyWith => _$PlayingItemCopyWithImpl<PlayingItem>(this as PlayingItem, _$identity);

  /// Serializes this PlayingItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlayingItem&&(identical(other.bvid, bvid) || other.bvid == bvid)&&(identical(other.pIndex, pIndex) || other.pIndex == pIndex)&&(identical(other.position, position) || other.position == position));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bvid,pIndex,position);

@override
String toString() {
  return 'PlayingItem(bvid: $bvid, pIndex: $pIndex, position: $position)';
}


}

/// @nodoc
abstract mixin class $PlayingItemCopyWith<$Res>  {
  factory $PlayingItemCopyWith(PlayingItem value, $Res Function(PlayingItem) _then) = _$PlayingItemCopyWithImpl;
@useResult
$Res call({
 String bvid, int pIndex, int position
});




}
/// @nodoc
class _$PlayingItemCopyWithImpl<$Res>
    implements $PlayingItemCopyWith<$Res> {
  _$PlayingItemCopyWithImpl(this._self, this._then);

  final PlayingItem _self;
  final $Res Function(PlayingItem) _then;

/// Create a copy of PlayingItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bvid = null,Object? pIndex = null,Object? position = null,}) {
  return _then(_self.copyWith(
bvid: null == bvid ? _self.bvid : bvid // ignore: cast_nullable_to_non_nullable
as String,pIndex: null == pIndex ? _self.pIndex : pIndex // ignore: cast_nullable_to_non_nullable
as int,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PlayingItem].
extension PlayingItemPatterns on PlayingItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlayingItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlayingItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlayingItem value)  $default,){
final _that = this;
switch (_that) {
case _PlayingItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlayingItem value)?  $default,){
final _that = this;
switch (_that) {
case _PlayingItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String bvid,  int pIndex,  int position)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlayingItem() when $default != null:
return $default(_that.bvid,_that.pIndex,_that.position);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String bvid,  int pIndex,  int position)  $default,) {final _that = this;
switch (_that) {
case _PlayingItem():
return $default(_that.bvid,_that.pIndex,_that.position);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String bvid,  int pIndex,  int position)?  $default,) {final _that = this;
switch (_that) {
case _PlayingItem() when $default != null:
return $default(_that.bvid,_that.pIndex,_that.position);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PlayingItem implements PlayingItem {
  const _PlayingItem({required this.bvid, required this.pIndex, required this.position});
  factory _PlayingItem.fromJson(Map<String, dynamic> json) => _$PlayingItemFromJson(json);

@override final  String bvid;
@override final  int pIndex;
@override final  int position;

/// Create a copy of PlayingItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlayingItemCopyWith<_PlayingItem> get copyWith => __$PlayingItemCopyWithImpl<_PlayingItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlayingItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlayingItem&&(identical(other.bvid, bvid) || other.bvid == bvid)&&(identical(other.pIndex, pIndex) || other.pIndex == pIndex)&&(identical(other.position, position) || other.position == position));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bvid,pIndex,position);

@override
String toString() {
  return 'PlayingItem(bvid: $bvid, pIndex: $pIndex, position: $position)';
}


}

/// @nodoc
abstract mixin class _$PlayingItemCopyWith<$Res> implements $PlayingItemCopyWith<$Res> {
  factory _$PlayingItemCopyWith(_PlayingItem value, $Res Function(_PlayingItem) _then) = __$PlayingItemCopyWithImpl;
@override @useResult
$Res call({
 String bvid, int pIndex, int position
});




}
/// @nodoc
class __$PlayingItemCopyWithImpl<$Res>
    implements _$PlayingItemCopyWith<$Res> {
  __$PlayingItemCopyWithImpl(this._self, this._then);

  final _PlayingItem _self;
  final $Res Function(_PlayingItem) _then;

/// Create a copy of PlayingItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bvid = null,Object? pIndex = null,Object? position = null,}) {
  return _then(_PlayingItem(
bvid: null == bvid ? _self.bvid : bvid // ignore: cast_nullable_to_non_nullable
as String,pIndex: null == pIndex ? _self.pIndex : pIndex // ignore: cast_nullable_to_non_nullable
as int,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
