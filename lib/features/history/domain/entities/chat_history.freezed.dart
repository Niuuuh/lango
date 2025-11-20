// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatHistory implements DiagnosticableTreeMixin {

 List<ChatHistoryEntry> get entries;
/// Create a copy of ChatHistory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatHistoryCopyWith<ChatHistory> get copyWith => _$ChatHistoryCopyWithImpl<ChatHistory>(this as ChatHistory, _$identity);

  /// Serializes this ChatHistory to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ChatHistory'))
    ..add(DiagnosticsProperty('entries', entries));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatHistory&&const DeepCollectionEquality().equals(other.entries, entries));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(entries));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ChatHistory(entries: $entries)';
}


}

/// @nodoc
abstract mixin class $ChatHistoryCopyWith<$Res>  {
  factory $ChatHistoryCopyWith(ChatHistory value, $Res Function(ChatHistory) _then) = _$ChatHistoryCopyWithImpl;
@useResult
$Res call({
 List<ChatHistoryEntry> entries
});




}
/// @nodoc
class _$ChatHistoryCopyWithImpl<$Res>
    implements $ChatHistoryCopyWith<$Res> {
  _$ChatHistoryCopyWithImpl(this._self, this._then);

  final ChatHistory _self;
  final $Res Function(ChatHistory) _then;

/// Create a copy of ChatHistory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? entries = null,}) {
  return _then(_self.copyWith(
entries: null == entries ? _self.entries : entries // ignore: cast_nullable_to_non_nullable
as List<ChatHistoryEntry>,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatHistory].
extension ChatHistoryPatterns on ChatHistory {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatHistory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatHistory() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatHistory value)  $default,){
final _that = this;
switch (_that) {
case _ChatHistory():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatHistory value)?  $default,){
final _that = this;
switch (_that) {
case _ChatHistory() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ChatHistoryEntry> entries)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatHistory() when $default != null:
return $default(_that.entries);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ChatHistoryEntry> entries)  $default,) {final _that = this;
switch (_that) {
case _ChatHistory():
return $default(_that.entries);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ChatHistoryEntry> entries)?  $default,) {final _that = this;
switch (_that) {
case _ChatHistory() when $default != null:
return $default(_that.entries);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatHistory with DiagnosticableTreeMixin implements ChatHistory {
  const _ChatHistory({required final  List<ChatHistoryEntry> entries}): _entries = entries;
  factory _ChatHistory.fromJson(Map<String, dynamic> json) => _$ChatHistoryFromJson(json);

 final  List<ChatHistoryEntry> _entries;
@override List<ChatHistoryEntry> get entries {
  if (_entries is EqualUnmodifiableListView) return _entries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_entries);
}


/// Create a copy of ChatHistory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatHistoryCopyWith<_ChatHistory> get copyWith => __$ChatHistoryCopyWithImpl<_ChatHistory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatHistoryToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ChatHistory'))
    ..add(DiagnosticsProperty('entries', entries));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatHistory&&const DeepCollectionEquality().equals(other._entries, _entries));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_entries));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ChatHistory(entries: $entries)';
}


}

/// @nodoc
abstract mixin class _$ChatHistoryCopyWith<$Res> implements $ChatHistoryCopyWith<$Res> {
  factory _$ChatHistoryCopyWith(_ChatHistory value, $Res Function(_ChatHistory) _then) = __$ChatHistoryCopyWithImpl;
@override @useResult
$Res call({
 List<ChatHistoryEntry> entries
});




}
/// @nodoc
class __$ChatHistoryCopyWithImpl<$Res>
    implements _$ChatHistoryCopyWith<$Res> {
  __$ChatHistoryCopyWithImpl(this._self, this._then);

  final _ChatHistory _self;
  final $Res Function(_ChatHistory) _then;

/// Create a copy of ChatHistory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? entries = null,}) {
  return _then(_ChatHistory(
entries: null == entries ? _self._entries : entries // ignore: cast_nullable_to_non_nullable
as List<ChatHistoryEntry>,
  ));
}


}

// dart format on
