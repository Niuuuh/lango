// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_api_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatApiError implements DiagnosticableTreeMixin {

 String get message; String get type; String? get param; String? get code;
/// Create a copy of ChatApiError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatApiErrorCopyWith<ChatApiError> get copyWith => _$ChatApiErrorCopyWithImpl<ChatApiError>(this as ChatApiError, _$identity);

  /// Serializes this ChatApiError to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ChatApiError'))
    ..add(DiagnosticsProperty('message', message))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('param', param))..add(DiagnosticsProperty('code', code));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatApiError&&(identical(other.message, message) || other.message == message)&&(identical(other.type, type) || other.type == type)&&(identical(other.param, param) || other.param == param)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,type,param,code);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ChatApiError(message: $message, type: $type, param: $param, code: $code)';
}


}

/// @nodoc
abstract mixin class $ChatApiErrorCopyWith<$Res>  {
  factory $ChatApiErrorCopyWith(ChatApiError value, $Res Function(ChatApiError) _then) = _$ChatApiErrorCopyWithImpl;
@useResult
$Res call({
 String message, String type, String? param, String? code
});




}
/// @nodoc
class _$ChatApiErrorCopyWithImpl<$Res>
    implements $ChatApiErrorCopyWith<$Res> {
  _$ChatApiErrorCopyWithImpl(this._self, this._then);

  final ChatApiError _self;
  final $Res Function(ChatApiError) _then;

/// Create a copy of ChatApiError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? type = null,Object? param = freezed,Object? code = freezed,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,param: freezed == param ? _self.param : param // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatApiError].
extension ChatApiErrorPatterns on ChatApiError {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatApiError value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatApiError() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatApiError value)  $default,){
final _that = this;
switch (_that) {
case _ChatApiError():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatApiError value)?  $default,){
final _that = this;
switch (_that) {
case _ChatApiError() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String message,  String type,  String? param,  String? code)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatApiError() when $default != null:
return $default(_that.message,_that.type,_that.param,_that.code);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String message,  String type,  String? param,  String? code)  $default,) {final _that = this;
switch (_that) {
case _ChatApiError():
return $default(_that.message,_that.type,_that.param,_that.code);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String message,  String type,  String? param,  String? code)?  $default,) {final _that = this;
switch (_that) {
case _ChatApiError() when $default != null:
return $default(_that.message,_that.type,_that.param,_that.code);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatApiError with DiagnosticableTreeMixin implements ChatApiError {
  const _ChatApiError({required this.message, required this.type, required this.param, required this.code});
  factory _ChatApiError.fromJson(Map<String, dynamic> json) => _$ChatApiErrorFromJson(json);

@override final  String message;
@override final  String type;
@override final  String? param;
@override final  String? code;

/// Create a copy of ChatApiError
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatApiErrorCopyWith<_ChatApiError> get copyWith => __$ChatApiErrorCopyWithImpl<_ChatApiError>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatApiErrorToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ChatApiError'))
    ..add(DiagnosticsProperty('message', message))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('param', param))..add(DiagnosticsProperty('code', code));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatApiError&&(identical(other.message, message) || other.message == message)&&(identical(other.type, type) || other.type == type)&&(identical(other.param, param) || other.param == param)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,type,param,code);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ChatApiError(message: $message, type: $type, param: $param, code: $code)';
}


}

/// @nodoc
abstract mixin class _$ChatApiErrorCopyWith<$Res> implements $ChatApiErrorCopyWith<$Res> {
  factory _$ChatApiErrorCopyWith(_ChatApiError value, $Res Function(_ChatApiError) _then) = __$ChatApiErrorCopyWithImpl;
@override @useResult
$Res call({
 String message, String type, String? param, String? code
});




}
/// @nodoc
class __$ChatApiErrorCopyWithImpl<$Res>
    implements _$ChatApiErrorCopyWith<$Res> {
  __$ChatApiErrorCopyWithImpl(this._self, this._then);

  final _ChatApiError _self;
  final $Res Function(_ChatApiError) _then;

/// Create a copy of ChatApiError
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? type = null,Object? param = freezed,Object? code = freezed,}) {
  return _then(_ChatApiError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,param: freezed == param ? _self.param : param // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
