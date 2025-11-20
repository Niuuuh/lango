// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'language_search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LanguageSearchState implements DiagnosticableTreeMixin {

 String get query; List<Language> get result;
/// Create a copy of LanguageSearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LanguageSearchStateCopyWith<LanguageSearchState> get copyWith => _$LanguageSearchStateCopyWithImpl<LanguageSearchState>(this as LanguageSearchState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'LanguageSearchState'))
    ..add(DiagnosticsProperty('query', query))..add(DiagnosticsProperty('result', result));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LanguageSearchState&&(identical(other.query, query) || other.query == query)&&const DeepCollectionEquality().equals(other.result, result));
}


@override
int get hashCode => Object.hash(runtimeType,query,const DeepCollectionEquality().hash(result));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'LanguageSearchState(query: $query, result: $result)';
}


}

/// @nodoc
abstract mixin class $LanguageSearchStateCopyWith<$Res>  {
  factory $LanguageSearchStateCopyWith(LanguageSearchState value, $Res Function(LanguageSearchState) _then) = _$LanguageSearchStateCopyWithImpl;
@useResult
$Res call({
 String query, List<Language> result
});




}
/// @nodoc
class _$LanguageSearchStateCopyWithImpl<$Res>
    implements $LanguageSearchStateCopyWith<$Res> {
  _$LanguageSearchStateCopyWithImpl(this._self, this._then);

  final LanguageSearchState _self;
  final $Res Function(LanguageSearchState) _then;

/// Create a copy of LanguageSearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,Object? result = null,}) {
  return _then(_self.copyWith(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,result: null == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as List<Language>,
  ));
}

}


/// Adds pattern-matching-related methods to [LanguageSearchState].
extension LanguageSearchStatePatterns on LanguageSearchState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LanguageSearchState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LanguageSearchState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LanguageSearchState value)  $default,){
final _that = this;
switch (_that) {
case _LanguageSearchState():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LanguageSearchState value)?  $default,){
final _that = this;
switch (_that) {
case _LanguageSearchState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String query,  List<Language> result)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LanguageSearchState() when $default != null:
return $default(_that.query,_that.result);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String query,  List<Language> result)  $default,) {final _that = this;
switch (_that) {
case _LanguageSearchState():
return $default(_that.query,_that.result);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String query,  List<Language> result)?  $default,) {final _that = this;
switch (_that) {
case _LanguageSearchState() when $default != null:
return $default(_that.query,_that.result);case _:
  return null;

}
}

}

/// @nodoc


class _LanguageSearchState with DiagnosticableTreeMixin implements LanguageSearchState {
  const _LanguageSearchState({required this.query, required final  List<Language> result}): _result = result;
  

@override final  String query;
 final  List<Language> _result;
@override List<Language> get result {
  if (_result is EqualUnmodifiableListView) return _result;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_result);
}


/// Create a copy of LanguageSearchState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LanguageSearchStateCopyWith<_LanguageSearchState> get copyWith => __$LanguageSearchStateCopyWithImpl<_LanguageSearchState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'LanguageSearchState'))
    ..add(DiagnosticsProperty('query', query))..add(DiagnosticsProperty('result', result));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LanguageSearchState&&(identical(other.query, query) || other.query == query)&&const DeepCollectionEquality().equals(other._result, _result));
}


@override
int get hashCode => Object.hash(runtimeType,query,const DeepCollectionEquality().hash(_result));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'LanguageSearchState(query: $query, result: $result)';
}


}

/// @nodoc
abstract mixin class _$LanguageSearchStateCopyWith<$Res> implements $LanguageSearchStateCopyWith<$Res> {
  factory _$LanguageSearchStateCopyWith(_LanguageSearchState value, $Res Function(_LanguageSearchState) _then) = __$LanguageSearchStateCopyWithImpl;
@override @useResult
$Res call({
 String query, List<Language> result
});




}
/// @nodoc
class __$LanguageSearchStateCopyWithImpl<$Res>
    implements _$LanguageSearchStateCopyWith<$Res> {
  __$LanguageSearchStateCopyWithImpl(this._self, this._then);

  final _LanguageSearchState _self;
  final $Res Function(_LanguageSearchState) _then;

/// Create a copy of LanguageSearchState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? query = null,Object? result = null,}) {
  return _then(_LanguageSearchState(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,result: null == result ? _self._result : result // ignore: cast_nullable_to_non_nullable
as List<Language>,
  ));
}


}

// dart format on
