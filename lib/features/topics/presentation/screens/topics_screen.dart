import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/service_locator.dart';
import '../../../language/presentation/widgets/language_button.dart';
import '../bloc/topics_cubit.dart';
import '../widgets/topics_grid.dart';

class TopicsScreen extends StatelessWidget {
  const TopicsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TopicsCubit>(
      create: (context) => getIt<TopicsCubit>()..load(),
      child: Scaffold(
        appBar: AppBar(
          title: LanguageButton(),
        ),
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              TopicsGrid(),
            ],
          ),
        ),
      ),
    );
  }
}
