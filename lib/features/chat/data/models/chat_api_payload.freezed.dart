// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_api_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatApiPayload implements DiagnosticableTreeMixin {

 String get model; List<ChatApiInputMessage> get input; ChatApiText? get text;
/// Create a copy of ChatApiPayload
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatApiPayloadCopyWith<ChatApiPayload> get copyWith => _$ChatApiPayloadCopyWithImpl<ChatApiPayload>(this as ChatApiPayload, _$identity);

  /// Serializes this ChatApiPayload to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ChatApiPayload'))
    ..add(DiagnosticsProperty('model', model))..add(DiagnosticsProperty('input', input))..add(DiagnosticsProperty('text', text));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatApiPayload&&(identical(other.model, model) || other.model == model)&&const DeepCollectionEquality().equals(other.input, input)&&(identical(other.text, text) || other.text == text));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,model,const DeepCollectionEquality().hash(input),text);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ChatApiPayload(model: $model, input: $input, text: $text)';
}


}

/// @nodoc
abstract mixin class $ChatApiPayloadCopyWith<$Res>  {
  factory $ChatApiPayloadCopyWith(ChatApiPayload value, $Res Function(ChatApiPayload) _then) = _$ChatApiPayloadCopyWithImpl;
@useResult
$Res call({
 String model, List<ChatApiInputMessage> input, ChatApiText? text
});


$ChatApiTextCopyWith<$Res>? get text;

}
/// @nodoc
class _$ChatApiPayloadCopyWithImpl<$Res>
    implements $ChatApiPayloadCopyWith<$Res> {
  _$ChatApiPayloadCopyWithImpl(this._self, this._then);

  final ChatApiPayload _self;
  final $Res Function(ChatApiPayload) _then;

/// Create a copy of ChatApiPayload
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? model = null,Object? input = null,Object? text = freezed,}) {
  return _then(_self.copyWith(
model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,input: null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as List<ChatApiInputMessage>,text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as ChatApiText?,
  ));
}
/// Create a copy of ChatApiPayload
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatApiTextCopyWith<$Res>? get text {
    if (_self.text == null) {
    return null;
  }

  return $ChatApiTextCopyWith<$Res>(_self.text!, (value) {
    return _then(_self.copyWith(text: value));
  });
}
}


/// Adds pattern-matching-related methods to [ChatApiPayload].
extension ChatApiPayloadPatterns on ChatApiPayload {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatApiPayload value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatApiPayload() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatApiPayload value)  $default,){
final _that = this;
switch (_that) {
case _ChatApiPayload():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatApiPayload value)?  $default,){
final _that = this;
switch (_that) {
case _ChatApiPayload() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String model,  List<ChatApiInputMessage> input,  ChatApiText? text)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatApiPayload() when $default != null:
return $default(_that.model,_that.input,_that.text);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String model,  List<ChatApiInputMessage> input,  ChatApiText? text)  $default,) {final _that = this;
switch (_that) {
case _ChatApiPayload():
return $default(_that.model,_that.input,_that.text);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String model,  List<ChatApiInputMessage> input,  ChatApiText? text)?  $default,) {final _that = this;
switch (_that) {
case _ChatApiPayload() when $default != null:
return $default(_that.model,_that.input,_that.text);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatApiPayload with DiagnosticableTreeMixin implements ChatApiPayload {
  const _ChatApiPayload({required this.model, required final  List<ChatApiInputMessage> input, this.text}): _input = input;
  factory _ChatApiPayload.fromJson(Map<String, dynamic> json) => _$ChatApiPayloadFromJson(json);

@override final  String model;
 final  List<ChatApiInputMessage> _input;
@override List<ChatApiInputMessage> get input {
  if (_input is EqualUnmodifiableListView) return _input;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_input);
}

@override final  ChatApiText? text;

/// Create a copy of ChatApiPayload
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatApiPayloadCopyWith<_ChatApiPayload> get copyWith => __$ChatApiPayloadCopyWithImpl<_ChatApiPayload>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatApiPayloadToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ChatApiPayload'))
    ..add(DiagnosticsProperty('model', model))..add(DiagnosticsProperty('input', input))..add(DiagnosticsProperty('text', text));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatApiPayload&&(identical(other.model, model) || other.model == model)&&const DeepCollectionEquality().equals(other._input, _input)&&(identical(other.text, text) || other.text == text));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,model,const DeepCollectionEquality().hash(_input),text);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ChatApiPayload(model: $model, input: $input, text: $text)';
}


}

/// @nodoc
abstract mixin class _$ChatApiPayloadCopyWith<$Res> implements $ChatApiPayloadCopyWith<$Res> {
  factory _$ChatApiPayloadCopyWith(_ChatApiPayload value, $Res Function(_ChatApiPayload) _then) = __$ChatApiPayloadCopyWithImpl;
@override @useResult
$Res call({
 String model, List<ChatApiInputMessage> input, ChatApiText? text
});


@override $ChatApiTextCopyWith<$Res>? get text;

}
/// @nodoc
class __$ChatApiPayloadCopyWithImpl<$Res>
    implements _$ChatApiPayloadCopyWith<$Res> {
  __$ChatApiPayloadCopyWithImpl(this._self, this._then);

  final _ChatApiPayload _self;
  final $Res Function(_ChatApiPayload) _then;

/// Create a copy of ChatApiPayload
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? model = null,Object? input = null,Object? text = freezed,}) {
  return _then(_ChatApiPayload(
model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,input: null == input ? _self._input : input // ignore: cast_nullable_to_non_nullable
as List<ChatApiInputMessage>,text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as ChatApiText?,
  ));
}

/// Create a copy of ChatApiPayload
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatApiTextCopyWith<$Res>? get text {
    if (_self.text == null) {
    return null;
  }

  return $ChatApiTextCopyWith<$Res>(_self.text!, (value) {
    return _then(_self.copyWith(text: value));
  });
}
}

// dart format on
