// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_segment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MessageSegment implements DiagnosticableTreeMixin {

 String get text; String? get translation;
/// Create a copy of MessageSegment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MessageSegmentCopyWith<MessageSegment> get copyWith => _$MessageSegmentCopyWithImpl<MessageSegment>(this as MessageSegment, _$identity);

  /// Serializes this MessageSegment to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'MessageSegment'))
    ..add(DiagnosticsProperty('text', text))..add(DiagnosticsProperty('translation', translation));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MessageSegment&&(identical(other.text, text) || other.text == text)&&(identical(other.translation, translation) || other.translation == translation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,text,translation);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'MessageSegment(text: $text, translation: $translation)';
}


}

/// @nodoc
abstract mixin class $MessageSegmentCopyWith<$Res>  {
  factory $MessageSegmentCopyWith(MessageSegment value, $Res Function(MessageSegment) _then) = _$MessageSegmentCopyWithImpl;
@useResult
$Res call({
 String text, String? translation
});




}
/// @nodoc
class _$MessageSegmentCopyWithImpl<$Res>
    implements $MessageSegmentCopyWith<$Res> {
  _$MessageSegmentCopyWithImpl(this._self, this._then);

  final MessageSegment _self;
  final $Res Function(MessageSegment) _then;

/// Create a copy of MessageSegment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? text = null,Object? translation = freezed,}) {
  return _then(_self.copyWith(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,translation: freezed == translation ? _self.translation : translation // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MessageSegment].
extension MessageSegmentPatterns on MessageSegment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MessageSegment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MessageSegment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MessageSegment value)  $default,){
final _that = this;
switch (_that) {
case _MessageSegment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MessageSegment value)?  $default,){
final _that = this;
switch (_that) {
case _MessageSegment() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String text,  String? translation)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MessageSegment() when $default != null:
return $default(_that.text,_that.translation);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String text,  String? translation)  $default,) {final _that = this;
switch (_that) {
case _MessageSegment():
return $default(_that.text,_that.translation);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String text,  String? translation)?  $default,) {final _that = this;
switch (_that) {
case _MessageSegment() when $default != null:
return $default(_that.text,_that.translation);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MessageSegment with DiagnosticableTreeMixin implements MessageSegment {
  const _MessageSegment({required this.text, this.translation});
  factory _MessageSegment.fromJson(Map<String, dynamic> json) => _$MessageSegmentFromJson(json);

@override final  String text;
@override final  String? translation;

/// Create a copy of MessageSegment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MessageSegmentCopyWith<_MessageSegment> get copyWith => __$MessageSegmentCopyWithImpl<_MessageSegment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MessageSegmentToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'MessageSegment'))
    ..add(DiagnosticsProperty('text', text))..add(DiagnosticsProperty('translation', translation));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MessageSegment&&(identical(other.text, text) || other.text == text)&&(identical(other.translation, translation) || other.translation == translation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,text,translation);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'MessageSegment(text: $text, translation: $translation)';
}


}

/// @nodoc
abstract mixin class _$MessageSegmentCopyWith<$Res> implements $MessageSegmentCopyWith<$Res> {
  factory _$MessageSegmentCopyWith(_MessageSegment value, $Res Function(_MessageSegment) _then) = __$MessageSegmentCopyWithImpl;
@override @useResult
$Res call({
 String text, String? translation
});




}
/// @nodoc
class __$MessageSegmentCopyWithImpl<$Res>
    implements _$MessageSegmentCopyWith<$Res> {
  __$MessageSegmentCopyWithImpl(this._self, this._then);

  final _MessageSegment _self;
  final $Res Function(_MessageSegment) _then;

/// Create a copy of MessageSegment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? text = null,Object? translation = freezed,}) {
  return _then(_MessageSegment(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,translation: freezed == translation ? _self.translation : translation // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
