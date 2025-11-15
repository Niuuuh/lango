// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_api_input_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatApiInputMessage implements DiagnosticableTreeMixin {

 String get content; ChatApiRole get role;
/// Create a copy of ChatApiInputMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatApiInputMessageCopyWith<ChatApiInputMessage> get copyWith => _$ChatApiInputMessageCopyWithImpl<ChatApiInputMessage>(this as ChatApiInputMessage, _$identity);

  /// Serializes this ChatApiInputMessage to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ChatApiInputMessage'))
    ..add(DiagnosticsProperty('content', content))..add(DiagnosticsProperty('role', role));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatApiInputMessage&&(identical(other.content, content) || other.content == content)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,content,role);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ChatApiInputMessage(content: $content, role: $role)';
}


}

/// @nodoc
abstract mixin class $ChatApiInputMessageCopyWith<$Res>  {
  factory $ChatApiInputMessageCopyWith(ChatApiInputMessage value, $Res Function(ChatApiInputMessage) _then) = _$ChatApiInputMessageCopyWithImpl;
@useResult
$Res call({
 String content, ChatApiRole role
});




}
/// @nodoc
class _$ChatApiInputMessageCopyWithImpl<$Res>
    implements $ChatApiInputMessageCopyWith<$Res> {
  _$ChatApiInputMessageCopyWithImpl(this._self, this._then);

  final ChatApiInputMessage _self;
  final $Res Function(ChatApiInputMessage) _then;

/// Create a copy of ChatApiInputMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? content = null,Object? role = null,}) {
  return _then(_self.copyWith(
content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as ChatApiRole,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatApiInputMessage].
extension ChatApiInputMessagePatterns on ChatApiInputMessage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatApiInputMessage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatApiInputMessage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatApiInputMessage value)  $default,){
final _that = this;
switch (_that) {
case _ChatApiInputMessage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatApiInputMessage value)?  $default,){
final _that = this;
switch (_that) {
case _ChatApiInputMessage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String content,  ChatApiRole role)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatApiInputMessage() when $default != null:
return $default(_that.content,_that.role);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String content,  ChatApiRole role)  $default,) {final _that = this;
switch (_that) {
case _ChatApiInputMessage():
return $default(_that.content,_that.role);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String content,  ChatApiRole role)?  $default,) {final _that = this;
switch (_that) {
case _ChatApiInputMessage() when $default != null:
return $default(_that.content,_that.role);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatApiInputMessage with DiagnosticableTreeMixin implements ChatApiInputMessage {
  const _ChatApiInputMessage({required this.content, required this.role});
  factory _ChatApiInputMessage.fromJson(Map<String, dynamic> json) => _$ChatApiInputMessageFromJson(json);

@override final  String content;
@override final  ChatApiRole role;

/// Create a copy of ChatApiInputMessage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatApiInputMessageCopyWith<_ChatApiInputMessage> get copyWith => __$ChatApiInputMessageCopyWithImpl<_ChatApiInputMessage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatApiInputMessageToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ChatApiInputMessage'))
    ..add(DiagnosticsProperty('content', content))..add(DiagnosticsProperty('role', role));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatApiInputMessage&&(identical(other.content, content) || other.content == content)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,content,role);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ChatApiInputMessage(content: $content, role: $role)';
}


}

/// @nodoc
abstract mixin class _$ChatApiInputMessageCopyWith<$Res> implements $ChatApiInputMessageCopyWith<$Res> {
  factory _$ChatApiInputMessageCopyWith(_ChatApiInputMessage value, $Res Function(_ChatApiInputMessage) _then) = __$ChatApiInputMessageCopyWithImpl;
@override @useResult
$Res call({
 String content, ChatApiRole role
});




}
/// @nodoc
class __$ChatApiInputMessageCopyWithImpl<$Res>
    implements _$ChatApiInputMessageCopyWith<$Res> {
  __$ChatApiInputMessageCopyWithImpl(this._self, this._then);

  final _ChatApiInputMessage _self;
  final $Res Function(_ChatApiInputMessage) _then;

/// Create a copy of ChatApiInputMessage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? content = null,Object? role = null,}) {
  return _then(_ChatApiInputMessage(
content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as ChatApiRole,
  ));
}


}

// dart format on
