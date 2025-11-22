import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/theme.dart';
import '../bloc/language_search_cubit.dart';
import '../bloc/language_search_state.dart';

class LanguageSearchField extends StatelessWidget {
  const LanguageSearchField({
    super.key,
    this.onTap,
  });

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageSearchCubit, LanguageSearchState>(
      builder: (context, state) {
        return TextField(
          style: TextStyle(
            color: LingoColors.onSurfaceContainer,
            fontSize: 24,
          ),
          decoration: InputDecoration(
            hintText: 'Search language',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40),
              borderSide: BorderSide.none,
            ),
            prefixIcon: Padding(
              padding: EdgeInsets.only(left: 20, right: 6),
              child: Icon(Icons.search, size: 30),
            ),
          ),
          autofocus: onTap == null,
          textInputAction: TextInputAction.search,
          onTap: onTap,
          onChanged: (query) {
            context.read<LanguageSearchCubit>().search(query);
          },
        );
      },
    );
  }
}
