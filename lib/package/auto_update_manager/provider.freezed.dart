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
mixin _$UpdateDialogState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateDialogState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateDialogState()';
}


}

/// @nodoc
class $UpdateDialogStateCopyWith<$Res>  {
$UpdateDialogStateCopyWith(UpdateDialogState _, $Res Function(UpdateDialogState) __);
}


/// Adds pattern-matching-related methods to [UpdateDialogState].
extension UpdateDialogStatePatterns on UpdateDialogState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Waiting value)?  waiting,TResult Function( _Updating value)?  updating,TResult Function( _Checking value)?  checking,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Waiting() when waiting != null:
return waiting(_that);case _Updating() when updating != null:
return updating(_that);case _Checking() when checking != null:
return checking(_that);case _Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Waiting value)  waiting,required TResult Function( _Updating value)  updating,required TResult Function( _Checking value)  checking,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Waiting():
return waiting(_that);case _Updating():
return updating(_that);case _Checking():
return checking(_that);case _Error():
return error(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Waiting value)?  waiting,TResult? Function( _Updating value)?  updating,TResult? Function( _Checking value)?  checking,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Waiting() when waiting != null:
return waiting(_that);case _Updating() when updating != null:
return updating(_that);case _Checking() when checking != null:
return checking(_that);case _Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  waiting,TResult Function( double progress)?  updating,TResult Function()?  checking,TResult Function( Error error)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Waiting() when waiting != null:
return waiting();case _Updating() when updating != null:
return updating(_that.progress);case _Checking() when checking != null:
return checking();case _Error() when error != null:
return error(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  waiting,required TResult Function( double progress)  updating,required TResult Function()  checking,required TResult Function( Error error)  error,}) {final _that = this;
switch (_that) {
case _Waiting():
return waiting();case _Updating():
return updating(_that.progress);case _Checking():
return checking();case _Error():
return error(_that.error);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  waiting,TResult? Function( double progress)?  updating,TResult? Function()?  checking,TResult? Function( Error error)?  error,}) {final _that = this;
switch (_that) {
case _Waiting() when waiting != null:
return waiting();case _Updating() when updating != null:
return updating(_that.progress);case _Checking() when checking != null:
return checking();case _Error() when error != null:
return error(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Waiting implements UpdateDialogState {
  const _Waiting();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Waiting);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateDialogState.waiting()';
}


}




/// @nodoc


class _Updating implements UpdateDialogState {
  const _Updating(this.progress);
  

 final  double progress;

/// Create a copy of UpdateDialogState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdatingCopyWith<_Updating> get copyWith => __$UpdatingCopyWithImpl<_Updating>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Updating&&(identical(other.progress, progress) || other.progress == progress));
}


@override
int get hashCode => Object.hash(runtimeType,progress);

@override
String toString() {
  return 'UpdateDialogState.updating(progress: $progress)';
}


}

/// @nodoc
abstract mixin class _$UpdatingCopyWith<$Res> implements $UpdateDialogStateCopyWith<$Res> {
  factory _$UpdatingCopyWith(_Updating value, $Res Function(_Updating) _then) = __$UpdatingCopyWithImpl;
@useResult
$Res call({
 double progress
});




}
/// @nodoc
class __$UpdatingCopyWithImpl<$Res>
    implements _$UpdatingCopyWith<$Res> {
  __$UpdatingCopyWithImpl(this._self, this._then);

  final _Updating _self;
  final $Res Function(_Updating) _then;

/// Create a copy of UpdateDialogState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? progress = null,}) {
  return _then(_Updating(
null == progress ? _self.progress : progress // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc


class _Checking implements UpdateDialogState {
  const _Checking();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Checking);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateDialogState.checking()';
}


}




/// @nodoc


class _Error implements UpdateDialogState {
  const _Error(this.error);
  

 final  Error error;

/// Create a copy of UpdateDialogState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'UpdateDialogState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $UpdateDialogStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@useResult
$Res call({
 Error error
});




}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of UpdateDialogState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(_Error(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Error,
  ));
}


}

// dart format on
