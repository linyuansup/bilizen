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
mixin _$RightBarState {

 VideoRightBarPage get page;
/// Create a copy of RightBarState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RightBarStateCopyWith<RightBarState> get copyWith => _$RightBarStateCopyWithImpl<RightBarState>(this as RightBarState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RightBarState&&(identical(other.page, page) || other.page == page));
}


@override
int get hashCode => Object.hash(runtimeType,page);

@override
String toString() {
  return 'RightBarState(page: $page)';
}


}

/// @nodoc
abstract mixin class $RightBarStateCopyWith<$Res>  {
  factory $RightBarStateCopyWith(RightBarState value, $Res Function(RightBarState) _then) = _$RightBarStateCopyWithImpl;
@useResult
$Res call({
 VideoRightBarPage page
});




}
/// @nodoc
class _$RightBarStateCopyWithImpl<$Res>
    implements $RightBarStateCopyWith<$Res> {
  _$RightBarStateCopyWithImpl(this._self, this._then);

  final RightBarState _self;
  final $Res Function(RightBarState) _then;

/// Create a copy of RightBarState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? page = null,}) {
  return _then(_self.copyWith(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as VideoRightBarPage,
  ));
}

}


/// Adds pattern-matching-related methods to [RightBarState].
extension RightBarStatePatterns on RightBarState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( RightBarStateInitial value)?  initial,required TResult orElse(),}){
final _that = this;
switch (_that) {
case RightBarStateInitial() when initial != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( RightBarStateInitial value)  initial,}){
final _that = this;
switch (_that) {
case RightBarStateInitial():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( RightBarStateInitial value)?  initial,}){
final _that = this;
switch (_that) {
case RightBarStateInitial() when initial != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( VideoRightBarPage page)?  initial,required TResult orElse(),}) {final _that = this;
switch (_that) {
case RightBarStateInitial() when initial != null:
return initial(_that.page);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( VideoRightBarPage page)  initial,}) {final _that = this;
switch (_that) {
case RightBarStateInitial():
return initial(_that.page);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( VideoRightBarPage page)?  initial,}) {final _that = this;
switch (_that) {
case RightBarStateInitial() when initial != null:
return initial(_that.page);case _:
  return null;

}
}

}

/// @nodoc


class RightBarStateInitial implements RightBarState {
  const RightBarStateInitial({required this.page});
  

@override final  VideoRightBarPage page;

/// Create a copy of RightBarState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RightBarStateInitialCopyWith<RightBarStateInitial> get copyWith => _$RightBarStateInitialCopyWithImpl<RightBarStateInitial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RightBarStateInitial&&(identical(other.page, page) || other.page == page));
}


@override
int get hashCode => Object.hash(runtimeType,page);

@override
String toString() {
  return 'RightBarState.initial(page: $page)';
}


}

/// @nodoc
abstract mixin class $RightBarStateInitialCopyWith<$Res> implements $RightBarStateCopyWith<$Res> {
  factory $RightBarStateInitialCopyWith(RightBarStateInitial value, $Res Function(RightBarStateInitial) _then) = _$RightBarStateInitialCopyWithImpl;
@override @useResult
$Res call({
 VideoRightBarPage page
});




}
/// @nodoc
class _$RightBarStateInitialCopyWithImpl<$Res>
    implements $RightBarStateInitialCopyWith<$Res> {
  _$RightBarStateInitialCopyWithImpl(this._self, this._then);

  final RightBarStateInitial _self;
  final $Res Function(RightBarStateInitial) _then;

/// Create a copy of RightBarState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = null,}) {
  return _then(RightBarStateInitial(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as VideoRightBarPage,
  ));
}


}

// dart format on
