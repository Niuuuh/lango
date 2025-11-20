import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lango/core/presentation/cubit/user_state.dart';

import '../../features/language/domain/entities/language.dart';
import '../presentation/cubit/user_cubit.dart';

extension ContextExtension on BuildContext {
  Language? get targetLanguage => select<UserCubit, Language?>((cubit) {
    return cubit.state.whenOrNull(success: (user) => user.targetLanguage);
  });
}
