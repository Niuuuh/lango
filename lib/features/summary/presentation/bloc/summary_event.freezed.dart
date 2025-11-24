// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'summary_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SummaryEvent {

 User get user; Topic get topic; List<ChatMessage> get messages;
/// Create a copy of SummaryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SummaryEventCopyWith<SummaryEvent> get copyWith => _$SummaryEventCopyWithImpl<SummaryEvent>(this as SummaryEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SummaryEvent&&(identical(other.user, user) || other.user == user)&&(identical(other.topic, topic) || other.topic == topic)&&const DeepCollectionEquality().equals(other.messages, messages));
}


@override
int get hashCode => Object.hash(runtimeType,user,topic,const DeepCollectionEquality().hash(messages));

@override
String toString() {
  return 'SummaryEvent(user: $user, topic: $topic, messages: $messages)';
}


}

/// @nodoc
abstract mixin class $SummaryEventCopyWith<$Res>  {
  factory $SummaryEventCopyWith(SummaryEvent value, $Res Function(SummaryEvent) _then) = _$SummaryEventCopyWithImpl;
@useResult
$Res call({
 User user, Topic topic, List<ChatMessage> messages
});


$UserCopyWith<$Res> get user;

}
/// @nodoc
class _$SummaryEventCopyWithImpl<$Res>
    implements $SummaryEventCopyWith<$Res> {
  _$SummaryEventCopyWithImpl(this._self, this._then);

  final SummaryEvent _self;
  final $Res Function(SummaryEvent) _then;

/// Create a copy of SummaryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? user = null,Object? topic = null,Object? messages = null,}) {
  return _then(_self.copyWith(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User,topic: null == topic ? _self.topic : topic // ignore: cast_nullable_to_non_nullable
as Topic,messages: null == messages ? _self.messages : messages // ignore: cast_nullable_to_non_nullable
as List<ChatMessage>,
  ));
}
/// Create a copy of SummaryEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get user {
  
  return $UserCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [SummaryEvent].
extension SummaryEventPatterns on SummaryEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SummaryStarted value)?  started,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SummaryStarted() when started != null:
return started(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SummaryStarted value)  started,}){
final _that = this;
switch (_that) {
case SummaryStarted():
return started(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SummaryStarted value)?  started,}){
final _that = this;
switch (_that) {
case SummaryStarted() when started != null:
return started(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( User user,  Topic topic,  List<ChatMessage> messages)?  started,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SummaryStarted() when started != null:
return started(_that.user,_that.topic,_that.messages);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( User user,  Topic topic,  List<ChatMessage> messages)  started,}) {final _that = this;
switch (_that) {
case SummaryStarted():
return started(_that.user,_that.topic,_that.messages);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( User user,  Topic topic,  List<ChatMessage> messages)?  started,}) {final _that = this;
switch (_that) {
case SummaryStarted() when started != null:
return started(_that.user,_that.topic,_that.messages);case _:
  return null;

}
}

}

/// @nodoc


class SummaryStarted implements SummaryEvent {
  const SummaryStarted({required this.user, required this.topic, required final  List<ChatMessage> messages}): _messages = messages;
  

@override final  User user;
@override final  Topic topic;
 final  List<ChatMessage> _messages;
@override List<ChatMessage> get messages {
  if (_messages is EqualUnmodifiableListView) return _messages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_messages);
}


/// Create a copy of SummaryEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SummaryStartedCopyWith<SummaryStarted> get copyWith => _$SummaryStartedCopyWithImpl<SummaryStarted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SummaryStarted&&(identical(other.user, user) || other.user == user)&&(identical(other.topic, topic) || other.topic == topic)&&const DeepCollectionEquality().equals(other._messages, _messages));
}


@override
int get hashCode => Object.hash(runtimeType,user,topic,const DeepCollectionEquality().hash(_messages));

@override
String toString() {
  return 'SummaryEvent.started(user: $user, topic: $topic, messages: $messages)';
}


}

/// @nodoc
abstract mixin class $SummaryStartedCopyWith<$Res> implements $SummaryEventCopyWith<$Res> {
  factory $SummaryStartedCopyWith(SummaryStarted value, $Res Function(SummaryStarted) _then) = _$SummaryStartedCopyWithImpl;
@override @useResult
$Res call({
 User user, Topic topic, List<ChatMessage> messages
});


@override $UserCopyWith<$Res> get user;

}
/// @nodoc
class _$SummaryStartedCopyWithImpl<$Res>
    implements $SummaryStartedCopyWith<$Res> {
  _$SummaryStartedCopyWithImpl(this._self, this._then);

  final SummaryStarted _self;
  final $Res Function(SummaryStarted) _then;

/// Create a copy of SummaryEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user = null,Object? topic = null,Object? messages = null,}) {
  return _then(SummaryStarted(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User,topic: null == topic ? _self.topic : topic // ignore: cast_nullable_to_non_nullable
as Topic,messages: null == messages ? _self._messages : messages // ignore: cast_nullable_to_non_nullable
as List<ChatMessage>,
  ));
}

/// Create a copy of SummaryEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get user {
  
  return $UserCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
