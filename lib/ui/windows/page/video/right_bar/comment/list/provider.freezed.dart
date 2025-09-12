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
mixin _$VideoCommentListState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoCommentListState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VideoCommentListState()';
}


}

/// @nodoc
class $VideoCommentListStateCopyWith<$Res>  {
$VideoCommentListStateCopyWith(VideoCommentListState _, $Res Function(VideoCommentListState) __);
}


/// Adds pattern-matching-related methods to [VideoCommentListState].
extension VideoCommentListStatePatterns on VideoCommentListState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( VideoCommentListStateLoading value)?  loading,TResult Function( VideoCommentListStateLoaded value)?  loaded,required TResult orElse(),}){
final _that = this;
switch (_that) {
case VideoCommentListStateLoading() when loading != null:
return loading(_that);case VideoCommentListStateLoaded() when loaded != null:
return loaded(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( VideoCommentListStateLoading value)  loading,required TResult Function( VideoCommentListStateLoaded value)  loaded,}){
final _that = this;
switch (_that) {
case VideoCommentListStateLoading():
return loading(_that);case VideoCommentListStateLoaded():
return loaded(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( VideoCommentListStateLoading value)?  loading,TResult? Function( VideoCommentListStateLoaded value)?  loaded,}){
final _that = this;
switch (_that) {
case VideoCommentListStateLoading() when loading != null:
return loading(_that);case VideoCommentListStateLoaded() when loaded != null:
return loaded(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( List<Comment> comments)?  loaded,required TResult orElse(),}) {final _that = this;
switch (_that) {
case VideoCommentListStateLoading() when loading != null:
return loading();case VideoCommentListStateLoaded() when loaded != null:
return loaded(_that.comments);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( List<Comment> comments)  loaded,}) {final _that = this;
switch (_that) {
case VideoCommentListStateLoading():
return loading();case VideoCommentListStateLoaded():
return loaded(_that.comments);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( List<Comment> comments)?  loaded,}) {final _that = this;
switch (_that) {
case VideoCommentListStateLoading() when loading != null:
return loading();case VideoCommentListStateLoaded() when loaded != null:
return loaded(_that.comments);case _:
  return null;

}
}

}

/// @nodoc


class VideoCommentListStateLoading implements VideoCommentListState {
  const VideoCommentListStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoCommentListStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VideoCommentListState.loading()';
}


}




/// @nodoc


class VideoCommentListStateLoaded implements VideoCommentListState {
  const VideoCommentListStateLoaded({required final  List<Comment> comments}): _comments = comments;
  

 final  List<Comment> _comments;
 List<Comment> get comments {
  if (_comments is EqualUnmodifiableListView) return _comments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_comments);
}


/// Create a copy of VideoCommentListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VideoCommentListStateLoadedCopyWith<VideoCommentListStateLoaded> get copyWith => _$VideoCommentListStateLoadedCopyWithImpl<VideoCommentListStateLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoCommentListStateLoaded&&const DeepCollectionEquality().equals(other._comments, _comments));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_comments));

@override
String toString() {
  return 'VideoCommentListState.loaded(comments: $comments)';
}


}

/// @nodoc
abstract mixin class $VideoCommentListStateLoadedCopyWith<$Res> implements $VideoCommentListStateCopyWith<$Res> {
  factory $VideoCommentListStateLoadedCopyWith(VideoCommentListStateLoaded value, $Res Function(VideoCommentListStateLoaded) _then) = _$VideoCommentListStateLoadedCopyWithImpl;
@useResult
$Res call({
 List<Comment> comments
});




}
/// @nodoc
class _$VideoCommentListStateLoadedCopyWithImpl<$Res>
    implements $VideoCommentListStateLoadedCopyWith<$Res> {
  _$VideoCommentListStateLoadedCopyWithImpl(this._self, this._then);

  final VideoCommentListStateLoaded _self;
  final $Res Function(VideoCommentListStateLoaded) _then;

/// Create a copy of VideoCommentListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? comments = null,}) {
  return _then(VideoCommentListStateLoaded(
comments: null == comments ? _self._comments : comments // ignore: cast_nullable_to_non_nullable
as List<Comment>,
  ));
}


}

// dart format on
