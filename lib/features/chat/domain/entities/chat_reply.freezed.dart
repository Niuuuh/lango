// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_reply.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatReply implements DiagnosticableTreeMixin {

 ChatStage get stage; List<ChatMessage> get messages;
/// Create a copy of ChatReply
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatReplyCopyWith<ChatReply> get copyWith => _$ChatReplyCopyWithImpl<ChatReply>(this as ChatReply, _$identity);

  /// Serializes this ChatReply to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ChatReply'))
    ..add(DiagnosticsProperty('stage', stage))..add(DiagnosticsProperty('messages', messages));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatReply&&(identical(other.stage, stage) || other.stage == stage)&&const DeepCollectionEquality().equals(other.messages, messages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,stage,const DeepCollectionEquality().hash(messages));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ChatReply(stage: $stage, messages: $messages)';
}


}

/// @nodoc
abstract mixin class $ChatReplyCopyWith<$Res>  {
  factory $ChatReplyCopyWith(ChatReply value, $Res Function(ChatReply) _then) = _$ChatReplyCopyWithImpl;
@useResult
$Res call({
 ChatStage stage, List<ChatMessage> messages
});




}
/// @nodoc
class _$ChatReplyCopyWithImpl<$Res>
    implements $ChatReplyCopyWith<$Res> {
  _$ChatReplyCopyWithImpl(this._self, this._then);

  final ChatReply _self;
  final $Res Function(ChatReply) _then;

/// Create a copy of ChatReply
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? stage = null,Object? messages = null,}) {
  return _then(_self.copyWith(
stage: null == stage ? _self.stage : stage // ignore: cast_nullable_to_non_nullable
as ChatStage,messages: null == messages ? _self.messages : messages // ignore: cast_nullable_to_non_nullable
as List<ChatMessage>,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatReply].
extension ChatReplyPatterns on ChatReply {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatReply value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatReply() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatReply value)  $default,){
final _that = this;
switch (_that) {
case _ChatReply():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatReply value)?  $default,){
final _that = this;
switch (_that) {
case _ChatReply() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ChatStage stage,  List<ChatMessage> messages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatReply() when $default != null:
return $default(_that.stage,_that.messages);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ChatStage stage,  List<ChatMessage> messages)  $default,) {final _that = this;
switch (_that) {
case _ChatReply():
return $default(_that.stage,_that.messages);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ChatStage stage,  List<ChatMessage> messages)?  $default,) {final _that = this;
switch (_that) {
case _ChatReply() when $default != null:
return $default(_that.stage,_that.messages);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatReply with DiagnosticableTreeMixin implements ChatReply {
  const _ChatReply({required this.stage, required final  List<ChatMessage> messages}): _messages = messages;
  factory _ChatReply.fromJson(Map<String, dynamic> json) => _$ChatReplyFromJson(json);

@override final  ChatStage stage;
 final  List<ChatMessage> _messages;
@override List<ChatMessage> get messages {
  if (_messages is EqualUnmodifiableListView) return _messages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_messages);
}


/// Create a copy of ChatReply
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatReplyCopyWith<_ChatReply> get copyWith => __$ChatReplyCopyWithImpl<_ChatReply>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatReplyToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ChatReply'))
    ..add(DiagnosticsProperty('stage', stage))..add(DiagnosticsProperty('messages', messages));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatReply&&(identical(other.stage, stage) || other.stage == stage)&&const DeepCollectionEquality().equals(other._messages, _messages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,stage,const DeepCollectionEquality().hash(_messages));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ChatReply(stage: $stage, messages: $messages)';
}


}

/// @nodoc
abstract mixin class _$ChatReplyCopyWith<$Res> implements $ChatReplyCopyWith<$Res> {
  factory _$ChatReplyCopyWith(_ChatReply value, $Res Function(_ChatReply) _then) = __$ChatReplyCopyWithImpl;
@override @useResult
$Res call({
 ChatStage stage, List<ChatMessage> messages
});




}
/// @nodoc
class __$ChatReplyCopyWithImpl<$Res>
    implements _$ChatReplyCopyWith<$Res> {
  __$ChatReplyCopyWithImpl(this._self, this._then);

  final _ChatReply _self;
  final $Res Function(_ChatReply) _then;

/// Create a copy of ChatReply
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? stage = null,Object? messages = null,}) {
  return _then(_ChatReply(
stage: null == stage ? _self.stage : stage // ignore: cast_nullable_to_non_nullable
as ChatStage,messages: null == messages ? _self._messages : messages // ignore: cast_nullable_to_non_nullable
as List<ChatMessage>,
  ));
}


}

// dart format on
