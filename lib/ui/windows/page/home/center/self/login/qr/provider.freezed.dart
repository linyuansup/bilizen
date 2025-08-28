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
mixin _$QrCodeLoginState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QrCodeLoginState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'QrCodeLoginState()';
}


}

/// @nodoc
class $QrCodeLoginStateCopyWith<$Res>  {
$QrCodeLoginStateCopyWith(QrCodeLoginState _, $Res Function(QrCodeLoginState) __);
}


/// Adds pattern-matching-related methods to [QrCodeLoginState].
extension QrCodeLoginStatePatterns on QrCodeLoginState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( QrCodeLoginStateLoading value)?  loading,TResult Function( QrCodeLoginStateInitial value)?  initial,required TResult orElse(),}){
final _that = this;
switch (_that) {
case QrCodeLoginStateLoading() when loading != null:
return loading(_that);case QrCodeLoginStateInitial() when initial != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( QrCodeLoginStateLoading value)  loading,required TResult Function( QrCodeLoginStateInitial value)  initial,}){
final _that = this;
switch (_that) {
case QrCodeLoginStateLoading():
return loading(_that);case QrCodeLoginStateInitial():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( QrCodeLoginStateLoading value)?  loading,TResult? Function( QrCodeLoginStateInitial value)?  initial,}){
final _that = this;
switch (_that) {
case QrCodeLoginStateLoading() when loading != null:
return loading(_that);case QrCodeLoginStateInitial() when initial != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( QrLoginStatus status)?  initial,required TResult orElse(),}) {final _that = this;
switch (_that) {
case QrCodeLoginStateLoading() when loading != null:
return loading();case QrCodeLoginStateInitial() when initial != null:
return initial(_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( QrLoginStatus status)  initial,}) {final _that = this;
switch (_that) {
case QrCodeLoginStateLoading():
return loading();case QrCodeLoginStateInitial():
return initial(_that.status);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( QrLoginStatus status)?  initial,}) {final _that = this;
switch (_that) {
case QrCodeLoginStateLoading() when loading != null:
return loading();case QrCodeLoginStateInitial() when initial != null:
return initial(_that.status);case _:
  return null;

}
}

}

/// @nodoc


class QrCodeLoginStateLoading implements QrCodeLoginState {
  const QrCodeLoginStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QrCodeLoginStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'QrCodeLoginState.loading()';
}


}




/// @nodoc


class QrCodeLoginStateInitial implements QrCodeLoginState {
  const QrCodeLoginStateInitial({required this.status});
  

 final  QrLoginStatus status;

/// Create a copy of QrCodeLoginState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QrCodeLoginStateInitialCopyWith<QrCodeLoginStateInitial> get copyWith => _$QrCodeLoginStateInitialCopyWithImpl<QrCodeLoginStateInitial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QrCodeLoginStateInitial&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,status);

@override
String toString() {
  return 'QrCodeLoginState.initial(status: $status)';
}


}

/// @nodoc
abstract mixin class $QrCodeLoginStateInitialCopyWith<$Res> implements $QrCodeLoginStateCopyWith<$Res> {
  factory $QrCodeLoginStateInitialCopyWith(QrCodeLoginStateInitial value, $Res Function(QrCodeLoginStateInitial) _then) = _$QrCodeLoginStateInitialCopyWithImpl;
@useResult
$Res call({
 QrLoginStatus status
});


$QrLoginStatusCopyWith<$Res> get status;

}
/// @nodoc
class _$QrCodeLoginStateInitialCopyWithImpl<$Res>
    implements $QrCodeLoginStateInitialCopyWith<$Res> {
  _$QrCodeLoginStateInitialCopyWithImpl(this._self, this._then);

  final QrCodeLoginStateInitial _self;
  final $Res Function(QrCodeLoginStateInitial) _then;

/// Create a copy of QrCodeLoginState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? status = null,}) {
  return _then(QrCodeLoginStateInitial(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as QrLoginStatus,
  ));
}

/// Create a copy of QrCodeLoginState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$QrLoginStatusCopyWith<$Res> get status {
  
  return $QrLoginStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}

// dart format on
