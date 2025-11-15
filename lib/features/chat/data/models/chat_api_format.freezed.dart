// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_api_format.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
ChatApiFormat _$ChatApiFormatFromJson(
  Map<String, dynamic> json
) {
        switch (json['type']) {
                  case 'text':
          return ChatApiFormatText.fromJson(
            json
          );
                case 'json_schema':
          return ChatApiFormatJsonSchema.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'type',
  'ChatApiFormat',
  'Invalid union type "${json['type']}"!'
);
        }
      
}

/// @nodoc
mixin _$ChatApiFormat implements DiagnosticableTreeMixin {



  /// Serializes this ChatApiFormat to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ChatApiFormat'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatApiFormat);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ChatApiFormat()';
}


}

/// @nodoc
class $ChatApiFormatCopyWith<$Res>  {
$ChatApiFormatCopyWith(ChatApiFormat _, $Res Function(ChatApiFormat) __);
}


/// Adds pattern-matching-related methods to [ChatApiFormat].
extension ChatApiFormatPatterns on ChatApiFormat {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ChatApiFormatText value)?  text,TResult Function( ChatApiFormatJsonSchema value)?  jsonSchema,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ChatApiFormatText() when text != null:
return text(_that);case ChatApiFormatJsonSchema() when jsonSchema != null:
return jsonSchema(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ChatApiFormatText value)  text,required TResult Function( ChatApiFormatJsonSchema value)  jsonSchema,}){
final _that = this;
switch (_that) {
case ChatApiFormatText():
return text(_that);case ChatApiFormatJsonSchema():
return jsonSchema(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ChatApiFormatText value)?  text,TResult? Function( ChatApiFormatJsonSchema value)?  jsonSchema,}){
final _that = this;
switch (_that) {
case ChatApiFormatText() when text != null:
return text(_that);case ChatApiFormatJsonSchema() when jsonSchema != null:
return jsonSchema(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  text,TResult Function( String name,  Map<String, dynamic> schema,  String? description,  bool strict)?  jsonSchema,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ChatApiFormatText() when text != null:
return text();case ChatApiFormatJsonSchema() when jsonSchema != null:
return jsonSchema(_that.name,_that.schema,_that.description,_that.strict);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  text,required TResult Function( String name,  Map<String, dynamic> schema,  String? description,  bool strict)  jsonSchema,}) {final _that = this;
switch (_that) {
case ChatApiFormatText():
return text();case ChatApiFormatJsonSchema():
return jsonSchema(_that.name,_that.schema,_that.description,_that.strict);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  text,TResult? Function( String name,  Map<String, dynamic> schema,  String? description,  bool strict)?  jsonSchema,}) {final _that = this;
switch (_that) {
case ChatApiFormatText() when text != null:
return text();case ChatApiFormatJsonSchema() when jsonSchema != null:
return jsonSchema(_that.name,_that.schema,_that.description,_that.strict);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class ChatApiFormatText with DiagnosticableTreeMixin implements ChatApiFormat {
  const ChatApiFormatText({final  String? $type}): $type = $type ?? 'text';
  factory ChatApiFormatText.fromJson(Map<String, dynamic> json) => _$ChatApiFormatTextFromJson(json);



@JsonKey(name: 'type')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$ChatApiFormatTextToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ChatApiFormat.text'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatApiFormatText);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ChatApiFormat.text()';
}


}




/// @nodoc
@JsonSerializable()

class ChatApiFormatJsonSchema with DiagnosticableTreeMixin implements ChatApiFormat {
  const ChatApiFormatJsonSchema({required this.name, required final  Map<String, dynamic> schema, this.description, this.strict = false, final  String? $type}): _schema = schema,$type = $type ?? 'json_schema';
  factory ChatApiFormatJsonSchema.fromJson(Map<String, dynamic> json) => _$ChatApiFormatJsonSchemaFromJson(json);

 final  String name;
 final  Map<String, dynamic> _schema;
 Map<String, dynamic> get schema {
  if (_schema is EqualUnmodifiableMapView) return _schema;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_schema);
}

 final  String? description;
@JsonKey() final  bool strict;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of ChatApiFormat
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatApiFormatJsonSchemaCopyWith<ChatApiFormatJsonSchema> get copyWith => _$ChatApiFormatJsonSchemaCopyWithImpl<ChatApiFormatJsonSchema>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatApiFormatJsonSchemaToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ChatApiFormat.jsonSchema'))
    ..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('schema', schema))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('strict', strict));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatApiFormatJsonSchema&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._schema, _schema)&&(identical(other.description, description) || other.description == description)&&(identical(other.strict, strict) || other.strict == strict));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(_schema),description,strict);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ChatApiFormat.jsonSchema(name: $name, schema: $schema, description: $description, strict: $strict)';
}


}

/// @nodoc
abstract mixin class $ChatApiFormatJsonSchemaCopyWith<$Res> implements $ChatApiFormatCopyWith<$Res> {
  factory $ChatApiFormatJsonSchemaCopyWith(ChatApiFormatJsonSchema value, $Res Function(ChatApiFormatJsonSchema) _then) = _$ChatApiFormatJsonSchemaCopyWithImpl;
@useResult
$Res call({
 String name, Map<String, dynamic> schema, String? description, bool strict
});




}
/// @nodoc
class _$ChatApiFormatJsonSchemaCopyWithImpl<$Res>
    implements $ChatApiFormatJsonSchemaCopyWith<$Res> {
  _$ChatApiFormatJsonSchemaCopyWithImpl(this._self, this._then);

  final ChatApiFormatJsonSchema _self;
  final $Res Function(ChatApiFormatJsonSchema) _then;

/// Create a copy of ChatApiFormat
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,Object? schema = null,Object? description = freezed,Object? strict = null,}) {
  return _then(ChatApiFormatJsonSchema(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,schema: null == schema ? _self._schema : schema // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,strict: null == strict ? _self.strict : strict // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
