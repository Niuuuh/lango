// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'typing_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TypingEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TypingEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TypingEvent()';
}


}

/// @nodoc
class $TypingEventCopyWith<$Res>  {
$TypingEventCopyWith(TypingEvent _, $Res Function(TypingEvent) __);
}


/// Adds pattern-matching-related methods to [TypingEvent].
extension TypingEventPatterns on TypingEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( TypingStarted value)?  started,TResult Function( TypingChanged value)?  changed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case TypingStarted() when started != null:
return started(_that);case TypingChanged() when changed != null:
return changed(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( TypingStarted value)  started,required TResult Function( TypingChanged value)  changed,}){
final _that = this;
switch (_that) {
case TypingStarted():
return started(_that);case TypingChanged():
return changed(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( TypingStarted value)?  started,TResult? Function( TypingChanged value)?  changed,}){
final _that = this;
switch (_that) {
case TypingStarted() when started != null:
return started(_that);case TypingChanged() when changed != null:
return changed(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( String text)?  changed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case TypingStarted() when started != null:
return started();case TypingChanged() when changed != null:
return changed(_that.text);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( String text)  changed,}) {final _that = this;
switch (_that) {
case TypingStarted():
return started();case TypingChanged():
return changed(_that.text);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( String text)?  changed,}) {final _that = this;
switch (_that) {
case TypingStarted() when started != null:
return started();case TypingChanged() when changed != null:
return changed(_that.text);case _:
  return null;

}
}

}

/// @nodoc


class TypingStarted implements TypingEvent {
  const TypingStarted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TypingStarted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TypingEvent.started()';
}


}




/// @nodoc


class TypingChanged implements TypingEvent {
  const TypingChanged(this.text);
  

 final  String text;

/// Create a copy of TypingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TypingChangedCopyWith<TypingChanged> get copyWith => _$TypingChangedCopyWithImpl<TypingChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TypingChanged&&(identical(other.text, text) || other.text == text));
}


@override
int get hashCode => Object.hash(runtimeType,text);

@override
String toString() {
  return 'TypingEvent.changed(text: $text)';
}


}

/// @nodoc
abstract mixin class $TypingChangedCopyWith<$Res> implements $TypingEventCopyWith<$Res> {
  factory $TypingChangedCopyWith(TypingChanged value, $Res Function(TypingChanged) _then) = _$TypingChangedCopyWithImpl;
@useResult
$Res call({
 String text
});




}
/// @nodoc
class _$TypingChangedCopyWithImpl<$Res>
    implements $TypingChangedCopyWith<$Res> {
  _$TypingChangedCopyWithImpl(this._self, this._then);

  final TypingChanged _self;
  final $Res Function(TypingChanged) _then;

/// Create a copy of TypingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? text = null,}) {
  return _then(TypingChanged(
null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
