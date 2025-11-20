// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_history_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatHistoryEntry implements DiagnosticableTreeMixin {

 String get languageId; String get topicId; DateTime get date; List<ChatMessage> get messages;
/// Create a copy of ChatHistoryEntry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatHistoryEntryCopyWith<ChatHistoryEntry> get copyWith => _$ChatHistoryEntryCopyWithImpl<ChatHistoryEntry>(this as ChatHistoryEntry, _$identity);

  /// Serializes this ChatHistoryEntry to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ChatHistoryEntry'))
    ..add(DiagnosticsProperty('languageId', languageId))..add(DiagnosticsProperty('topicId', topicId))..add(DiagnosticsProperty('date', date))..add(DiagnosticsProperty('messages', messages));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatHistoryEntry&&(identical(other.languageId, languageId) || other.languageId == languageId)&&(identical(other.topicId, topicId) || other.topicId == topicId)&&(identical(other.date, date) || other.date == date)&&const DeepCollectionEquality().equals(other.messages, messages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,languageId,topicId,date,const DeepCollectionEquality().hash(messages));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ChatHistoryEntry(languageId: $languageId, topicId: $topicId, date: $date, messages: $messages)';
}


}

/// @nodoc
abstract mixin class $ChatHistoryEntryCopyWith<$Res>  {
  factory $ChatHistoryEntryCopyWith(ChatHistoryEntry value, $Res Function(ChatHistoryEntry) _then) = _$ChatHistoryEntryCopyWithImpl;
@useResult
$Res call({
 String languageId, String topicId, DateTime date, List<ChatMessage> messages
});




}
/// @nodoc
class _$ChatHistoryEntryCopyWithImpl<$Res>
    implements $ChatHistoryEntryCopyWith<$Res> {
  _$ChatHistoryEntryCopyWithImpl(this._self, this._then);

  final ChatHistoryEntry _self;
  final $Res Function(ChatHistoryEntry) _then;

/// Create a copy of ChatHistoryEntry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? languageId = null,Object? topicId = null,Object? date = null,Object? messages = null,}) {
  return _then(_self.copyWith(
languageId: null == languageId ? _self.languageId : languageId // ignore: cast_nullable_to_non_nullable
as String,topicId: null == topicId ? _self.topicId : topicId // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,messages: null == messages ? _self.messages : messages // ignore: cast_nullable_to_non_nullable
as List<ChatMessage>,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatHistoryEntry].
extension ChatHistoryEntryPatterns on ChatHistoryEntry {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatHistoryEntry value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatHistoryEntry() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatHistoryEntry value)  $default,){
final _that = this;
switch (_that) {
case _ChatHistoryEntry():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatHistoryEntry value)?  $default,){
final _that = this;
switch (_that) {
case _ChatHistoryEntry() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String languageId,  String topicId,  DateTime date,  List<ChatMessage> messages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatHistoryEntry() when $default != null:
return $default(_that.languageId,_that.topicId,_that.date,_that.messages);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String languageId,  String topicId,  DateTime date,  List<ChatMessage> messages)  $default,) {final _that = this;
switch (_that) {
case _ChatHistoryEntry():
return $default(_that.languageId,_that.topicId,_that.date,_that.messages);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String languageId,  String topicId,  DateTime date,  List<ChatMessage> messages)?  $default,) {final _that = this;
switch (_that) {
case _ChatHistoryEntry() when $default != null:
return $default(_that.languageId,_that.topicId,_that.date,_that.messages);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatHistoryEntry with DiagnosticableTreeMixin implements ChatHistoryEntry {
  const _ChatHistoryEntry({required this.languageId, required this.topicId, required this.date, required final  List<ChatMessage> messages}): _messages = messages;
  factory _ChatHistoryEntry.fromJson(Map<String, dynamic> json) => _$ChatHistoryEntryFromJson(json);

@override final  String languageId;
@override final  String topicId;
@override final  DateTime date;
 final  List<ChatMessage> _messages;
@override List<ChatMessage> get messages {
  if (_messages is EqualUnmodifiableListView) return _messages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_messages);
}


/// Create a copy of ChatHistoryEntry
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatHistoryEntryCopyWith<_ChatHistoryEntry> get copyWith => __$ChatHistoryEntryCopyWithImpl<_ChatHistoryEntry>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatHistoryEntryToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ChatHistoryEntry'))
    ..add(DiagnosticsProperty('languageId', languageId))..add(DiagnosticsProperty('topicId', topicId))..add(DiagnosticsProperty('date', date))..add(DiagnosticsProperty('messages', messages));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatHistoryEntry&&(identical(other.languageId, languageId) || other.languageId == languageId)&&(identical(other.topicId, topicId) || other.topicId == topicId)&&(identical(other.date, date) || other.date == date)&&const DeepCollectionEquality().equals(other._messages, _messages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,languageId,topicId,date,const DeepCollectionEquality().hash(_messages));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ChatHistoryEntry(languageId: $languageId, topicId: $topicId, date: $date, messages: $messages)';
}


}

/// @nodoc
abstract mixin class _$ChatHistoryEntryCopyWith<$Res> implements $ChatHistoryEntryCopyWith<$Res> {
  factory _$ChatHistoryEntryCopyWith(_ChatHistoryEntry value, $Res Function(_ChatHistoryEntry) _then) = __$ChatHistoryEntryCopyWithImpl;
@override @useResult
$Res call({
 String languageId, String topicId, DateTime date, List<ChatMessage> messages
});




}
/// @nodoc
class __$ChatHistoryEntryCopyWithImpl<$Res>
    implements _$ChatHistoryEntryCopyWith<$Res> {
  __$ChatHistoryEntryCopyWithImpl(this._self, this._then);

  final _ChatHistoryEntry _self;
  final $Res Function(_ChatHistoryEntry) _then;

/// Create a copy of ChatHistoryEntry
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? languageId = null,Object? topicId = null,Object? date = null,Object? messages = null,}) {
  return _then(_ChatHistoryEntry(
languageId: null == languageId ? _self.languageId : languageId // ignore: cast_nullable_to_non_nullable
as String,topicId: null == topicId ? _self.topicId : topicId // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,messages: null == messages ? _self._messages : messages // ignore: cast_nullable_to_non_nullable
as List<ChatMessage>,
  ));
}


}

// dart format on
