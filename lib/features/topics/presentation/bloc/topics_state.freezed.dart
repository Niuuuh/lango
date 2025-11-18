// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'topics_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TopicsState implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TopicsState'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TopicsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TopicsState()';
}


}

/// @nodoc
class $TopicsStateCopyWith<$Res>  {
$TopicsStateCopyWith(TopicsState _, $Res Function(TopicsState) __);
}


/// Adds pattern-matching-related methods to [TopicsState].
extension TopicsStatePatterns on TopicsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( TopicsInitial value)?  initial,TResult Function( TopicsLoading value)?  loading,TResult Function( TopicsSuccess value)?  success,TResult Function( TopicsFailure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case TopicsInitial() when initial != null:
return initial(_that);case TopicsLoading() when loading != null:
return loading(_that);case TopicsSuccess() when success != null:
return success(_that);case TopicsFailure() when failure != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( TopicsInitial value)  initial,required TResult Function( TopicsLoading value)  loading,required TResult Function( TopicsSuccess value)  success,required TResult Function( TopicsFailure value)  failure,}){
final _that = this;
switch (_that) {
case TopicsInitial():
return initial(_that);case TopicsLoading():
return loading(_that);case TopicsSuccess():
return success(_that);case TopicsFailure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( TopicsInitial value)?  initial,TResult? Function( TopicsLoading value)?  loading,TResult? Function( TopicsSuccess value)?  success,TResult? Function( TopicsFailure value)?  failure,}){
final _that = this;
switch (_that) {
case TopicsInitial() when initial != null:
return initial(_that);case TopicsLoading() when loading != null:
return loading(_that);case TopicsSuccess() when success != null:
return success(_that);case TopicsFailure() when failure != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<Topic> topics)?  success,TResult Function( String message)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case TopicsInitial() when initial != null:
return initial();case TopicsLoading() when loading != null:
return loading();case TopicsSuccess() when success != null:
return success(_that.topics);case TopicsFailure() when failure != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<Topic> topics)  success,required TResult Function( String message)  failure,}) {final _that = this;
switch (_that) {
case TopicsInitial():
return initial();case TopicsLoading():
return loading();case TopicsSuccess():
return success(_that.topics);case TopicsFailure():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<Topic> topics)?  success,TResult? Function( String message)?  failure,}) {final _that = this;
switch (_that) {
case TopicsInitial() when initial != null:
return initial();case TopicsLoading() when loading != null:
return loading();case TopicsSuccess() when success != null:
return success(_that.topics);case TopicsFailure() when failure != null:
return failure(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class TopicsInitial extends TopicsState with DiagnosticableTreeMixin {
  const TopicsInitial(): super._();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TopicsState.initial'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TopicsInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TopicsState.initial()';
}


}




/// @nodoc


class TopicsLoading extends TopicsState with DiagnosticableTreeMixin {
  const TopicsLoading(): super._();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TopicsState.loading'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TopicsLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TopicsState.loading()';
}


}




/// @nodoc


class TopicsSuccess extends TopicsState with DiagnosticableTreeMixin {
  const TopicsSuccess(final  List<Topic> topics): _topics = topics,super._();
  

 final  List<Topic> _topics;
 List<Topic> get topics {
  if (_topics is EqualUnmodifiableListView) return _topics;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_topics);
}


/// Create a copy of TopicsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TopicsSuccessCopyWith<TopicsSuccess> get copyWith => _$TopicsSuccessCopyWithImpl<TopicsSuccess>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TopicsState.success'))
    ..add(DiagnosticsProperty('topics', topics));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TopicsSuccess&&const DeepCollectionEquality().equals(other._topics, _topics));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_topics));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TopicsState.success(topics: $topics)';
}


}

/// @nodoc
abstract mixin class $TopicsSuccessCopyWith<$Res> implements $TopicsStateCopyWith<$Res> {
  factory $TopicsSuccessCopyWith(TopicsSuccess value, $Res Function(TopicsSuccess) _then) = _$TopicsSuccessCopyWithImpl;
@useResult
$Res call({
 List<Topic> topics
});




}
/// @nodoc
class _$TopicsSuccessCopyWithImpl<$Res>
    implements $TopicsSuccessCopyWith<$Res> {
  _$TopicsSuccessCopyWithImpl(this._self, this._then);

  final TopicsSuccess _self;
  final $Res Function(TopicsSuccess) _then;

/// Create a copy of TopicsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? topics = null,}) {
  return _then(TopicsSuccess(
null == topics ? _self._topics : topics // ignore: cast_nullable_to_non_nullable
as List<Topic>,
  ));
}


}

/// @nodoc


class TopicsFailure extends TopicsState with DiagnosticableTreeMixin {
  const TopicsFailure(this.message): super._();
  

 final  String message;

/// Create a copy of TopicsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TopicsFailureCopyWith<TopicsFailure> get copyWith => _$TopicsFailureCopyWithImpl<TopicsFailure>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TopicsState.failure'))
    ..add(DiagnosticsProperty('message', message));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TopicsFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TopicsState.failure(message: $message)';
}


}

/// @nodoc
abstract mixin class $TopicsFailureCopyWith<$Res> implements $TopicsStateCopyWith<$Res> {
  factory $TopicsFailureCopyWith(TopicsFailure value, $Res Function(TopicsFailure) _then) = _$TopicsFailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$TopicsFailureCopyWithImpl<$Res>
    implements $TopicsFailureCopyWith<$Res> {
  _$TopicsFailureCopyWithImpl(this._self, this._then);

  final TopicsFailure _self;
  final $Res Function(TopicsFailure) _then;

/// Create a copy of TopicsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(TopicsFailure(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
