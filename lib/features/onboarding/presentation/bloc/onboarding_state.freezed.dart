// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OnboardingState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnboardingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnboardingState()';
}


}

/// @nodoc
class $OnboardingStateCopyWith<$Res>  {
$OnboardingStateCopyWith(OnboardingState _, $Res Function(OnboardingState) __);
}


/// Adds pattern-matching-related methods to [OnboardingState].
extension OnboardingStatePatterns on OnboardingState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( OnboardingInitial value)?  initial,TResult Function( OnboardingGreeting value)?  greeting,TResult Function( OnboardingAskingName value)?  askingName,TResult Function( OnboardingSubmittingName value)?  submittingName,TResult Function( OnboardingAskingLanguage value)?  askingLanguage,TResult Function( OnboardingSuccess value)?  success,required TResult orElse(),}){
final _that = this;
switch (_that) {
case OnboardingInitial() when initial != null:
return initial(_that);case OnboardingGreeting() when greeting != null:
return greeting(_that);case OnboardingAskingName() when askingName != null:
return askingName(_that);case OnboardingSubmittingName() when submittingName != null:
return submittingName(_that);case OnboardingAskingLanguage() when askingLanguage != null:
return askingLanguage(_that);case OnboardingSuccess() when success != null:
return success(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( OnboardingInitial value)  initial,required TResult Function( OnboardingGreeting value)  greeting,required TResult Function( OnboardingAskingName value)  askingName,required TResult Function( OnboardingSubmittingName value)  submittingName,required TResult Function( OnboardingAskingLanguage value)  askingLanguage,required TResult Function( OnboardingSuccess value)  success,}){
final _that = this;
switch (_that) {
case OnboardingInitial():
return initial(_that);case OnboardingGreeting():
return greeting(_that);case OnboardingAskingName():
return askingName(_that);case OnboardingSubmittingName():
return submittingName(_that);case OnboardingAskingLanguage():
return askingLanguage(_that);case OnboardingSuccess():
return success(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( OnboardingInitial value)?  initial,TResult? Function( OnboardingGreeting value)?  greeting,TResult? Function( OnboardingAskingName value)?  askingName,TResult? Function( OnboardingSubmittingName value)?  submittingName,TResult? Function( OnboardingAskingLanguage value)?  askingLanguage,TResult? Function( OnboardingSuccess value)?  success,}){
final _that = this;
switch (_that) {
case OnboardingInitial() when initial != null:
return initial(_that);case OnboardingGreeting() when greeting != null:
return greeting(_that);case OnboardingAskingName() when askingName != null:
return askingName(_that);case OnboardingSubmittingName() when submittingName != null:
return submittingName(_that);case OnboardingAskingLanguage() when askingLanguage != null:
return askingLanguage(_that);case OnboardingSuccess() when success != null:
return success(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  greeting,TResult Function()?  askingName,TResult Function()?  submittingName,TResult Function()?  askingLanguage,TResult Function()?  success,required TResult orElse(),}) {final _that = this;
switch (_that) {
case OnboardingInitial() when initial != null:
return initial();case OnboardingGreeting() when greeting != null:
return greeting();case OnboardingAskingName() when askingName != null:
return askingName();case OnboardingSubmittingName() when submittingName != null:
return submittingName();case OnboardingAskingLanguage() when askingLanguage != null:
return askingLanguage();case OnboardingSuccess() when success != null:
return success();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  greeting,required TResult Function()  askingName,required TResult Function()  submittingName,required TResult Function()  askingLanguage,required TResult Function()  success,}) {final _that = this;
switch (_that) {
case OnboardingInitial():
return initial();case OnboardingGreeting():
return greeting();case OnboardingAskingName():
return askingName();case OnboardingSubmittingName():
return submittingName();case OnboardingAskingLanguage():
return askingLanguage();case OnboardingSuccess():
return success();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  greeting,TResult? Function()?  askingName,TResult? Function()?  submittingName,TResult? Function()?  askingLanguage,TResult? Function()?  success,}) {final _that = this;
switch (_that) {
case OnboardingInitial() when initial != null:
return initial();case OnboardingGreeting() when greeting != null:
return greeting();case OnboardingAskingName() when askingName != null:
return askingName();case OnboardingSubmittingName() when submittingName != null:
return submittingName();case OnboardingAskingLanguage() when askingLanguage != null:
return askingLanguage();case OnboardingSuccess() when success != null:
return success();case _:
  return null;

}
}

}

/// @nodoc


class OnboardingInitial implements OnboardingState {
  const OnboardingInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnboardingInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnboardingState.initial()';
}


}




/// @nodoc


class OnboardingGreeting implements OnboardingState {
  const OnboardingGreeting();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnboardingGreeting);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnboardingState.greeting()';
}


}




/// @nodoc


class OnboardingAskingName implements OnboardingState {
  const OnboardingAskingName();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnboardingAskingName);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnboardingState.askingName()';
}


}




/// @nodoc


class OnboardingSubmittingName implements OnboardingState {
  const OnboardingSubmittingName();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnboardingSubmittingName);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnboardingState.submittingName()';
}


}




/// @nodoc


class OnboardingAskingLanguage implements OnboardingState {
  const OnboardingAskingLanguage();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnboardingAskingLanguage);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnboardingState.askingLanguage()';
}


}




/// @nodoc


class OnboardingSuccess implements OnboardingState {
  const OnboardingSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnboardingSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnboardingState.success()';
}


}




// dart format on
