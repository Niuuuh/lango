import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/router.dart';
import '../../../../core/presentation/cubit/user_cubit.dart';
import '../../../../core/utils/string_utils.dart';
import '../bloc/language_search_cubit.dart';
import '../bloc/language_search_state.dart';
import 'language_icon.dart';

class LanguageList extends StatelessWidget {
  const LanguageList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageSearchCubit, LanguageSearchState>(
      builder: (context, state) {
        return SliverList.builder(
          itemCount: state.result.length,
          itemBuilder: (context, index) {
            final language = state.result[index];
            return ListTile(
              leading: LanguageIcon(language: language),
              title: Text(language.name.toSentenceCase()),
              onTap: () async {
                await context.read<UserCubit>().updateLanguage(language);
                context.goToTopics();
              },
            );
          },
        );
      }
    );
  }
}
