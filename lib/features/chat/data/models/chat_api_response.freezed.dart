// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatApiResponse implements DiagnosticableTreeMixin {

 String? get id; ChatApiError? get error; List<ChatApiOutput>? get output; ChatApiStatus? get status;
/// Create a copy of ChatApiResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatApiResponseCopyWith<ChatApiResponse> get copyWith => _$ChatApiResponseCopyWithImpl<ChatApiResponse>(this as ChatApiResponse, _$identity);

  /// Serializes this ChatApiResponse to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ChatApiResponse'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('error', error))..add(DiagnosticsProperty('output', output))..add(DiagnosticsProperty('status', status));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatApiResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.error, error) || other.error == error)&&const DeepCollectionEquality().equals(other.output, output)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,error,const DeepCollectionEquality().hash(output),status);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ChatApiResponse(id: $id, error: $error, output: $output, status: $status)';
}


}

/// @nodoc
abstract mixin class $ChatApiResponseCopyWith<$Res>  {
  factory $ChatApiResponseCopyWith(ChatApiResponse value, $Res Function(ChatApiResponse) _then) = _$ChatApiResponseCopyWithImpl;
@useResult
$Res call({
 String? id, ChatApiError? error, List<ChatApiOutput>? output, ChatApiStatus? status
});


$ChatApiErrorCopyWith<$Res>? get error;

}
/// @nodoc
class _$ChatApiResponseCopyWithImpl<$Res>
    implements $ChatApiResponseCopyWith<$Res> {
  _$ChatApiResponseCopyWithImpl(this._self, this._then);

  final ChatApiResponse _self;
  final $Res Function(ChatApiResponse) _then;

/// Create a copy of ChatApiResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? error = freezed,Object? output = freezed,Object? status = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ChatApiError?,output: freezed == output ? _self.output : output // ignore: cast_nullable_to_non_nullable
as List<ChatApiOutput>?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ChatApiStatus?,
  ));
}
/// Create a copy of ChatApiResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatApiErrorCopyWith<$Res>? get error {
    if (_self.error == null) {
    return null;
  }

  return $ChatApiErrorCopyWith<$Res>(_self.error!, (value) {
    return _then(_self.copyWith(error: value));
  });
}
}


/// Adds pattern-matching-related methods to [ChatApiResponse].
extension ChatApiResponsePatterns on ChatApiResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatApiResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatApiResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatApiResponse value)  $default,){
final _that = this;
switch (_that) {
case _ChatApiResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatApiResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ChatApiResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  ChatApiError? error,  List<ChatApiOutput>? output,  ChatApiStatus? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatApiResponse() when $default != null:
return $default(_that.id,_that.error,_that.output,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  ChatApiError? error,  List<ChatApiOutput>? output,  ChatApiStatus? status)  $default,) {final _that = this;
switch (_that) {
case _ChatApiResponse():
return $default(_that.id,_that.error,_that.output,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  ChatApiError? error,  List<ChatApiOutput>? output,  ChatApiStatus? status)?  $default,) {final _that = this;
switch (_that) {
case _ChatApiResponse() when $default != null:
return $default(_that.id,_that.error,_that.output,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatApiResponse with DiagnosticableTreeMixin implements ChatApiResponse {
  const _ChatApiResponse({this.id, this.error, final  List<ChatApiOutput>? output, this.status}): _output = output;
  factory _ChatApiResponse.fromJson(Map<String, dynamic> json) => _$ChatApiResponseFromJson(json);

@override final  String? id;
@override final  ChatApiError? error;
 final  List<ChatApiOutput>? _output;
@override List<ChatApiOutput>? get output {
  final value = _output;
  if (value == null) return null;
  if (_output is EqualUnmodifiableListView) return _output;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  ChatApiStatus? status;

/// Create a copy of ChatApiResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatApiResponseCopyWith<_ChatApiResponse> get copyWith => __$ChatApiResponseCopyWithImpl<_ChatApiResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatApiResponseToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ChatApiResponse'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('error', error))..add(DiagnosticsProperty('output', output))..add(DiagnosticsProperty('status', status));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatApiResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.error, error) || other.error == error)&&const DeepCollectionEquality().equals(other._output, _output)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,error,const DeepCollectionEquality().hash(_output),status);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ChatApiResponse(id: $id, error: $error, output: $output, status: $status)';
}


}

/// @nodoc
abstract mixin class _$ChatApiResponseCopyWith<$Res> implements $ChatApiResponseCopyWith<$Res> {
  factory _$ChatApiResponseCopyWith(_ChatApiResponse value, $Res Function(_ChatApiResponse) _then) = __$ChatApiResponseCopyWithImpl;
@override @useResult
$Res call({
 String? id, ChatApiError? error, List<ChatApiOutput>? output, ChatApiStatus? status
});


@override $ChatApiErrorCopyWith<$Res>? get error;

}
/// @nodoc
class __$ChatApiResponseCopyWithImpl<$Res>
    implements _$ChatApiResponseCopyWith<$Res> {
  __$ChatApiResponseCopyWithImpl(this._self, this._then);

  final _ChatApiResponse _self;
  final $Res Function(_ChatApiResponse) _then;

/// Create a copy of ChatApiResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? error = freezed,Object? output = freezed,Object? status = freezed,}) {
  return _then(_ChatApiResponse(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ChatApiError?,output: freezed == output ? _self._output : output // ignore: cast_nullable_to_non_nullable
as List<ChatApiOutput>?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ChatApiStatus?,
  ));
}

/// Create a copy of ChatApiResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatApiErrorCopyWith<$Res>? get error {
    if (_self.error == null) {
    return null;
  }

  return $ChatApiErrorCopyWith<$Res>(_self.error!, (value) {
    return _then(_self.copyWith(error: value));
  });
}
}

// dart format on
