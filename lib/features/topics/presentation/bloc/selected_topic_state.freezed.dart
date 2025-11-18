// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'selected_topic_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SelectedTopicState implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SelectedTopicState'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectedTopicState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SelectedTopicState()';
}


}

/// @nodoc
class $SelectedTopicStateCopyWith<$Res>  {
$SelectedTopicStateCopyWith(SelectedTopicState _, $Res Function(SelectedTopicState) __);
}


/// Adds pattern-matching-related methods to [SelectedTopicState].
extension SelectedTopicStatePatterns on SelectedTopicState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SelectedTopicInitial value)?  initial,TResult Function( SelectedTopicLoading value)?  loading,TResult Function( SelectedTopicSuccess value)?  success,TResult Function( SelectedTopicFailure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SelectedTopicInitial() when initial != null:
return initial(_that);case SelectedTopicLoading() when loading != null:
return loading(_that);case SelectedTopicSuccess() when success != null:
return success(_that);case SelectedTopicFailure() when failure != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SelectedTopicInitial value)  initial,required TResult Function( SelectedTopicLoading value)  loading,required TResult Function( SelectedTopicSuccess value)  success,required TResult Function( SelectedTopicFailure value)  failure,}){
final _that = this;
switch (_that) {
case SelectedTopicInitial():
return initial(_that);case SelectedTopicLoading():
return loading(_that);case SelectedTopicSuccess():
return success(_that);case SelectedTopicFailure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SelectedTopicInitial value)?  initial,TResult? Function( SelectedTopicLoading value)?  loading,TResult? Function( SelectedTopicSuccess value)?  success,TResult? Function( SelectedTopicFailure value)?  failure,}){
final _that = this;
switch (_that) {
case SelectedTopicInitial() when initial != null:
return initial(_that);case SelectedTopicLoading() when loading != null:
return loading(_that);case SelectedTopicSuccess() when success != null:
return success(_that);case SelectedTopicFailure() when failure != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( Topic topic)?  success,TResult Function( String message)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SelectedTopicInitial() when initial != null:
return initial();case SelectedTopicLoading() when loading != null:
return loading();case SelectedTopicSuccess() when success != null:
return success(_that.topic);case SelectedTopicFailure() when failure != null:
return failure(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( Topic topic)  success,required TResult Function( String message)  failure,}) {final _that = this;
switch (_that) {
case SelectedTopicInitial():
return initial();case SelectedTopicLoading():
return loading();case SelectedTopicSuccess():
return success(_that.topic);case SelectedTopicFailure():
return failure(_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( Topic topic)?  success,TResult? Function( String message)?  failure,}) {final _that = this;
switch (_that) {
case SelectedTopicInitial() when initial != null:
return initial();case SelectedTopicLoading() when loading != null:
return loading();case SelectedTopicSuccess() when success != null:
return success(_that.topic);case SelectedTopicFailure() when failure != null:
return failure(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class SelectedTopicInitial extends SelectedTopicState with DiagnosticableTreeMixin {
  const SelectedTopicInitial(): super._();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SelectedTopicState.initial'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectedTopicInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SelectedTopicState.initial()';
}


}




/// @nodoc


class SelectedTopicLoading extends SelectedTopicState with DiagnosticableTreeMixin {
  const SelectedTopicLoading(): super._();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SelectedTopicState.loading'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectedTopicLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SelectedTopicState.loading()';
}


}




/// @nodoc


class SelectedTopicSuccess extends SelectedTopicState with DiagnosticableTreeMixin {
  const SelectedTopicSuccess(this.topic): super._();
  

 final  Topic topic;

/// Create a copy of SelectedTopicState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SelectedTopicSuccessCopyWith<SelectedTopicSuccess> get copyWith => _$SelectedTopicSuccessCopyWithImpl<SelectedTopicSuccess>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SelectedTopicState.success'))
    ..add(DiagnosticsProperty('topic', topic));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectedTopicSuccess&&(identical(other.topic, topic) || other.topic == topic));
}


@override
int get hashCode => Object.hash(runtimeType,topic);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SelectedTopicState.success(topic: $topic)';
}


}

/// @nodoc
abstract mixin class $SelectedTopicSuccessCopyWith<$Res> implements $SelectedTopicStateCopyWith<$Res> {
  factory $SelectedTopicSuccessCopyWith(SelectedTopicSuccess value, $Res Function(SelectedTopicSuccess) _then) = _$SelectedTopicSuccessCopyWithImpl;
@useResult
$Res call({
 Topic topic
});


$TopicCopyWith<$Res> get topic;

}
/// @nodoc
class _$SelectedTopicSuccessCopyWithImpl<$Res>
    implements $SelectedTopicSuccessCopyWith<$Res> {
  _$SelectedTopicSuccessCopyWithImpl(this._self, this._then);

  final SelectedTopicSuccess _self;
  final $Res Function(SelectedTopicSuccess) _then;

/// Create a copy of SelectedTopicState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? topic = null,}) {
  return _then(SelectedTopicSuccess(
null == topic ? _self.topic : topic // ignore: cast_nullable_to_non_nullable
as Topic,
  ));
}

/// Create a copy of SelectedTopicState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TopicCopyWith<$Res> get topic {
  
  return $TopicCopyWith<$Res>(_self.topic, (value) {
    return _then(_self.copyWith(topic: value));
  });
}
}

/// @nodoc


class SelectedTopicFailure extends SelectedTopicState with DiagnosticableTreeMixin {
  const SelectedTopicFailure(this.message): super._();
  

 final  String message;

/// Create a copy of SelectedTopicState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SelectedTopicFailureCopyWith<SelectedTopicFailure> get copyWith => _$SelectedTopicFailureCopyWithImpl<SelectedTopicFailure>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SelectedTopicState.failure'))
    ..add(DiagnosticsProperty('message', message));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectedTopicFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SelectedTopicState.failure(message: $message)';
}


}

/// @nodoc
abstract mixin class $SelectedTopicFailureCopyWith<$Res> implements $SelectedTopicStateCopyWith<$Res> {
  factory $SelectedTopicFailureCopyWith(SelectedTopicFailure value, $Res Function(SelectedTopicFailure) _then) = _$SelectedTopicFailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$SelectedTopicFailureCopyWithImpl<$Res>
    implements $SelectedTopicFailureCopyWith<$Res> {
  _$SelectedTopicFailureCopyWithImpl(this._self, this._then);

  final SelectedTopicFailure _self;
  final $Res Function(SelectedTopicFailure) _then;

/// Create a copy of SelectedTopicState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(SelectedTopicFailure(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
