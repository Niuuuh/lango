import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/service_locator.dart';
import '../../../../app/theme.dart';
import '../bloc/language_search_cubit.dart';
import '../widgets/language_list.dart';
import '../widgets/language_search_field.dart';

class LanguageSearchScreen extends StatelessWidget {
  const LanguageSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<LanguageSearchCubit>(),
      child: Scaffold(
        backgroundColor: Color.lerp(
          LingoColors.surface,
          LingoColors.surfaceContainer,
          0.5,
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              spacing: 12,
              children: [
                LanguageSearchField(),
                Expanded(child: LanguageList()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
