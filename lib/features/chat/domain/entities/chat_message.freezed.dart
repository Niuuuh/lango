// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
ChatMessage _$ChatMessageFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'user':
          return ChatMessageUser.fromJson(
            json
          );
        
          default:
            return ChatMessageAssistant.fromJson(
  json
);
        }
      
}

/// @nodoc
mixin _$ChatMessage implements DiagnosticableTreeMixin {



  /// Serializes this ChatMessage to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ChatMessage'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatMessage);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ChatMessage()';
}


}

/// @nodoc
class $ChatMessageCopyWith<$Res>  {
$ChatMessageCopyWith(ChatMessage _, $Res Function(ChatMessage) __);
}


/// Adds pattern-matching-related methods to [ChatMessage].
extension ChatMessagePatterns on ChatMessage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ChatMessageUser value)?  user,TResult Function( ChatMessageAssistant value)?  assistant,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ChatMessageUser() when user != null:
return user(_that);case ChatMessageAssistant() when assistant != null:
return assistant(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ChatMessageUser value)  user,required TResult Function( ChatMessageAssistant value)  assistant,}){
final _that = this;
switch (_that) {
case ChatMessageUser():
return user(_that);case ChatMessageAssistant():
return assistant(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ChatMessageUser value)?  user,TResult? Function( ChatMessageAssistant value)?  assistant,}){
final _that = this;
switch (_that) {
case ChatMessageUser() when user != null:
return user(_that);case ChatMessageAssistant() when assistant != null:
return assistant(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String text)?  user,TResult Function( MessageType type,  List<MessageSegment> segments)?  assistant,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ChatMessageUser() when user != null:
return user(_that.text);case ChatMessageAssistant() when assistant != null:
return assistant(_that.type,_that.segments);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String text)  user,required TResult Function( MessageType type,  List<MessageSegment> segments)  assistant,}) {final _that = this;
switch (_that) {
case ChatMessageUser():
return user(_that.text);case ChatMessageAssistant():
return assistant(_that.type,_that.segments);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String text)?  user,TResult? Function( MessageType type,  List<MessageSegment> segments)?  assistant,}) {final _that = this;
switch (_that) {
case ChatMessageUser() when user != null:
return user(_that.text);case ChatMessageAssistant() when assistant != null:
return assistant(_that.type,_that.segments);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class ChatMessageUser with DiagnosticableTreeMixin implements ChatMessage {
  const ChatMessageUser({required this.text, final  String? $type}): $type = $type ?? 'user';
  factory ChatMessageUser.fromJson(Map<String, dynamic> json) => _$ChatMessageUserFromJson(json);

 final  String text;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of ChatMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatMessageUserCopyWith<ChatMessageUser> get copyWith => _$ChatMessageUserCopyWithImpl<ChatMessageUser>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatMessageUserToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ChatMessage.user'))
    ..add(DiagnosticsProperty('text', text));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatMessageUser&&(identical(other.text, text) || other.text == text));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,text);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ChatMessage.user(text: $text)';
}


}

/// @nodoc
abstract mixin class $ChatMessageUserCopyWith<$Res> implements $ChatMessageCopyWith<$Res> {
  factory $ChatMessageUserCopyWith(ChatMessageUser value, $Res Function(ChatMessageUser) _then) = _$ChatMessageUserCopyWithImpl;
@useResult
$Res call({
 String text
});




}
/// @nodoc
class _$ChatMessageUserCopyWithImpl<$Res>
    implements $ChatMessageUserCopyWith<$Res> {
  _$ChatMessageUserCopyWithImpl(this._self, this._then);

  final ChatMessageUser _self;
  final $Res Function(ChatMessageUser) _then;

/// Create a copy of ChatMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? text = null,}) {
  return _then(ChatMessageUser(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
@JsonSerializable()

class ChatMessageAssistant with DiagnosticableTreeMixin implements ChatMessage {
  const ChatMessageAssistant({required this.type, required final  List<MessageSegment> segments, final  String? $type}): _segments = segments,$type = $type ?? 'assistant';
  factory ChatMessageAssistant.fromJson(Map<String, dynamic> json) => _$ChatMessageAssistantFromJson(json);

 final  MessageType type;
 final  List<MessageSegment> _segments;
 List<MessageSegment> get segments {
  if (_segments is EqualUnmodifiableListView) return _segments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_segments);
}


@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of ChatMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatMessageAssistantCopyWith<ChatMessageAssistant> get copyWith => _$ChatMessageAssistantCopyWithImpl<ChatMessageAssistant>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatMessageAssistantToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ChatMessage.assistant'))
    ..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('segments', segments));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatMessageAssistant&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other._segments, _segments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,const DeepCollectionEquality().hash(_segments));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ChatMessage.assistant(type: $type, segments: $segments)';
}


}

/// @nodoc
abstract mixin class $ChatMessageAssistantCopyWith<$Res> implements $ChatMessageCopyWith<$Res> {
  factory $ChatMessageAssistantCopyWith(ChatMessageAssistant value, $Res Function(ChatMessageAssistant) _then) = _$ChatMessageAssistantCopyWithImpl;
@useResult
$Res call({
 MessageType type, List<MessageSegment> segments
});




}
/// @nodoc
class _$ChatMessageAssistantCopyWithImpl<$Res>
    implements $ChatMessageAssistantCopyWith<$Res> {
  _$ChatMessageAssistantCopyWithImpl(this._self, this._then);

  final ChatMessageAssistant _self;
  final $Res Function(ChatMessageAssistant) _then;

/// Create a copy of ChatMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? type = null,Object? segments = null,}) {
  return _then(ChatMessageAssistant(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as MessageType,segments: null == segments ? _self._segments : segments // ignore: cast_nullable_to_non_nullable
as List<MessageSegment>,
  ));
}


}

// dart format on
