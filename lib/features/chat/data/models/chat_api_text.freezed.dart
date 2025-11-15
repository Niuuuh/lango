// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_api_text.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatApiText implements DiagnosticableTreeMixin {

 ChatApiFormat get format;
/// Create a copy of ChatApiText
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatApiTextCopyWith<ChatApiText> get copyWith => _$ChatApiTextCopyWithImpl<ChatApiText>(this as ChatApiText, _$identity);

  /// Serializes this ChatApiText to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ChatApiText'))
    ..add(DiagnosticsProperty('format', format));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatApiText&&(identical(other.format, format) || other.format == format));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,format);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ChatApiText(format: $format)';
}


}

/// @nodoc
abstract mixin class $ChatApiTextCopyWith<$Res>  {
  factory $ChatApiTextCopyWith(ChatApiText value, $Res Function(ChatApiText) _then) = _$ChatApiTextCopyWithImpl;
@useResult
$Res call({
 ChatApiFormat format
});


$ChatApiFormatCopyWith<$Res> get format;

}
/// @nodoc
class _$ChatApiTextCopyWithImpl<$Res>
    implements $ChatApiTextCopyWith<$Res> {
  _$ChatApiTextCopyWithImpl(this._self, this._then);

  final ChatApiText _self;
  final $Res Function(ChatApiText) _then;

/// Create a copy of ChatApiText
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? format = null,}) {
  return _then(_self.copyWith(
format: null == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as ChatApiFormat,
  ));
}
/// Create a copy of ChatApiText
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatApiFormatCopyWith<$Res> get format {
  
  return $ChatApiFormatCopyWith<$Res>(_self.format, (value) {
    return _then(_self.copyWith(format: value));
  });
}
}


/// Adds pattern-matching-related methods to [ChatApiText].
extension ChatApiTextPatterns on ChatApiText {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatApiText value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatApiText() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatApiText value)  $default,){
final _that = this;
switch (_that) {
case _ChatApiText():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatApiText value)?  $default,){
final _that = this;
switch (_that) {
case _ChatApiText() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ChatApiFormat format)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatApiText() when $default != null:
return $default(_that.format);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ChatApiFormat format)  $default,) {final _that = this;
switch (_that) {
case _ChatApiText():
return $default(_that.format);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ChatApiFormat format)?  $default,) {final _that = this;
switch (_that) {
case _ChatApiText() when $default != null:
return $default(_that.format);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatApiText with DiagnosticableTreeMixin implements ChatApiText {
  const _ChatApiText({required this.format});
  factory _ChatApiText.fromJson(Map<String, dynamic> json) => _$ChatApiTextFromJson(json);

@override final  ChatApiFormat format;

/// Create a copy of ChatApiText
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatApiTextCopyWith<_ChatApiText> get copyWith => __$ChatApiTextCopyWithImpl<_ChatApiText>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatApiTextToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ChatApiText'))
    ..add(DiagnosticsProperty('format', format));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatApiText&&(identical(other.format, format) || other.format == format));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,format);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ChatApiText(format: $format)';
}


}

/// @nodoc
abstract mixin class _$ChatApiTextCopyWith<$Res> implements $ChatApiTextCopyWith<$Res> {
  factory _$ChatApiTextCopyWith(_ChatApiText value, $Res Function(_ChatApiText) _then) = __$ChatApiTextCopyWithImpl;
@override @useResult
$Res call({
 ChatApiFormat format
});


@override $ChatApiFormatCopyWith<$Res> get format;

}
/// @nodoc
class __$ChatApiTextCopyWithImpl<$Res>
    implements _$ChatApiTextCopyWith<$Res> {
  __$ChatApiTextCopyWithImpl(this._self, this._then);

  final _ChatApiText _self;
  final $Res Function(_ChatApiText) _then;

/// Create a copy of ChatApiText
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? format = null,}) {
  return _then(_ChatApiText(
format: null == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as ChatApiFormat,
  ));
}

/// Create a copy of ChatApiText
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatApiFormatCopyWith<$Res> get format {
  
  return $ChatApiFormatCopyWith<$Res>(_self.format, (value) {
    return _then(_self.copyWith(format: value));
  });
}
}

// dart format on
