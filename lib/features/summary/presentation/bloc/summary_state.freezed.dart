// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'summary_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SummaryState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SummaryState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SummaryState()';
}


}

/// @nodoc
class $SummaryStateCopyWith<$Res>  {
$SummaryStateCopyWith(SummaryState _, $Res Function(SummaryState) __);
}


/// Adds pattern-matching-related methods to [SummaryState].
extension SummaryStatePatterns on SummaryState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SummaryInitial value)?  initial,TResult Function( SummaryLoading value)?  loading,TResult Function( SummarySuccess value)?  success,TResult Function( SummaryFailure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SummaryInitial() when initial != null:
return initial(_that);case SummaryLoading() when loading != null:
return loading(_that);case SummarySuccess() when success != null:
return success(_that);case SummaryFailure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SummaryInitial value)  initial,required TResult Function( SummaryLoading value)  loading,required TResult Function( SummarySuccess value)  success,required TResult Function( SummaryFailure value)  failure,}){
final _that = this;
switch (_that) {
case SummaryInitial():
return initial(_that);case SummaryLoading():
return loading(_that);case SummarySuccess():
return success(_that);case SummaryFailure():
return failure(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SummaryInitial value)?  initial,TResult? Function( SummaryLoading value)?  loading,TResult? Function( SummarySuccess value)?  success,TResult? Function( SummaryFailure value)?  failure,}){
final _that = this;
switch (_that) {
case SummaryInitial() when initial != null:
return initial(_that);case SummaryLoading() when loading != null:
return loading(_that);case SummarySuccess() when success != null:
return success(_that);case SummaryFailure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( SessionSummary summary)?  success,TResult Function( Exception error)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SummaryInitial() when initial != null:
return initial();case SummaryLoading() when loading != null:
return loading();case SummarySuccess() when success != null:
return success(_that.summary);case SummaryFailure() when failure != null:
return failure(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( SessionSummary summary)  success,required TResult Function( Exception error)  failure,}) {final _that = this;
switch (_that) {
case SummaryInitial():
return initial();case SummaryLoading():
return loading();case SummarySuccess():
return success(_that.summary);case SummaryFailure():
return failure(_that.error);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( SessionSummary summary)?  success,TResult? Function( Exception error)?  failure,}) {final _that = this;
switch (_that) {
case SummaryInitial() when initial != null:
return initial();case SummaryLoading() when loading != null:
return loading();case SummarySuccess() when success != null:
return success(_that.summary);case SummaryFailure() when failure != null:
return failure(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class SummaryInitial implements SummaryState {
  const SummaryInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SummaryInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SummaryState.initial()';
}


}




/// @nodoc


class SummaryLoading implements SummaryState {
  const SummaryLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SummaryLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SummaryState.loading()';
}


}




/// @nodoc


class SummarySuccess implements SummaryState {
  const SummarySuccess({required this.summary});
  

 final  SessionSummary summary;

/// Create a copy of SummaryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SummarySuccessCopyWith<SummarySuccess> get copyWith => _$SummarySuccessCopyWithImpl<SummarySuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SummarySuccess&&(identical(other.summary, summary) || other.summary == summary));
}


@override
int get hashCode => Object.hash(runtimeType,summary);

@override
String toString() {
  return 'SummaryState.success(summary: $summary)';
}


}

/// @nodoc
abstract mixin class $SummarySuccessCopyWith<$Res> implements $SummaryStateCopyWith<$Res> {
  factory $SummarySuccessCopyWith(SummarySuccess value, $Res Function(SummarySuccess) _then) = _$SummarySuccessCopyWithImpl;
@useResult
$Res call({
 SessionSummary summary
});


$SessionSummaryCopyWith<$Res> get summary;

}
/// @nodoc
class _$SummarySuccessCopyWithImpl<$Res>
    implements $SummarySuccessCopyWith<$Res> {
  _$SummarySuccessCopyWithImpl(this._self, this._then);

  final SummarySuccess _self;
  final $Res Function(SummarySuccess) _then;

/// Create a copy of SummaryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? summary = null,}) {
  return _then(SummarySuccess(
summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as SessionSummary,
  ));
}

/// Create a copy of SummaryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SessionSummaryCopyWith<$Res> get summary {
  
  return $SessionSummaryCopyWith<$Res>(_self.summary, (value) {
    return _then(_self.copyWith(summary: value));
  });
}
}

/// @nodoc


class SummaryFailure implements SummaryState {
  const SummaryFailure({required this.error});
  

 final  Exception error;

/// Create a copy of SummaryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SummaryFailureCopyWith<SummaryFailure> get copyWith => _$SummaryFailureCopyWithImpl<SummaryFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SummaryFailure&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'SummaryState.failure(error: $error)';
}


}

/// @nodoc
abstract mixin class $SummaryFailureCopyWith<$Res> implements $SummaryStateCopyWith<$Res> {
  factory $SummaryFailureCopyWith(SummaryFailure value, $Res Function(SummaryFailure) _then) = _$SummaryFailureCopyWithImpl;
@useResult
$Res call({
 Exception error
});




}
/// @nodoc
class _$SummaryFailureCopyWithImpl<$Res>
    implements $SummaryFailureCopyWith<$Res> {
  _$SummaryFailureCopyWithImpl(this._self, this._then);

  final SummaryFailure _self;
  final $Res Function(SummaryFailure) _then;

/// Create a copy of SummaryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(SummaryFailure(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Exception,
  ));
}


}

// dart format on
