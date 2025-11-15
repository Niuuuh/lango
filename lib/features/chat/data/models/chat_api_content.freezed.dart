// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_api_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
ChatApiContent _$ChatApiContentFromJson(
  Map<String, dynamic> json
) {
        switch (json['type']) {
                  case 'output_text':
          return ChatApiOutputText.fromJson(
            json
          );
                case 'refusal':
          return ChatApiRefusal.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'type',
  'ChatApiContent',
  'Invalid union type "${json['type']}"!'
);
        }
      
}

/// @nodoc
mixin _$ChatApiContent implements DiagnosticableTreeMixin {



  /// Serializes this ChatApiContent to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ChatApiContent'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatApiContent);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ChatApiContent()';
}


}

/// @nodoc
class $ChatApiContentCopyWith<$Res>  {
$ChatApiContentCopyWith(ChatApiContent _, $Res Function(ChatApiContent) __);
}


/// Adds pattern-matching-related methods to [ChatApiContent].
extension ChatApiContentPatterns on ChatApiContent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ChatApiOutputText value)?  outputText,TResult Function( ChatApiRefusal value)?  refusal,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ChatApiOutputText() when outputText != null:
return outputText(_that);case ChatApiRefusal() when refusal != null:
return refusal(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ChatApiOutputText value)  outputText,required TResult Function( ChatApiRefusal value)  refusal,}){
final _that = this;
switch (_that) {
case ChatApiOutputText():
return outputText(_that);case ChatApiRefusal():
return refusal(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ChatApiOutputText value)?  outputText,TResult? Function( ChatApiRefusal value)?  refusal,}){
final _that = this;
switch (_that) {
case ChatApiOutputText() when outputText != null:
return outputText(_that);case ChatApiRefusal() when refusal != null:
return refusal(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String text)?  outputText,TResult Function( String refusal)?  refusal,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ChatApiOutputText() when outputText != null:
return outputText(_that.text);case ChatApiRefusal() when refusal != null:
return refusal(_that.refusal);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String text)  outputText,required TResult Function( String refusal)  refusal,}) {final _that = this;
switch (_that) {
case ChatApiOutputText():
return outputText(_that.text);case ChatApiRefusal():
return refusal(_that.refusal);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String text)?  outputText,TResult? Function( String refusal)?  refusal,}) {final _that = this;
switch (_that) {
case ChatApiOutputText() when outputText != null:
return outputText(_that.text);case ChatApiRefusal() when refusal != null:
return refusal(_that.refusal);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class ChatApiOutputText with DiagnosticableTreeMixin implements ChatApiContent {
  const ChatApiOutputText({required this.text, final  String? $type}): $type = $type ?? 'output_text';
  factory ChatApiOutputText.fromJson(Map<String, dynamic> json) => _$ChatApiOutputTextFromJson(json);

 final  String text;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of ChatApiContent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatApiOutputTextCopyWith<ChatApiOutputText> get copyWith => _$ChatApiOutputTextCopyWithImpl<ChatApiOutputText>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatApiOutputTextToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ChatApiContent.outputText'))
    ..add(DiagnosticsProperty('text', text));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatApiOutputText&&(identical(other.text, text) || other.text == text));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,text);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ChatApiContent.outputText(text: $text)';
}


}

/// @nodoc
abstract mixin class $ChatApiOutputTextCopyWith<$Res> implements $ChatApiContentCopyWith<$Res> {
  factory $ChatApiOutputTextCopyWith(ChatApiOutputText value, $Res Function(ChatApiOutputText) _then) = _$ChatApiOutputTextCopyWithImpl;
@useResult
$Res call({
 String text
});




}
/// @nodoc
class _$ChatApiOutputTextCopyWithImpl<$Res>
    implements $ChatApiOutputTextCopyWith<$Res> {
  _$ChatApiOutputTextCopyWithImpl(this._self, this._then);

  final ChatApiOutputText _self;
  final $Res Function(ChatApiOutputText) _then;

/// Create a copy of ChatApiContent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? text = null,}) {
  return _then(ChatApiOutputText(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
@JsonSerializable()

class ChatApiRefusal with DiagnosticableTreeMixin implements ChatApiContent {
  const ChatApiRefusal({required this.refusal, final  String? $type}): $type = $type ?? 'refusal';
  factory ChatApiRefusal.fromJson(Map<String, dynamic> json) => _$ChatApiRefusalFromJson(json);

 final  String refusal;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of ChatApiContent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatApiRefusalCopyWith<ChatApiRefusal> get copyWith => _$ChatApiRefusalCopyWithImpl<ChatApiRefusal>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatApiRefusalToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ChatApiContent.refusal'))
    ..add(DiagnosticsProperty('refusal', refusal));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatApiRefusal&&(identical(other.refusal, refusal) || other.refusal == refusal));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,refusal);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ChatApiContent.refusal(refusal: $refusal)';
}


}

/// @nodoc
abstract mixin class $ChatApiRefusalCopyWith<$Res> implements $ChatApiContentCopyWith<$Res> {
  factory $ChatApiRefusalCopyWith(ChatApiRefusal value, $Res Function(ChatApiRefusal) _then) = _$ChatApiRefusalCopyWithImpl;
@useResult
$Res call({
 String refusal
});




}
/// @nodoc
class _$ChatApiRefusalCopyWithImpl<$Res>
    implements $ChatApiRefusalCopyWith<$Res> {
  _$ChatApiRefusalCopyWithImpl(this._self, this._then);

  final ChatApiRefusal _self;
  final $Res Function(ChatApiRefusal) _then;

/// Create a copy of ChatApiContent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? refusal = null,}) {
  return _then(ChatApiRefusal(
refusal: null == refusal ? _self.refusal : refusal // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
