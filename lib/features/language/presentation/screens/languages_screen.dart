import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/service_locator.dart';
import '../bloc/language_search_cubit.dart';
import '../widgets/language_list.dart';
import '../widgets/language_search_field.dart';

class LanguagesScreen extends StatelessWidget {
  const LanguagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<LanguageSearchCubit>(),
      child: Scaffold(
        appBar: AppBar(),
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              LanguageSearchField(),
              LanguageList(),
            ],
          ),
        ),
      ),
    );
  }
}
