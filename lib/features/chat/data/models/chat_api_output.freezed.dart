// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_api_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatApiOutput implements DiagnosticableTreeMixin {

 String get id; String get type; String get status; List<ChatApiContent> get content; ChatApiRole get role;
/// Create a copy of ChatApiOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatApiOutputCopyWith<ChatApiOutput> get copyWith => _$ChatApiOutputCopyWithImpl<ChatApiOutput>(this as ChatApiOutput, _$identity);

  /// Serializes this ChatApiOutput to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ChatApiOutput'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('content', content))..add(DiagnosticsProperty('role', role));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatApiOutput&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.content, content)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,status,const DeepCollectionEquality().hash(content),role);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ChatApiOutput(id: $id, type: $type, status: $status, content: $content, role: $role)';
}


}

/// @nodoc
abstract mixin class $ChatApiOutputCopyWith<$Res>  {
  factory $ChatApiOutputCopyWith(ChatApiOutput value, $Res Function(ChatApiOutput) _then) = _$ChatApiOutputCopyWithImpl;
@useResult
$Res call({
 String id, String type, String status, List<ChatApiContent> content, ChatApiRole role
});




}
/// @nodoc
class _$ChatApiOutputCopyWithImpl<$Res>
    implements $ChatApiOutputCopyWith<$Res> {
  _$ChatApiOutputCopyWithImpl(this._self, this._then);

  final ChatApiOutput _self;
  final $Res Function(ChatApiOutput) _then;

/// Create a copy of ChatApiOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = null,Object? status = null,Object? content = null,Object? role = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as List<ChatApiContent>,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as ChatApiRole,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatApiOutput].
extension ChatApiOutputPatterns on ChatApiOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatApiOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatApiOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatApiOutput value)  $default,){
final _that = this;
switch (_that) {
case _ChatApiOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatApiOutput value)?  $default,){
final _that = this;
switch (_that) {
case _ChatApiOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String type,  String status,  List<ChatApiContent> content,  ChatApiRole role)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatApiOutput() when $default != null:
return $default(_that.id,_that.type,_that.status,_that.content,_that.role);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String type,  String status,  List<ChatApiContent> content,  ChatApiRole role)  $default,) {final _that = this;
switch (_that) {
case _ChatApiOutput():
return $default(_that.id,_that.type,_that.status,_that.content,_that.role);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String type,  String status,  List<ChatApiContent> content,  ChatApiRole role)?  $default,) {final _that = this;
switch (_that) {
case _ChatApiOutput() when $default != null:
return $default(_that.id,_that.type,_that.status,_that.content,_that.role);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatApiOutput with DiagnosticableTreeMixin implements ChatApiOutput {
  const _ChatApiOutput({required this.id, required this.type, required this.status, required final  List<ChatApiContent> content, required this.role}): _content = content;
  factory _ChatApiOutput.fromJson(Map<String, dynamic> json) => _$ChatApiOutputFromJson(json);

@override final  String id;
@override final  String type;
@override final  String status;
 final  List<ChatApiContent> _content;
@override List<ChatApiContent> get content {
  if (_content is EqualUnmodifiableListView) return _content;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_content);
}

@override final  ChatApiRole role;

/// Create a copy of ChatApiOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatApiOutputCopyWith<_ChatApiOutput> get copyWith => __$ChatApiOutputCopyWithImpl<_ChatApiOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatApiOutputToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ChatApiOutput'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('content', content))..add(DiagnosticsProperty('role', role));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatApiOutput&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._content, _content)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,status,const DeepCollectionEquality().hash(_content),role);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ChatApiOutput(id: $id, type: $type, status: $status, content: $content, role: $role)';
}


}

/// @nodoc
abstract mixin class _$ChatApiOutputCopyWith<$Res> implements $ChatApiOutputCopyWith<$Res> {
  factory _$ChatApiOutputCopyWith(_ChatApiOutput value, $Res Function(_ChatApiOutput) _then) = __$ChatApiOutputCopyWithImpl;
@override @useResult
$Res call({
 String id, String type, String status, List<ChatApiContent> content, ChatApiRole role
});




}
/// @nodoc
class __$ChatApiOutputCopyWithImpl<$Res>
    implements _$ChatApiOutputCopyWith<$Res> {
  __$ChatApiOutputCopyWithImpl(this._self, this._then);

  final _ChatApiOutput _self;
  final $Res Function(_ChatApiOutput) _then;

/// Create a copy of ChatApiOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,Object? status = null,Object? content = null,Object? role = null,}) {
  return _then(_ChatApiOutput(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self._content : content // ignore: cast_nullable_to_non_nullable
as List<ChatApiContent>,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as ChatApiRole,
  ));
}


}

// dart format on
