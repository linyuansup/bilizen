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
mixin _$CenterState {

 RouterInfo get page;
/// Create a copy of CenterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CenterStateCopyWith<CenterState> get copyWith => _$CenterStateCopyWithImpl<CenterState>(this as CenterState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CenterState&&(identical(other.page, page) || other.page == page));
}


@override
int get hashCode => Object.hash(runtimeType,page);

@override
String toString() {
  return 'CenterState(page: $page)';
}


}

/// @nodoc
abstract mixin class $CenterStateCopyWith<$Res>  {
  factory $CenterStateCopyWith(CenterState value, $Res Function(CenterState) _then) = _$CenterStateCopyWithImpl;
@useResult
$Res call({
 RouterInfo page
});




}
/// @nodoc
class _$CenterStateCopyWithImpl<$Res>
    implements $CenterStateCopyWith<$Res> {
  _$CenterStateCopyWithImpl(this._self, this._then);

  final CenterState _self;
  final $Res Function(CenterState) _then;

/// Create a copy of CenterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? page = null,}) {
  return _then(_self.copyWith(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as RouterInfo,
  ));
}

}


/// Adds pattern-matching-related methods to [CenterState].
extension CenterStatePatterns on CenterState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CenterState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CenterState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CenterState value)  $default,){
final _that = this;
switch (_that) {
case _CenterState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CenterState value)?  $default,){
final _that = this;
switch (_that) {
case _CenterState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( RouterInfo page)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CenterState() when $default != null:
return $default(_that.page);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( RouterInfo page)  $default,) {final _that = this;
switch (_that) {
case _CenterState():
return $default(_that.page);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( RouterInfo page)?  $default,) {final _that = this;
switch (_that) {
case _CenterState() when $default != null:
return $default(_that.page);case _:
  return null;

}
}

}

/// @nodoc


class _CenterState implements CenterState {
  const _CenterState({required this.page});
  

@override final  RouterInfo page;

/// Create a copy of CenterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CenterStateCopyWith<_CenterState> get copyWith => __$CenterStateCopyWithImpl<_CenterState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CenterState&&(identical(other.page, page) || other.page == page));
}


@override
int get hashCode => Object.hash(runtimeType,page);

@override
String toString() {
  return 'CenterState(page: $page)';
}


}

/// @nodoc
abstract mixin class _$CenterStateCopyWith<$Res> implements $CenterStateCopyWith<$Res> {
  factory _$CenterStateCopyWith(_CenterState value, $Res Function(_CenterState) _then) = __$CenterStateCopyWithImpl;
@override @useResult
$Res call({
 RouterInfo page
});




}
/// @nodoc
class __$CenterStateCopyWithImpl<$Res>
    implements _$CenterStateCopyWith<$Res> {
  __$CenterStateCopyWithImpl(this._self, this._then);

  final _CenterState _self;
  final $Res Function(_CenterState) _then;

/// Create a copy of CenterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = null,}) {
  return _then(_CenterState(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as RouterInfo,
  ));
}


}

// dart format on
