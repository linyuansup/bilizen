// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qr_login_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$QrLoginStatus {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QrLoginStatus);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'QrLoginStatus()';
}


}

/// @nodoc
class $QrLoginStatusCopyWith<$Res>  {
$QrLoginStatusCopyWith(QrLoginStatus _, $Res Function(QrLoginStatus) __);
}


/// Adds pattern-matching-related methods to [QrLoginStatus].
extension QrLoginStatusPatterns on QrLoginStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( QrLoginWaitingForScan value)?  waitingForScan,TResult Function( QrLoginScanned value)?  scanned,TResult Function( QrLoginTimeout value)?  timeout,required TResult orElse(),}){
final _that = this;
switch (_that) {
case QrLoginWaitingForScan() when waitingForScan != null:
return waitingForScan(_that);case QrLoginScanned() when scanned != null:
return scanned(_that);case QrLoginTimeout() when timeout != null:
return timeout(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( QrLoginWaitingForScan value)  waitingForScan,required TResult Function( QrLoginScanned value)  scanned,required TResult Function( QrLoginTimeout value)  timeout,}){
final _that = this;
switch (_that) {
case QrLoginWaitingForScan():
return waitingForScan(_that);case QrLoginScanned():
return scanned(_that);case QrLoginTimeout():
return timeout(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( QrLoginWaitingForScan value)?  waitingForScan,TResult? Function( QrLoginScanned value)?  scanned,TResult? Function( QrLoginTimeout value)?  timeout,}){
final _that = this;
switch (_that) {
case QrLoginWaitingForScan() when waitingForScan != null:
return waitingForScan(_that);case QrLoginScanned() when scanned != null:
return scanned(_that);case QrLoginTimeout() when timeout != null:
return timeout(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String qrCode,  String token)?  waitingForScan,TResult Function( String qrCode,  String token)?  scanned,TResult Function()?  timeout,required TResult orElse(),}) {final _that = this;
switch (_that) {
case QrLoginWaitingForScan() when waitingForScan != null:
return waitingForScan(_that.qrCode,_that.token);case QrLoginScanned() when scanned != null:
return scanned(_that.qrCode,_that.token);case QrLoginTimeout() when timeout != null:
return timeout();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String qrCode,  String token)  waitingForScan,required TResult Function( String qrCode,  String token)  scanned,required TResult Function()  timeout,}) {final _that = this;
switch (_that) {
case QrLoginWaitingForScan():
return waitingForScan(_that.qrCode,_that.token);case QrLoginScanned():
return scanned(_that.qrCode,_that.token);case QrLoginTimeout():
return timeout();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String qrCode,  String token)?  waitingForScan,TResult? Function( String qrCode,  String token)?  scanned,TResult? Function()?  timeout,}) {final _that = this;
switch (_that) {
case QrLoginWaitingForScan() when waitingForScan != null:
return waitingForScan(_that.qrCode,_that.token);case QrLoginScanned() when scanned != null:
return scanned(_that.qrCode,_that.token);case QrLoginTimeout() when timeout != null:
return timeout();case _:
  return null;

}
}

}

/// @nodoc


class QrLoginWaitingForScan implements QrLoginStatus {
  const QrLoginWaitingForScan({required this.qrCode, required this.token});
  

 final  String qrCode;
 final  String token;

/// Create a copy of QrLoginStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QrLoginWaitingForScanCopyWith<QrLoginWaitingForScan> get copyWith => _$QrLoginWaitingForScanCopyWithImpl<QrLoginWaitingForScan>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QrLoginWaitingForScan&&(identical(other.qrCode, qrCode) || other.qrCode == qrCode)&&(identical(other.token, token) || other.token == token));
}


@override
int get hashCode => Object.hash(runtimeType,qrCode,token);

@override
String toString() {
  return 'QrLoginStatus.waitingForScan(qrCode: $qrCode, token: $token)';
}


}

/// @nodoc
abstract mixin class $QrLoginWaitingForScanCopyWith<$Res> implements $QrLoginStatusCopyWith<$Res> {
  factory $QrLoginWaitingForScanCopyWith(QrLoginWaitingForScan value, $Res Function(QrLoginWaitingForScan) _then) = _$QrLoginWaitingForScanCopyWithImpl;
@useResult
$Res call({
 String qrCode, String token
});




}
/// @nodoc
class _$QrLoginWaitingForScanCopyWithImpl<$Res>
    implements $QrLoginWaitingForScanCopyWith<$Res> {
  _$QrLoginWaitingForScanCopyWithImpl(this._self, this._then);

  final QrLoginWaitingForScan _self;
  final $Res Function(QrLoginWaitingForScan) _then;

/// Create a copy of QrLoginStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? qrCode = null,Object? token = null,}) {
  return _then(QrLoginWaitingForScan(
qrCode: null == qrCode ? _self.qrCode : qrCode // ignore: cast_nullable_to_non_nullable
as String,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class QrLoginScanned implements QrLoginStatus {
  const QrLoginScanned({required this.qrCode, required this.token});
  

 final  String qrCode;
 final  String token;

/// Create a copy of QrLoginStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QrLoginScannedCopyWith<QrLoginScanned> get copyWith => _$QrLoginScannedCopyWithImpl<QrLoginScanned>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QrLoginScanned&&(identical(other.qrCode, qrCode) || other.qrCode == qrCode)&&(identical(other.token, token) || other.token == token));
}


@override
int get hashCode => Object.hash(runtimeType,qrCode,token);

@override
String toString() {
  return 'QrLoginStatus.scanned(qrCode: $qrCode, token: $token)';
}


}

/// @nodoc
abstract mixin class $QrLoginScannedCopyWith<$Res> implements $QrLoginStatusCopyWith<$Res> {
  factory $QrLoginScannedCopyWith(QrLoginScanned value, $Res Function(QrLoginScanned) _then) = _$QrLoginScannedCopyWithImpl;
@useResult
$Res call({
 String qrCode, String token
});




}
/// @nodoc
class _$QrLoginScannedCopyWithImpl<$Res>
    implements $QrLoginScannedCopyWith<$Res> {
  _$QrLoginScannedCopyWithImpl(this._self, this._then);

  final QrLoginScanned _self;
  final $Res Function(QrLoginScanned) _then;

/// Create a copy of QrLoginStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? qrCode = null,Object? token = null,}) {
  return _then(QrLoginScanned(
qrCode: null == qrCode ? _self.qrCode : qrCode // ignore: cast_nullable_to_non_nullable
as String,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class QrLoginTimeout implements QrLoginStatus {
  const QrLoginTimeout();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QrLoginTimeout);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'QrLoginStatus.timeout()';
}


}




// dart format on
