// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SessionSummary {

 String get name; String get vibe; String get cefr; String get reason; List<String> get strengths; List<String> get weaknesses; String get tip;
/// Create a copy of SessionSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SessionSummaryCopyWith<SessionSummary> get copyWith => _$SessionSummaryCopyWithImpl<SessionSummary>(this as SessionSummary, _$identity);

  /// Serializes this SessionSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionSummary&&(identical(other.name, name) || other.name == name)&&(identical(other.vibe, vibe) || other.vibe == vibe)&&(identical(other.cefr, cefr) || other.cefr == cefr)&&(identical(other.reason, reason) || other.reason == reason)&&const DeepCollectionEquality().equals(other.strengths, strengths)&&const DeepCollectionEquality().equals(other.weaknesses, weaknesses)&&(identical(other.tip, tip) || other.tip == tip));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,vibe,cefr,reason,const DeepCollectionEquality().hash(strengths),const DeepCollectionEquality().hash(weaknesses),tip);

@override
String toString() {
  return 'SessionSummary(name: $name, vibe: $vibe, cefr: $cefr, reason: $reason, strengths: $strengths, weaknesses: $weaknesses, tip: $tip)';
}


}

/// @nodoc
abstract mixin class $SessionSummaryCopyWith<$Res>  {
  factory $SessionSummaryCopyWith(SessionSummary value, $Res Function(SessionSummary) _then) = _$SessionSummaryCopyWithImpl;
@useResult
$Res call({
 String name, String vibe, String cefr, String reason, List<String> strengths, List<String> weaknesses, String tip
});




}
/// @nodoc
class _$SessionSummaryCopyWithImpl<$Res>
    implements $SessionSummaryCopyWith<$Res> {
  _$SessionSummaryCopyWithImpl(this._self, this._then);

  final SessionSummary _self;
  final $Res Function(SessionSummary) _then;

/// Create a copy of SessionSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? vibe = null,Object? cefr = null,Object? reason = null,Object? strengths = null,Object? weaknesses = null,Object? tip = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,vibe: null == vibe ? _self.vibe : vibe // ignore: cast_nullable_to_non_nullable
as String,cefr: null == cefr ? _self.cefr : cefr // ignore: cast_nullable_to_non_nullable
as String,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,strengths: null == strengths ? _self.strengths : strengths // ignore: cast_nullable_to_non_nullable
as List<String>,weaknesses: null == weaknesses ? _self.weaknesses : weaknesses // ignore: cast_nullable_to_non_nullable
as List<String>,tip: null == tip ? _self.tip : tip // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SessionSummary].
extension SessionSummaryPatterns on SessionSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SessionSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SessionSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SessionSummary value)  $default,){
final _that = this;
switch (_that) {
case _SessionSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SessionSummary value)?  $default,){
final _that = this;
switch (_that) {
case _SessionSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String vibe,  String cefr,  String reason,  List<String> strengths,  List<String> weaknesses,  String tip)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SessionSummary() when $default != null:
return $default(_that.name,_that.vibe,_that.cefr,_that.reason,_that.strengths,_that.weaknesses,_that.tip);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String vibe,  String cefr,  String reason,  List<String> strengths,  List<String> weaknesses,  String tip)  $default,) {final _that = this;
switch (_that) {
case _SessionSummary():
return $default(_that.name,_that.vibe,_that.cefr,_that.reason,_that.strengths,_that.weaknesses,_that.tip);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String vibe,  String cefr,  String reason,  List<String> strengths,  List<String> weaknesses,  String tip)?  $default,) {final _that = this;
switch (_that) {
case _SessionSummary() when $default != null:
return $default(_that.name,_that.vibe,_that.cefr,_that.reason,_that.strengths,_that.weaknesses,_that.tip);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SessionSummary implements SessionSummary {
  const _SessionSummary({required this.name, required this.vibe, required this.cefr, required this.reason, required final  List<String> strengths, required final  List<String> weaknesses, required this.tip}): _strengths = strengths,_weaknesses = weaknesses;
  factory _SessionSummary.fromJson(Map<String, dynamic> json) => _$SessionSummaryFromJson(json);

@override final  String name;
@override final  String vibe;
@override final  String cefr;
@override final  String reason;
 final  List<String> _strengths;
@override List<String> get strengths {
  if (_strengths is EqualUnmodifiableListView) return _strengths;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_strengths);
}

 final  List<String> _weaknesses;
@override List<String> get weaknesses {
  if (_weaknesses is EqualUnmodifiableListView) return _weaknesses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_weaknesses);
}

@override final  String tip;

/// Create a copy of SessionSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SessionSummaryCopyWith<_SessionSummary> get copyWith => __$SessionSummaryCopyWithImpl<_SessionSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SessionSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SessionSummary&&(identical(other.name, name) || other.name == name)&&(identical(other.vibe, vibe) || other.vibe == vibe)&&(identical(other.cefr, cefr) || other.cefr == cefr)&&(identical(other.reason, reason) || other.reason == reason)&&const DeepCollectionEquality().equals(other._strengths, _strengths)&&const DeepCollectionEquality().equals(other._weaknesses, _weaknesses)&&(identical(other.tip, tip) || other.tip == tip));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,vibe,cefr,reason,const DeepCollectionEquality().hash(_strengths),const DeepCollectionEquality().hash(_weaknesses),tip);

@override
String toString() {
  return 'SessionSummary(name: $name, vibe: $vibe, cefr: $cefr, reason: $reason, strengths: $strengths, weaknesses: $weaknesses, tip: $tip)';
}


}

/// @nodoc
abstract mixin class _$SessionSummaryCopyWith<$Res> implements $SessionSummaryCopyWith<$Res> {
  factory _$SessionSummaryCopyWith(_SessionSummary value, $Res Function(_SessionSummary) _then) = __$SessionSummaryCopyWithImpl;
@override @useResult
$Res call({
 String name, String vibe, String cefr, String reason, List<String> strengths, List<String> weaknesses, String tip
});




}
/// @nodoc
class __$SessionSummaryCopyWithImpl<$Res>
    implements _$SessionSummaryCopyWith<$Res> {
  __$SessionSummaryCopyWithImpl(this._self, this._then);

  final _SessionSummary _self;
  final $Res Function(_SessionSummary) _then;

/// Create a copy of SessionSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? vibe = null,Object? cefr = null,Object? reason = null,Object? strengths = null,Object? weaknesses = null,Object? tip = null,}) {
  return _then(_SessionSummary(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,vibe: null == vibe ? _self.vibe : vibe // ignore: cast_nullable_to_non_nullable
as String,cefr: null == cefr ? _self.cefr : cefr // ignore: cast_nullable_to_non_nullable
as String,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,strengths: null == strengths ? _self._strengths : strengths // ignore: cast_nullable_to_non_nullable
as List<String>,weaknesses: null == weaknesses ? _self._weaknesses : weaknesses // ignore: cast_nullable_to_non_nullable
as List<String>,tip: null == tip ? _self.tip : tip // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
