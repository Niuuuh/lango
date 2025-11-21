import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/language/domain/entities/language.dart';
import '../../features/topics/domain/topic.dart';
import '../../features/topics/presentation/bloc/topic_cubit.dart';
import '../presentation/cubit/user_cubit.dart';
import '../presentation/cubit/user_state.dart';

extension ContextExtension on BuildContext {
  Language? get targetLanguage => select<UserCubit, Language?>((cubit) {
    return cubit.state.whenOrNull(success: (user) => user.targetLanguage);
  });

  Topic? get topic {
    return read<TopicCubit?>()?.state;
  }
}
