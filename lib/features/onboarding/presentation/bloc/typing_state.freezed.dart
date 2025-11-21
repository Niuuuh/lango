// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'typing_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TypingState {

 TypingStatus get status; String get text;
/// Create a copy of TypingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TypingStateCopyWith<TypingState> get copyWith => _$TypingStateCopyWithImpl<TypingState>(this as TypingState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TypingState&&(identical(other.status, status) || other.status == status)&&(identical(other.text, text) || other.text == text));
}


@override
int get hashCode => Object.hash(runtimeType,status,text);

@override
String toString() {
  return 'TypingState(status: $status, text: $text)';
}


}

/// @nodoc
abstract mixin class $TypingStateCopyWith<$Res>  {
  factory $TypingStateCopyWith(TypingState value, $Res Function(TypingState) _then) = _$TypingStateCopyWithImpl;
@useResult
$Res call({
 TypingStatus status, String text
});




}
/// @nodoc
class _$TypingStateCopyWithImpl<$Res>
    implements $TypingStateCopyWith<$Res> {
  _$TypingStateCopyWithImpl(this._self, this._then);

  final TypingState _self;
  final $Res Function(TypingState) _then;

/// Create a copy of TypingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? text = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as TypingStatus,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TypingState].
extension TypingStatePatterns on TypingState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TypingState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TypingState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TypingState value)  $default,){
final _that = this;
switch (_that) {
case _TypingState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TypingState value)?  $default,){
final _that = this;
switch (_that) {
case _TypingState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TypingStatus status,  String text)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TypingState() when $default != null:
return $default(_that.status,_that.text);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TypingStatus status,  String text)  $default,) {final _that = this;
switch (_that) {
case _TypingState():
return $default(_that.status,_that.text);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TypingStatus status,  String text)?  $default,) {final _that = this;
switch (_that) {
case _TypingState() when $default != null:
return $default(_that.status,_that.text);case _:
  return null;

}
}

}

/// @nodoc


class _TypingState implements TypingState {
  const _TypingState({this.status = TypingStatus.initial, this.text = ''});
  

@override@JsonKey() final  TypingStatus status;
@override@JsonKey() final  String text;

/// Create a copy of TypingState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TypingStateCopyWith<_TypingState> get copyWith => __$TypingStateCopyWithImpl<_TypingState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TypingState&&(identical(other.status, status) || other.status == status)&&(identical(other.text, text) || other.text == text));
}


@override
int get hashCode => Object.hash(runtimeType,status,text);

@override
String toString() {
  return 'TypingState(status: $status, text: $text)';
}


}

/// @nodoc
abstract mixin class _$TypingStateCopyWith<$Res> implements $TypingStateCopyWith<$Res> {
  factory _$TypingStateCopyWith(_TypingState value, $Res Function(_TypingState) _then) = __$TypingStateCopyWithImpl;
@override @useResult
$Res call({
 TypingStatus status, String text
});




}
/// @nodoc
class __$TypingStateCopyWithImpl<$Res>
    implements _$TypingStateCopyWith<$Res> {
  __$TypingStateCopyWithImpl(this._self, this._then);

  final _TypingState _self;
  final $Res Function(_TypingState) _then;

/// Create a copy of TypingState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? text = null,}) {
  return _then(_TypingState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as TypingStatus,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
