// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'topics_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TopicsResponse implements DiagnosticableTreeMixin {

 List<Topic> get topics;
/// Create a copy of TopicsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TopicsResponseCopyWith<TopicsResponse> get copyWith => _$TopicsResponseCopyWithImpl<TopicsResponse>(this as TopicsResponse, _$identity);

  /// Serializes this TopicsResponse to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TopicsResponse'))
    ..add(DiagnosticsProperty('topics', topics));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TopicsResponse&&const DeepCollectionEquality().equals(other.topics, topics));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(topics));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TopicsResponse(topics: $topics)';
}


}

/// @nodoc
abstract mixin class $TopicsResponseCopyWith<$Res>  {
  factory $TopicsResponseCopyWith(TopicsResponse value, $Res Function(TopicsResponse) _then) = _$TopicsResponseCopyWithImpl;
@useResult
$Res call({
 List<Topic> topics
});




}
/// @nodoc
class _$TopicsResponseCopyWithImpl<$Res>
    implements $TopicsResponseCopyWith<$Res> {
  _$TopicsResponseCopyWithImpl(this._self, this._then);

  final TopicsResponse _self;
  final $Res Function(TopicsResponse) _then;

/// Create a copy of TopicsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? topics = null,}) {
  return _then(_self.copyWith(
topics: null == topics ? _self.topics : topics // ignore: cast_nullable_to_non_nullable
as List<Topic>,
  ));
}

}


/// Adds pattern-matching-related methods to [TopicsResponse].
extension TopicsResponsePatterns on TopicsResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TopicsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TopicsResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TopicsResponse value)  $default,){
final _that = this;
switch (_that) {
case _TopicsResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TopicsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _TopicsResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Topic> topics)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TopicsResponse() when $default != null:
return $default(_that.topics);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Topic> topics)  $default,) {final _that = this;
switch (_that) {
case _TopicsResponse():
return $default(_that.topics);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Topic> topics)?  $default,) {final _that = this;
switch (_that) {
case _TopicsResponse() when $default != null:
return $default(_that.topics);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TopicsResponse with DiagnosticableTreeMixin implements TopicsResponse {
  const _TopicsResponse({required final  List<Topic> topics}): _topics = topics;
  factory _TopicsResponse.fromJson(Map<String, dynamic> json) => _$TopicsResponseFromJson(json);

 final  List<Topic> _topics;
@override List<Topic> get topics {
  if (_topics is EqualUnmodifiableListView) return _topics;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_topics);
}


/// Create a copy of TopicsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TopicsResponseCopyWith<_TopicsResponse> get copyWith => __$TopicsResponseCopyWithImpl<_TopicsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TopicsResponseToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TopicsResponse'))
    ..add(DiagnosticsProperty('topics', topics));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TopicsResponse&&const DeepCollectionEquality().equals(other._topics, _topics));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_topics));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TopicsResponse(topics: $topics)';
}


}

/// @nodoc
abstract mixin class _$TopicsResponseCopyWith<$Res> implements $TopicsResponseCopyWith<$Res> {
  factory _$TopicsResponseCopyWith(_TopicsResponse value, $Res Function(_TopicsResponse) _then) = __$TopicsResponseCopyWithImpl;
@override @useResult
$Res call({
 List<Topic> topics
});




}
/// @nodoc
class __$TopicsResponseCopyWithImpl<$Res>
    implements _$TopicsResponseCopyWith<$Res> {
  __$TopicsResponseCopyWithImpl(this._self, this._then);

  final _TopicsResponse _self;
  final $Res Function(_TopicsResponse) _then;

/// Create a copy of TopicsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? topics = null,}) {
  return _then(_TopicsResponse(
topics: null == topics ? _self._topics : topics // ignore: cast_nullable_to_non_nullable
as List<Topic>,
  ));
}


}

// dart format on
