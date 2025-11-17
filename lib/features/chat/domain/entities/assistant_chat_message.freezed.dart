// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assistant_chat_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AssistantChatMessage implements DiagnosticableTreeMixin {

 MessageType get type; List<MessageSegment> get segments;
/// Create a copy of AssistantChatMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AssistantChatMessageCopyWith<AssistantChatMessage> get copyWith => _$AssistantChatMessageCopyWithImpl<AssistantChatMessage>(this as AssistantChatMessage, _$identity);

  /// Serializes this AssistantChatMessage to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AssistantChatMessage'))
    ..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('segments', segments));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AssistantChatMessage&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.segments, segments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,const DeepCollectionEquality().hash(segments));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AssistantChatMessage(type: $type, segments: $segments)';
}


}

/// @nodoc
abstract mixin class $AssistantChatMessageCopyWith<$Res>  {
  factory $AssistantChatMessageCopyWith(AssistantChatMessage value, $Res Function(AssistantChatMessage) _then) = _$AssistantChatMessageCopyWithImpl;
@useResult
$Res call({
 MessageType type, List<MessageSegment> segments
});




}
/// @nodoc
class _$AssistantChatMessageCopyWithImpl<$Res>
    implements $AssistantChatMessageCopyWith<$Res> {
  _$AssistantChatMessageCopyWithImpl(this._self, this._then);

  final AssistantChatMessage _self;
  final $Res Function(AssistantChatMessage) _then;

/// Create a copy of AssistantChatMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? segments = null,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as MessageType,segments: null == segments ? _self.segments : segments // ignore: cast_nullable_to_non_nullable
as List<MessageSegment>,
  ));
}

}


/// Adds pattern-matching-related methods to [AssistantChatMessage].
extension AssistantChatMessagePatterns on AssistantChatMessage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AssistantChatMessage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AssistantChatMessage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AssistantChatMessage value)  $default,){
final _that = this;
switch (_that) {
case _AssistantChatMessage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AssistantChatMessage value)?  $default,){
final _that = this;
switch (_that) {
case _AssistantChatMessage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( MessageType type,  List<MessageSegment> segments)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AssistantChatMessage() when $default != null:
return $default(_that.type,_that.segments);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( MessageType type,  List<MessageSegment> segments)  $default,) {final _that = this;
switch (_that) {
case _AssistantChatMessage():
return $default(_that.type,_that.segments);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( MessageType type,  List<MessageSegment> segments)?  $default,) {final _that = this;
switch (_that) {
case _AssistantChatMessage() when $default != null:
return $default(_that.type,_that.segments);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AssistantChatMessage with DiagnosticableTreeMixin implements AssistantChatMessage {
  const _AssistantChatMessage({required this.type, required final  List<MessageSegment> segments}): _segments = segments;
  factory _AssistantChatMessage.fromJson(Map<String, dynamic> json) => _$AssistantChatMessageFromJson(json);

@override final  MessageType type;
 final  List<MessageSegment> _segments;
@override List<MessageSegment> get segments {
  if (_segments is EqualUnmodifiableListView) return _segments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_segments);
}


/// Create a copy of AssistantChatMessage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AssistantChatMessageCopyWith<_AssistantChatMessage> get copyWith => __$AssistantChatMessageCopyWithImpl<_AssistantChatMessage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AssistantChatMessageToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AssistantChatMessage'))
    ..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('segments', segments));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AssistantChatMessage&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other._segments, _segments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,const DeepCollectionEquality().hash(_segments));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AssistantChatMessage(type: $type, segments: $segments)';
}


}

/// @nodoc
abstract mixin class _$AssistantChatMessageCopyWith<$Res> implements $AssistantChatMessageCopyWith<$Res> {
  factory _$AssistantChatMessageCopyWith(_AssistantChatMessage value, $Res Function(_AssistantChatMessage) _then) = __$AssistantChatMessageCopyWithImpl;
@override @useResult
$Res call({
 MessageType type, List<MessageSegment> segments
});




}
/// @nodoc
class __$AssistantChatMessageCopyWithImpl<$Res>
    implements _$AssistantChatMessageCopyWith<$Res> {
  __$AssistantChatMessageCopyWithImpl(this._self, this._then);

  final _AssistantChatMessage _self;
  final $Res Function(_AssistantChatMessage) _then;

/// Create a copy of AssistantChatMessage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? segments = null,}) {
  return _then(_AssistantChatMessage(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as MessageType,segments: null == segments ? _self._segments : segments // ignore: cast_nullable_to_non_nullable
as List<MessageSegment>,
  ));
}


}

// dart format on
