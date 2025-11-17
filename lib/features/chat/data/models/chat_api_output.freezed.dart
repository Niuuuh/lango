// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_api_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
ChatApiOutput _$ChatApiOutputFromJson(
  Map<String, dynamic> json
) {
    return ChatApiOutputMessage.fromJson(
      json
    );
}

/// @nodoc
mixin _$ChatApiOutput implements DiagnosticableTreeMixin {

 String get id; ChatApiStatus get status; List<ChatApiContent> get content; ChatApiRole get role;
/// Create a copy of ChatApiOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatApiOutputCopyWith<ChatApiOutput> get copyWith => _$ChatApiOutputCopyWithImpl<ChatApiOutput>(this as ChatApiOutput, _$identity);

  /// Serializes this ChatApiOutput to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ChatApiOutput'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('content', content))..add(DiagnosticsProperty('role', role));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatApiOutput&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.content, content)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,status,const DeepCollectionEquality().hash(content),role);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ChatApiOutput(id: $id, status: $status, content: $content, role: $role)';
}


}

/// @nodoc
abstract mixin class $ChatApiOutputCopyWith<$Res>  {
  factory $ChatApiOutputCopyWith(ChatApiOutput value, $Res Function(ChatApiOutput) _then) = _$ChatApiOutputCopyWithImpl;
@useResult
$Res call({
 String id, ChatApiStatus status, List<ChatApiContent> content, ChatApiRole role
});




}
/// @nodoc
class _$ChatApiOutputCopyWithImpl<$Res>
    implements $ChatApiOutputCopyWith<$Res> {
  _$ChatApiOutputCopyWithImpl(this._self, this._then);

  final ChatApiOutput _self;
  final $Res Function(ChatApiOutput) _then;

/// Create a copy of ChatApiOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? status = null,Object? content = null,Object? role = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ChatApiStatus,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as List<ChatApiContent>,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as ChatApiRole,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatApiOutput].
extension ChatApiOutputPatterns on ChatApiOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ChatApiOutputMessage value)?  message,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ChatApiOutputMessage() when message != null:
return message(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ChatApiOutputMessage value)  message,}){
final _that = this;
switch (_that) {
case ChatApiOutputMessage():
return message(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ChatApiOutputMessage value)?  message,}){
final _that = this;
switch (_that) {
case ChatApiOutputMessage() when message != null:
return message(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String id,  ChatApiStatus status,  List<ChatApiContent> content,  ChatApiRole role)?  message,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ChatApiOutputMessage() when message != null:
return message(_that.id,_that.status,_that.content,_that.role);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String id,  ChatApiStatus status,  List<ChatApiContent> content,  ChatApiRole role)  message,}) {final _that = this;
switch (_that) {
case ChatApiOutputMessage():
return message(_that.id,_that.status,_that.content,_that.role);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String id,  ChatApiStatus status,  List<ChatApiContent> content,  ChatApiRole role)?  message,}) {final _that = this;
switch (_that) {
case ChatApiOutputMessage() when message != null:
return message(_that.id,_that.status,_that.content,_that.role);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class ChatApiOutputMessage with DiagnosticableTreeMixin implements ChatApiOutput {
  const ChatApiOutputMessage({required this.id, required this.status, required final  List<ChatApiContent> content, required this.role}): _content = content;
  factory ChatApiOutputMessage.fromJson(Map<String, dynamic> json) => _$ChatApiOutputMessageFromJson(json);

@override final  String id;
@override final  ChatApiStatus status;
 final  List<ChatApiContent> _content;
@override List<ChatApiContent> get content {
  if (_content is EqualUnmodifiableListView) return _content;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_content);
}

@override final  ChatApiRole role;

/// Create a copy of ChatApiOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatApiOutputMessageCopyWith<ChatApiOutputMessage> get copyWith => _$ChatApiOutputMessageCopyWithImpl<ChatApiOutputMessage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatApiOutputMessageToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ChatApiOutput.message'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('content', content))..add(DiagnosticsProperty('role', role));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatApiOutputMessage&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._content, _content)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,status,const DeepCollectionEquality().hash(_content),role);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ChatApiOutput.message(id: $id, status: $status, content: $content, role: $role)';
}


}

/// @nodoc
abstract mixin class $ChatApiOutputMessageCopyWith<$Res> implements $ChatApiOutputCopyWith<$Res> {
  factory $ChatApiOutputMessageCopyWith(ChatApiOutputMessage value, $Res Function(ChatApiOutputMessage) _then) = _$ChatApiOutputMessageCopyWithImpl;
@override @useResult
$Res call({
 String id, ChatApiStatus status, List<ChatApiContent> content, ChatApiRole role
});




}
/// @nodoc
class _$ChatApiOutputMessageCopyWithImpl<$Res>
    implements $ChatApiOutputMessageCopyWith<$Res> {
  _$ChatApiOutputMessageCopyWithImpl(this._self, this._then);

  final ChatApiOutputMessage _self;
  final $Res Function(ChatApiOutputMessage) _then;

/// Create a copy of ChatApiOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? status = null,Object? content = null,Object? role = null,}) {
  return _then(ChatApiOutputMessage(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ChatApiStatus,content: null == content ? _self._content : content // ignore: cast_nullable_to_non_nullable
as List<ChatApiContent>,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as ChatApiRole,
  ));
}


}

// dart format on
