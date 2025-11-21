import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/language_search_cubit.dart';
import '../bloc/language_search_state.dart';

class LanguageSearchField extends StatelessWidget {
  const LanguageSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: BlocBuilder<LanguageSearchCubit, LanguageSearchState>(
        builder: (context, state) {
          return TextField(
            decoration: const InputDecoration(
              hintText: 'Search language...',
              prefixIcon: Icon(Icons.search),
            ),
            onChanged: (query) {
              context.read<LanguageSearchCubit>().search(query);
            },
          );
        },
      ),
    );
  }
}
