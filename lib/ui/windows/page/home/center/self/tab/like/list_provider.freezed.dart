// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LikeListState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LikeListState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LikeListState()';
}


}

/// @nodoc
class $LikeListStateCopyWith<$Res>  {
$LikeListStateCopyWith(LikeListState _, $Res Function(LikeListState) __);
}


/// Adds pattern-matching-related methods to [LikeListState].
extension LikeListStatePatterns on LikeListState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LikeListLoading value)?  loading,TResult Function( LikeListSuccess value)?  success,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LikeListLoading() when loading != null:
return loading(_that);case LikeListSuccess() when success != null:
return success(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LikeListLoading value)  loading,required TResult Function( LikeListSuccess value)  success,}){
final _that = this;
switch (_that) {
case LikeListLoading():
return loading(_that);case LikeListSuccess():
return success(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LikeListLoading value)?  loading,TResult? Function( LikeListSuccess value)?  success,}){
final _that = this;
switch (_that) {
case LikeListLoading() when loading != null:
return loading(_that);case LikeListSuccess() when success != null:
return success(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( List<LikeListItem> items,  int selectedIndex)?  success,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LikeListLoading() when loading != null:
return loading();case LikeListSuccess() when success != null:
return success(_that.items,_that.selectedIndex);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( List<LikeListItem> items,  int selectedIndex)  success,}) {final _that = this;
switch (_that) {
case LikeListLoading():
return loading();case LikeListSuccess():
return success(_that.items,_that.selectedIndex);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( List<LikeListItem> items,  int selectedIndex)?  success,}) {final _that = this;
switch (_that) {
case LikeListLoading() when loading != null:
return loading();case LikeListSuccess() when success != null:
return success(_that.items,_that.selectedIndex);case _:
  return null;

}
}

}

/// @nodoc


class LikeListLoading implements LikeListState {
  const LikeListLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LikeListLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LikeListState.loading()';
}


}




/// @nodoc


class LikeListSuccess implements LikeListState {
  const LikeListSuccess({required final  List<LikeListItem> items, required this.selectedIndex}): _items = items;
  

 final  List<LikeListItem> _items;
 List<LikeListItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

 final  int selectedIndex;

/// Create a copy of LikeListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LikeListSuccessCopyWith<LikeListSuccess> get copyWith => _$LikeListSuccessCopyWithImpl<LikeListSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LikeListSuccess&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.selectedIndex, selectedIndex) || other.selectedIndex == selectedIndex));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),selectedIndex);

@override
String toString() {
  return 'LikeListState.success(items: $items, selectedIndex: $selectedIndex)';
}


}

/// @nodoc
abstract mixin class $LikeListSuccessCopyWith<$Res> implements $LikeListStateCopyWith<$Res> {
  factory $LikeListSuccessCopyWith(LikeListSuccess value, $Res Function(LikeListSuccess) _then) = _$LikeListSuccessCopyWithImpl;
@useResult
$Res call({
 List<LikeListItem> items, int selectedIndex
});




}
/// @nodoc
class _$LikeListSuccessCopyWithImpl<$Res>
    implements $LikeListSuccessCopyWith<$Res> {
  _$LikeListSuccessCopyWithImpl(this._self, this._then);

  final LikeListSuccess _self;
  final $Res Function(LikeListSuccess) _then;

/// Create a copy of LikeListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? items = null,Object? selectedIndex = null,}) {
  return _then(LikeListSuccess(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<LikeListItem>,selectedIndex: null == selectedIndex ? _self.selectedIndex : selectedIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$LikeListItem {

 int get id; String get name;
/// Create a copy of LikeListItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LikeListItemCopyWith<LikeListItem> get copyWith => _$LikeListItemCopyWithImpl<LikeListItem>(this as LikeListItem, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LikeListItem&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'LikeListItem(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $LikeListItemCopyWith<$Res>  {
  factory $LikeListItemCopyWith(LikeListItem value, $Res Function(LikeListItem) _then) = _$LikeListItemCopyWithImpl;
@useResult
$Res call({
 int id, String name
});




}
/// @nodoc
class _$LikeListItemCopyWithImpl<$Res>
    implements $LikeListItemCopyWith<$Res> {
  _$LikeListItemCopyWithImpl(this._self, this._then);

  final LikeListItem _self;
  final $Res Function(LikeListItem) _then;

/// Create a copy of LikeListItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [LikeListItem].
extension LikeListItemPatterns on LikeListItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LikeListItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LikeListItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LikeListItem value)  $default,){
final _that = this;
switch (_that) {
case _LikeListItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LikeListItem value)?  $default,){
final _that = this;
switch (_that) {
case _LikeListItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LikeListItem() when $default != null:
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name)  $default,) {final _that = this;
switch (_that) {
case _LikeListItem():
return $default(_that.id,_that.name);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name)?  $default,) {final _that = this;
switch (_that) {
case _LikeListItem() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc


class _LikeListItem implements LikeListItem {
  const _LikeListItem({required this.id, required this.name});
  

@override final  int id;
@override final  String name;

/// Create a copy of LikeListItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LikeListItemCopyWith<_LikeListItem> get copyWith => __$LikeListItemCopyWithImpl<_LikeListItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LikeListItem&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'LikeListItem(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$LikeListItemCopyWith<$Res> implements $LikeListItemCopyWith<$Res> {
  factory _$LikeListItemCopyWith(_LikeListItem value, $Res Function(_LikeListItem) _then) = __$LikeListItemCopyWithImpl;
@override @useResult
$Res call({
 int id, String name
});




}
/// @nodoc
class __$LikeListItemCopyWithImpl<$Res>
    implements _$LikeListItemCopyWith<$Res> {
  __$LikeListItemCopyWithImpl(this._self, this._then);

  final _LikeListItem _self;
  final $Res Function(_LikeListItem) _then;

/// Create a copy of LikeListItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,}) {
  return _then(_LikeListItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
