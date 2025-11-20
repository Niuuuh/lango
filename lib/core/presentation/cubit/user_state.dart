import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/user.dart';

part 'user_state.freezed.dart';

@freezed
sealed class UserState with _$UserState {
  const UserState._();

  const factory UserState.initial() = UserInitial;

  const factory UserState.loading() = UserLoading;

  const factory UserState.success(User user) = UserSuccess;

  const factory UserState.failure(String message) = UserFailure;
}
