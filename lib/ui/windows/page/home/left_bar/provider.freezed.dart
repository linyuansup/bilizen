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
mixin _$LeftBarState {

 RouterInfo get page;
/// Create a copy of LeftBarState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LeftBarStateCopyWith<LeftBarState> get copyWith => _$LeftBarStateCopyWithImpl<LeftBarState>(this as LeftBarState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LeftBarState&&(identical(other.page, page) || other.page == page));
}


@override
int get hashCode => Object.hash(runtimeType,page);

@override
String toString() {
  return 'LeftBarState(page: $page)';
}


}

/// @nodoc
abstract mixin class $LeftBarStateCopyWith<$Res>  {
  factory $LeftBarStateCopyWith(LeftBarState value, $Res Function(LeftBarState) _then) = _$LeftBarStateCopyWithImpl;
@useResult
$Res call({
 RouterInfo page
});




}
/// @nodoc
class _$LeftBarStateCopyWithImpl<$Res>
    implements $LeftBarStateCopyWith<$Res> {
  _$LeftBarStateCopyWithImpl(this._self, this._then);

  final LeftBarState _self;
  final $Res Function(LeftBarState) _then;

/// Create a copy of LeftBarState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? page = null,}) {
  return _then(_self.copyWith(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as RouterInfo,
  ));
}

}


/// Adds pattern-matching-related methods to [LeftBarState].
extension LeftBarStatePatterns on LeftBarState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LeftBarState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LeftBarState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LeftBarState value)  $default,){
final _that = this;
switch (_that) {
case _LeftBarState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LeftBarState value)?  $default,){
final _that = this;
switch (_that) {
case _LeftBarState() when $default != null:
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
case _LeftBarState() when $default != null:
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
case _LeftBarState():
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
case _LeftBarState() when $default != null:
return $default(_that.page);case _:
  return null;

}
}

}

/// @nodoc


class _LeftBarState implements LeftBarState {
  const _LeftBarState({required this.page});
  

@override final  RouterInfo page;

/// Create a copy of LeftBarState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LeftBarStateCopyWith<_LeftBarState> get copyWith => __$LeftBarStateCopyWithImpl<_LeftBarState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LeftBarState&&(identical(other.page, page) || other.page == page));
}


@override
int get hashCode => Object.hash(runtimeType,page);

@override
String toString() {
  return 'LeftBarState(page: $page)';
}


}

/// @nodoc
abstract mixin class _$LeftBarStateCopyWith<$Res> implements $LeftBarStateCopyWith<$Res> {
  factory _$LeftBarStateCopyWith(_LeftBarState value, $Res Function(_LeftBarState) _then) = __$LeftBarStateCopyWithImpl;
@override @useResult
$Res call({
 RouterInfo page
});




}
/// @nodoc
class __$LeftBarStateCopyWithImpl<$Res>
    implements _$LeftBarStateCopyWith<$Res> {
  __$LeftBarStateCopyWithImpl(this._self, this._then);

  final _LeftBarState _self;
  final $Res Function(_LeftBarState) _then;

/// Create a copy of LeftBarState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = null,}) {
  return _then(_LeftBarState(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as RouterInfo,
  ));
}


}

// dart format on
