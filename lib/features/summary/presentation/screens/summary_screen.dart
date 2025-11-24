import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/service_locator.dart';
import '../../../../core/presentation/widgets/button.dart';
import '../../../../core/utils/context_extension.dart';
import '../../../chat/domain/entities/chat_message.dart';
import '../bloc/summary_bloc.dart';
import '../bloc/summary_event.dart';
import '../bloc/summary_state.dart';
import '../widgets/summary_details.dart';

class SummaryScreen extends StatelessWidget {
  const SummaryScreen({
    super.key,
    required this.messages,
  });

  final List<ChatMessage> messages;

  @override
  Widget build(BuildContext context) {
    final user = context.user!;
    final topic = context.topic!;
    return BlocProvider(
      create: (context) => getIt<SummaryBloc>()..add(
        SummaryEvent.started(
          user: user,
          topic: topic,
          messages: messages,
        ),
      ),
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: BlocBuilder<SummaryBloc, SummaryState>(
              builder: (context, state) {
                return Column(
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        child: state.maybeWhen(
                          success: (summary) {
                            return SummaryDetails(summary: summary);
                          },
                          orElse: () {
                            return SummaryDetailsSkeleton();
                          },
                        ),
                      ),
                    ),
                    if (state is SummarySuccess)
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 24),
                        child: Button.primary(
                          width: double.infinity,
                          onPressed: () => context.pop(),
                          child: Center(child: Text("Continue")),
                        ),
                      ),
                  ],
                );
              }
            ),
          ),
        ),
      ),
    );
  }
}
