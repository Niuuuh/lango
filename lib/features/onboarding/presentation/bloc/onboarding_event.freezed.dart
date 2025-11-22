// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OnboardingEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnboardingEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnboardingEvent()';
}


}

/// @nodoc
class $OnboardingEventCopyWith<$Res>  {
$OnboardingEventCopyWith(OnboardingEvent _, $Res Function(OnboardingEvent) __);
}


/// Adds pattern-matching-related methods to [OnboardingEvent].
extension OnboardingEventPatterns on OnboardingEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( OnboardingStarted value)?  started,TResult Function( OnboardingGreetBackPressed value)?  greetBackPressed,TResult Function( OnboardingSubmitNamePressed value)?  submitNamePressed,TResult Function( OnboardingSearchLanguagePressed value)?  searchLanguagePressed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case OnboardingStarted() when started != null:
return started(_that);case OnboardingGreetBackPressed() when greetBackPressed != null:
return greetBackPressed(_that);case OnboardingSubmitNamePressed() when submitNamePressed != null:
return submitNamePressed(_that);case OnboardingSearchLanguagePressed() when searchLanguagePressed != null:
return searchLanguagePressed(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( OnboardingStarted value)  started,required TResult Function( OnboardingGreetBackPressed value)  greetBackPressed,required TResult Function( OnboardingSubmitNamePressed value)  submitNamePressed,required TResult Function( OnboardingSearchLanguagePressed value)  searchLanguagePressed,}){
final _that = this;
switch (_that) {
case OnboardingStarted():
return started(_that);case OnboardingGreetBackPressed():
return greetBackPressed(_that);case OnboardingSubmitNamePressed():
return submitNamePressed(_that);case OnboardingSearchLanguagePressed():
return searchLanguagePressed(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( OnboardingStarted value)?  started,TResult? Function( OnboardingGreetBackPressed value)?  greetBackPressed,TResult? Function( OnboardingSubmitNamePressed value)?  submitNamePressed,TResult? Function( OnboardingSearchLanguagePressed value)?  searchLanguagePressed,}){
final _that = this;
switch (_that) {
case OnboardingStarted() when started != null:
return started(_that);case OnboardingGreetBackPressed() when greetBackPressed != null:
return greetBackPressed(_that);case OnboardingSubmitNamePressed() when submitNamePressed != null:
return submitNamePressed(_that);case OnboardingSearchLanguagePressed() when searchLanguagePressed != null:
return searchLanguagePressed(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function()?  greetBackPressed,TResult Function( String name)?  submitNamePressed,TResult Function()?  searchLanguagePressed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case OnboardingStarted() when started != null:
return started();case OnboardingGreetBackPressed() when greetBackPressed != null:
return greetBackPressed();case OnboardingSubmitNamePressed() when submitNamePressed != null:
return submitNamePressed(_that.name);case OnboardingSearchLanguagePressed() when searchLanguagePressed != null:
return searchLanguagePressed();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function()  greetBackPressed,required TResult Function( String name)  submitNamePressed,required TResult Function()  searchLanguagePressed,}) {final _that = this;
switch (_that) {
case OnboardingStarted():
return started();case OnboardingGreetBackPressed():
return greetBackPressed();case OnboardingSubmitNamePressed():
return submitNamePressed(_that.name);case OnboardingSearchLanguagePressed():
return searchLanguagePressed();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function()?  greetBackPressed,TResult? Function( String name)?  submitNamePressed,TResult? Function()?  searchLanguagePressed,}) {final _that = this;
switch (_that) {
case OnboardingStarted() when started != null:
return started();case OnboardingGreetBackPressed() when greetBackPressed != null:
return greetBackPressed();case OnboardingSubmitNamePressed() when submitNamePressed != null:
return submitNamePressed(_that.name);case OnboardingSearchLanguagePressed() when searchLanguagePressed != null:
return searchLanguagePressed();case _:
  return null;

}
}

}

/// @nodoc


class OnboardingStarted implements OnboardingEvent {
  const OnboardingStarted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnboardingStarted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnboardingEvent.started()';
}


}




/// @nodoc


class OnboardingGreetBackPressed implements OnboardingEvent {
  const OnboardingGreetBackPressed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnboardingGreetBackPressed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnboardingEvent.greetBackPressed()';
}


}




/// @nodoc


class OnboardingSubmitNamePressed implements OnboardingEvent {
  const OnboardingSubmitNamePressed(this.name);
  

 final  String name;

/// Create a copy of OnboardingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnboardingSubmitNamePressedCopyWith<OnboardingSubmitNamePressed> get copyWith => _$OnboardingSubmitNamePressedCopyWithImpl<OnboardingSubmitNamePressed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnboardingSubmitNamePressed&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'OnboardingEvent.submitNamePressed(name: $name)';
}


}

/// @nodoc
abstract mixin class $OnboardingSubmitNamePressedCopyWith<$Res> implements $OnboardingEventCopyWith<$Res> {
  factory $OnboardingSubmitNamePressedCopyWith(OnboardingSubmitNamePressed value, $Res Function(OnboardingSubmitNamePressed) _then) = _$OnboardingSubmitNamePressedCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class _$OnboardingSubmitNamePressedCopyWithImpl<$Res>
    implements $OnboardingSubmitNamePressedCopyWith<$Res> {
  _$OnboardingSubmitNamePressedCopyWithImpl(this._self, this._then);

  final OnboardingSubmitNamePressed _self;
  final $Res Function(OnboardingSubmitNamePressed) _then;

/// Create a copy of OnboardingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(OnboardingSubmitNamePressed(
null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class OnboardingSearchLanguagePressed implements OnboardingEvent {
  const OnboardingSearchLanguagePressed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnboardingSearchLanguagePressed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnboardingEvent.searchLanguagePressed()';
}


}




// dart format on
