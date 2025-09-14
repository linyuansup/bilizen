// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fav_data_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FavDataState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavDataState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FavDataState()';
}


}

/// @nodoc
class $FavDataStateCopyWith<$Res>  {
$FavDataStateCopyWith(FavDataState _, $Res Function(FavDataState) __);
}


/// Adds pattern-matching-related methods to [FavDataState].
extension FavDataStatePatterns on FavDataState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FavDataLoading value)?  loading,TResult Function( FavDataSuccess value)?  success,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FavDataLoading() when loading != null:
return loading(_that);case FavDataSuccess() when success != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FavDataLoading value)  loading,required TResult Function( FavDataSuccess value)  success,}){
final _that = this;
switch (_that) {
case FavDataLoading():
return loading(_that);case FavDataSuccess():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FavDataLoading value)?  loading,TResult? Function( FavDataSuccess value)?  success,}){
final _that = this;
switch (_that) {
case FavDataLoading() when loading != null:
return loading(_that);case FavDataSuccess() when success != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( List<VideoCardData> items)?  success,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FavDataLoading() when loading != null:
return loading();case FavDataSuccess() when success != null:
return success(_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( List<VideoCardData> items)  success,}) {final _that = this;
switch (_that) {
case FavDataLoading():
return loading();case FavDataSuccess():
return success(_that.items);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( List<VideoCardData> items)?  success,}) {final _that = this;
switch (_that) {
case FavDataLoading() when loading != null:
return loading();case FavDataSuccess() when success != null:
return success(_that.items);case _:
  return null;

}
}

}

/// @nodoc


class FavDataLoading implements FavDataState {
  const FavDataLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavDataLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FavDataState.loading()';
}


}




/// @nodoc


class FavDataSuccess implements FavDataState {
  const FavDataSuccess({required final  List<VideoCardData> items}): _items = items;
  

 final  List<VideoCardData> _items;
 List<VideoCardData> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of FavDataState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FavDataSuccessCopyWith<FavDataSuccess> get copyWith => _$FavDataSuccessCopyWithImpl<FavDataSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavDataSuccess&&const DeepCollectionEquality().equals(other._items, _items));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'FavDataState.success(items: $items)';
}


}

/// @nodoc
abstract mixin class $FavDataSuccessCopyWith<$Res> implements $FavDataStateCopyWith<$Res> {
  factory $FavDataSuccessCopyWith(FavDataSuccess value, $Res Function(FavDataSuccess) _then) = _$FavDataSuccessCopyWithImpl;
@useResult
$Res call({
 List<VideoCardData> items
});




}
/// @nodoc
class _$FavDataSuccessCopyWithImpl<$Res>
    implements $FavDataSuccessCopyWith<$Res> {
  _$FavDataSuccessCopyWithImpl(this._self, this._then);

  final FavDataSuccess _self;
  final $Res Function(FavDataSuccess) _then;

/// Create a copy of FavDataState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? items = null,}) {
  return _then(FavDataSuccess(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<VideoCardData>,
  ));
}


}

// dart format on
