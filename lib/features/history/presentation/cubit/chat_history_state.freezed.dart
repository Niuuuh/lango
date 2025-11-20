// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_history_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChatHistoryState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatHistoryState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChatHistoryState()';
}


}

/// @nodoc
class $ChatHistoryStateCopyWith<$Res>  {
$ChatHistoryStateCopyWith(ChatHistoryState _, $Res Function(ChatHistoryState) __);
}


/// Adds pattern-matching-related methods to [ChatHistoryState].
extension ChatHistoryStatePatterns on ChatHistoryState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ChatHistoryInitial value)?  initial,TResult Function( ChatHistoryLoading value)?  loading,TResult Function( ChatHistorySuccess value)?  success,TResult Function( ChatHistoryFailure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ChatHistoryInitial() when initial != null:
return initial(_that);case ChatHistoryLoading() when loading != null:
return loading(_that);case ChatHistorySuccess() when success != null:
return success(_that);case ChatHistoryFailure() when failure != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ChatHistoryInitial value)  initial,required TResult Function( ChatHistoryLoading value)  loading,required TResult Function( ChatHistorySuccess value)  success,required TResult Function( ChatHistoryFailure value)  failure,}){
final _that = this;
switch (_that) {
case ChatHistoryInitial():
return initial(_that);case ChatHistoryLoading():
return loading(_that);case ChatHistorySuccess():
return success(_that);case ChatHistoryFailure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ChatHistoryInitial value)?  initial,TResult? Function( ChatHistoryLoading value)?  loading,TResult? Function( ChatHistorySuccess value)?  success,TResult? Function( ChatHistoryFailure value)?  failure,}){
final _that = this;
switch (_that) {
case ChatHistoryInitial() when initial != null:
return initial(_that);case ChatHistoryLoading() when loading != null:
return loading(_that);case ChatHistorySuccess() when success != null:
return success(_that);case ChatHistoryFailure() when failure != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( ChatHistory history)?  success,TResult Function()?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ChatHistoryInitial() when initial != null:
return initial();case ChatHistoryLoading() when loading != null:
return loading();case ChatHistorySuccess() when success != null:
return success(_that.history);case ChatHistoryFailure() when failure != null:
return failure();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( ChatHistory history)  success,required TResult Function()  failure,}) {final _that = this;
switch (_that) {
case ChatHistoryInitial():
return initial();case ChatHistoryLoading():
return loading();case ChatHistorySuccess():
return success(_that.history);case ChatHistoryFailure():
return failure();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( ChatHistory history)?  success,TResult? Function()?  failure,}) {final _that = this;
switch (_that) {
case ChatHistoryInitial() when initial != null:
return initial();case ChatHistoryLoading() when loading != null:
return loading();case ChatHistorySuccess() when success != null:
return success(_that.history);case ChatHistoryFailure() when failure != null:
return failure();case _:
  return null;

}
}

}

/// @nodoc


class ChatHistoryInitial implements ChatHistoryState {
  const ChatHistoryInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatHistoryInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChatHistoryState.initial()';
}


}




/// @nodoc


class ChatHistoryLoading implements ChatHistoryState {
  const ChatHistoryLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatHistoryLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChatHistoryState.loading()';
}


}




/// @nodoc


class ChatHistorySuccess implements ChatHistoryState {
  const ChatHistorySuccess({required this.history});
  

 final  ChatHistory history;

/// Create a copy of ChatHistoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatHistorySuccessCopyWith<ChatHistorySuccess> get copyWith => _$ChatHistorySuccessCopyWithImpl<ChatHistorySuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatHistorySuccess&&(identical(other.history, history) || other.history == history));
}


@override
int get hashCode => Object.hash(runtimeType,history);

@override
String toString() {
  return 'ChatHistoryState.success(history: $history)';
}


}

/// @nodoc
abstract mixin class $ChatHistorySuccessCopyWith<$Res> implements $ChatHistoryStateCopyWith<$Res> {
  factory $ChatHistorySuccessCopyWith(ChatHistorySuccess value, $Res Function(ChatHistorySuccess) _then) = _$ChatHistorySuccessCopyWithImpl;
@useResult
$Res call({
 ChatHistory history
});


$ChatHistoryCopyWith<$Res> get history;

}
/// @nodoc
class _$ChatHistorySuccessCopyWithImpl<$Res>
    implements $ChatHistorySuccessCopyWith<$Res> {
  _$ChatHistorySuccessCopyWithImpl(this._self, this._then);

  final ChatHistorySuccess _self;
  final $Res Function(ChatHistorySuccess) _then;

/// Create a copy of ChatHistoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? history = null,}) {
  return _then(ChatHistorySuccess(
history: null == history ? _self.history : history // ignore: cast_nullable_to_non_nullable
as ChatHistory,
  ));
}

/// Create a copy of ChatHistoryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatHistoryCopyWith<$Res> get history {
  
  return $ChatHistoryCopyWith<$Res>(_self.history, (value) {
    return _then(_self.copyWith(history: value));
  });
}
}

/// @nodoc


class ChatHistoryFailure implements ChatHistoryState {
  const ChatHistoryFailure();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatHistoryFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChatHistoryState.failure()';
}


}




// dart format on
