// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChatState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChatState()';
}


}

/// @nodoc
class $ChatStateCopyWith<$Res>  {
$ChatStateCopyWith(ChatState _, $Res Function(ChatState) __);
}


/// Adds pattern-matching-related methods to [ChatState].
extension ChatStatePatterns on ChatState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ChatInitial value)?  initial,TResult Function( ChatLoading value)?  loading,TResult Function( ChatSuccess value)?  success,TResult Function( ChatFailure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ChatInitial() when initial != null:
return initial(_that);case ChatLoading() when loading != null:
return loading(_that);case ChatSuccess() when success != null:
return success(_that);case ChatFailure() when failure != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ChatInitial value)  initial,required TResult Function( ChatLoading value)  loading,required TResult Function( ChatSuccess value)  success,required TResult Function( ChatFailure value)  failure,}){
final _that = this;
switch (_that) {
case ChatInitial():
return initial(_that);case ChatLoading():
return loading(_that);case ChatSuccess():
return success(_that);case ChatFailure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ChatInitial value)?  initial,TResult? Function( ChatLoading value)?  loading,TResult? Function( ChatSuccess value)?  success,TResult? Function( ChatFailure value)?  failure,}){
final _that = this;
switch (_that) {
case ChatInitial() when initial != null:
return initial(_that);case ChatLoading() when loading != null:
return loading(_that);case ChatSuccess() when success != null:
return success(_that);case ChatFailure() when failure != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( List<ChatMessage> messages)?  loading,TResult Function( List<ChatMessage> messages)?  success,TResult Function( List<ChatMessage> messages,  Exception error)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ChatInitial() when initial != null:
return initial();case ChatLoading() when loading != null:
return loading(_that.messages);case ChatSuccess() when success != null:
return success(_that.messages);case ChatFailure() when failure != null:
return failure(_that.messages,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( List<ChatMessage> messages)  loading,required TResult Function( List<ChatMessage> messages)  success,required TResult Function( List<ChatMessage> messages,  Exception error)  failure,}) {final _that = this;
switch (_that) {
case ChatInitial():
return initial();case ChatLoading():
return loading(_that.messages);case ChatSuccess():
return success(_that.messages);case ChatFailure():
return failure(_that.messages,_that.error);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( List<ChatMessage> messages)?  loading,TResult? Function( List<ChatMessage> messages)?  success,TResult? Function( List<ChatMessage> messages,  Exception error)?  failure,}) {final _that = this;
switch (_that) {
case ChatInitial() when initial != null:
return initial();case ChatLoading() when loading != null:
return loading(_that.messages);case ChatSuccess() when success != null:
return success(_that.messages);case ChatFailure() when failure != null:
return failure(_that.messages,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class ChatInitial extends ChatState {
  const ChatInitial(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChatState.initial()';
}


}




/// @nodoc


class ChatLoading extends ChatState {
  const ChatLoading(final  List<ChatMessage> messages): _messages = messages,super._();
  

 final  List<ChatMessage> _messages;
 List<ChatMessage> get messages {
  if (_messages is EqualUnmodifiableListView) return _messages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_messages);
}


/// Create a copy of ChatState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatLoadingCopyWith<ChatLoading> get copyWith => _$ChatLoadingCopyWithImpl<ChatLoading>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatLoading&&const DeepCollectionEquality().equals(other._messages, _messages));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_messages));

@override
String toString() {
  return 'ChatState.loading(messages: $messages)';
}


}

/// @nodoc
abstract mixin class $ChatLoadingCopyWith<$Res> implements $ChatStateCopyWith<$Res> {
  factory $ChatLoadingCopyWith(ChatLoading value, $Res Function(ChatLoading) _then) = _$ChatLoadingCopyWithImpl;
@useResult
$Res call({
 List<ChatMessage> messages
});




}
/// @nodoc
class _$ChatLoadingCopyWithImpl<$Res>
    implements $ChatLoadingCopyWith<$Res> {
  _$ChatLoadingCopyWithImpl(this._self, this._then);

  final ChatLoading _self;
  final $Res Function(ChatLoading) _then;

/// Create a copy of ChatState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? messages = null,}) {
  return _then(ChatLoading(
null == messages ? _self._messages : messages // ignore: cast_nullable_to_non_nullable
as List<ChatMessage>,
  ));
}


}

/// @nodoc


class ChatSuccess extends ChatState {
  const ChatSuccess(final  List<ChatMessage> messages): _messages = messages,super._();
  

 final  List<ChatMessage> _messages;
 List<ChatMessage> get messages {
  if (_messages is EqualUnmodifiableListView) return _messages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_messages);
}


/// Create a copy of ChatState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatSuccessCopyWith<ChatSuccess> get copyWith => _$ChatSuccessCopyWithImpl<ChatSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatSuccess&&const DeepCollectionEquality().equals(other._messages, _messages));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_messages));

@override
String toString() {
  return 'ChatState.success(messages: $messages)';
}


}

/// @nodoc
abstract mixin class $ChatSuccessCopyWith<$Res> implements $ChatStateCopyWith<$Res> {
  factory $ChatSuccessCopyWith(ChatSuccess value, $Res Function(ChatSuccess) _then) = _$ChatSuccessCopyWithImpl;
@useResult
$Res call({
 List<ChatMessage> messages
});




}
/// @nodoc
class _$ChatSuccessCopyWithImpl<$Res>
    implements $ChatSuccessCopyWith<$Res> {
  _$ChatSuccessCopyWithImpl(this._self, this._then);

  final ChatSuccess _self;
  final $Res Function(ChatSuccess) _then;

/// Create a copy of ChatState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? messages = null,}) {
  return _then(ChatSuccess(
null == messages ? _self._messages : messages // ignore: cast_nullable_to_non_nullable
as List<ChatMessage>,
  ));
}


}

/// @nodoc


class ChatFailure extends ChatState {
  const ChatFailure(final  List<ChatMessage> messages, this.error): _messages = messages,super._();
  

 final  List<ChatMessage> _messages;
 List<ChatMessage> get messages {
  if (_messages is EqualUnmodifiableListView) return _messages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_messages);
}

 final  Exception error;

/// Create a copy of ChatState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatFailureCopyWith<ChatFailure> get copyWith => _$ChatFailureCopyWithImpl<ChatFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatFailure&&const DeepCollectionEquality().equals(other._messages, _messages)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_messages),error);

@override
String toString() {
  return 'ChatState.failure(messages: $messages, error: $error)';
}


}

/// @nodoc
abstract mixin class $ChatFailureCopyWith<$Res> implements $ChatStateCopyWith<$Res> {
  factory $ChatFailureCopyWith(ChatFailure value, $Res Function(ChatFailure) _then) = _$ChatFailureCopyWithImpl;
@useResult
$Res call({
 List<ChatMessage> messages, Exception error
});




}
/// @nodoc
class _$ChatFailureCopyWithImpl<$Res>
    implements $ChatFailureCopyWith<$Res> {
  _$ChatFailureCopyWithImpl(this._self, this._then);

  final ChatFailure _self;
  final $Res Function(ChatFailure) _then;

/// Create a copy of ChatState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? messages = null,Object? error = null,}) {
  return _then(ChatFailure(
null == messages ? _self._messages : messages // ignore: cast_nullable_to_non_nullable
as List<ChatMessage>,null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Exception,
  ));
}


}

// dart format on
