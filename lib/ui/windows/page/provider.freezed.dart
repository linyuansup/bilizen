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
mixin _$UpdateToastState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateToastState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateToastState()';
}


}

/// @nodoc
class $UpdateToastStateCopyWith<$Res>  {
$UpdateToastStateCopyWith(UpdateToastState _, $Res Function(UpdateToastState) __);
}


/// Adds pattern-matching-related methods to [UpdateToastState].
extension UpdateToastStatePatterns on UpdateToastState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Downloading value)?  downloading,TResult Function( _Checking value)?  checking,TResult Function( _Waiting value)?  waiting,TResult Function( _Completed value)?  completed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Downloading() when downloading != null:
return downloading(_that);case _Checking() when checking != null:
return checking(_that);case _Waiting() when waiting != null:
return waiting(_that);case _Completed() when completed != null:
return completed(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Downloading value)  downloading,required TResult Function( _Checking value)  checking,required TResult Function( _Waiting value)  waiting,required TResult Function( _Completed value)  completed,}){
final _that = this;
switch (_that) {
case _Downloading():
return downloading(_that);case _Checking():
return checking(_that);case _Waiting():
return waiting(_that);case _Completed():
return completed(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Downloading value)?  downloading,TResult? Function( _Checking value)?  checking,TResult? Function( _Waiting value)?  waiting,TResult? Function( _Completed value)?  completed,}){
final _that = this;
switch (_that) {
case _Downloading() when downloading != null:
return downloading(_that);case _Checking() when checking != null:
return checking(_that);case _Waiting() when waiting != null:
return waiting(_that);case _Completed() when completed != null:
return completed(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( double progress)?  downloading,TResult Function()?  checking,TResult Function()?  waiting,TResult Function()?  completed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Downloading() when downloading != null:
return downloading(_that.progress);case _Checking() when checking != null:
return checking();case _Waiting() when waiting != null:
return waiting();case _Completed() when completed != null:
return completed();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( double progress)  downloading,required TResult Function()  checking,required TResult Function()  waiting,required TResult Function()  completed,}) {final _that = this;
switch (_that) {
case _Downloading():
return downloading(_that.progress);case _Checking():
return checking();case _Waiting():
return waiting();case _Completed():
return completed();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( double progress)?  downloading,TResult? Function()?  checking,TResult? Function()?  waiting,TResult? Function()?  completed,}) {final _that = this;
switch (_that) {
case _Downloading() when downloading != null:
return downloading(_that.progress);case _Checking() when checking != null:
return checking();case _Waiting() when waiting != null:
return waiting();case _Completed() when completed != null:
return completed();case _:
  return null;

}
}

}

/// @nodoc


class _Downloading implements UpdateToastState {
  const _Downloading(this.progress);
  

 final  double progress;

/// Create a copy of UpdateToastState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DownloadingCopyWith<_Downloading> get copyWith => __$DownloadingCopyWithImpl<_Downloading>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Downloading&&(identical(other.progress, progress) || other.progress == progress));
}


@override
int get hashCode => Object.hash(runtimeType,progress);

@override
String toString() {
  return 'UpdateToastState.downloading(progress: $progress)';
}


}

/// @nodoc
abstract mixin class _$DownloadingCopyWith<$Res> implements $UpdateToastStateCopyWith<$Res> {
  factory _$DownloadingCopyWith(_Downloading value, $Res Function(_Downloading) _then) = __$DownloadingCopyWithImpl;
@useResult
$Res call({
 double progress
});




}
/// @nodoc
class __$DownloadingCopyWithImpl<$Res>
    implements _$DownloadingCopyWith<$Res> {
  __$DownloadingCopyWithImpl(this._self, this._then);

  final _Downloading _self;
  final $Res Function(_Downloading) _then;

/// Create a copy of UpdateToastState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? progress = null,}) {
  return _then(_Downloading(
null == progress ? _self.progress : progress // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc


class _Checking implements UpdateToastState {
  const _Checking();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Checking);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateToastState.checking()';
}


}




/// @nodoc


class _Waiting implements UpdateToastState {
  const _Waiting();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Waiting);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateToastState.waiting()';
}


}




/// @nodoc


class _Completed implements UpdateToastState {
  const _Completed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Completed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateToastState.completed()';
}


}




// dart format on
