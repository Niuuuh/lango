import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/router.dart';
import '../../../../app/theme.dart';
import '../../../../core/presentation/widgets/button.dart';
import '../../../../core/presentation/widgets/sliver_grouped_list.dart';
import '../../../../core/utils/context_extension.dart';
import '../../../../core/utils/date_group.dart';
import '../../../../core/utils/string_extension.dart';
import '../../../topics/domain/topic.dart';
import '../cubit/chat_history_cubit.dart';
import '../cubit/chat_history_state.dart';

class ChatHistoryList extends StatelessWidget {
  const ChatHistoryList({super.key, required this.topic});

  final Topic topic;

  @override
  Widget build(BuildContext context) {
    final language = context.targetLanguage!;
    final state = context.watch<ChatHistoryCubit>().state;
    return state.maybeWhen(
      success: (history) {
        final entries = context.read<ChatHistoryCubit>()
            .select(language, topic);
        return SliverGroupedList(
          items: entries,
          groupBy: (entry) => entry.date.group,
          labelBuilder: (context, group) {
            return Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                group.name.toSentenceCase(),
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            );
          },
          itemBuilder: (context, item) {
            return Padding(
              padding: EdgeInsets.only(bottom: 8),
              child: Button.primary(
                elevation: 2,
                onPressed: () => context.goToHistory(topic, item),
                child: Text('Title'),
              ),
            );
          },
        );
      },
      orElse: () {
        return SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 50,
                height: 20,
                margin: EdgeInsets.symmetric(horizontal: 8, vertical: 14),
                decoration: ShapeDecoration(
                  color: LingoColors.secondaryContainer,
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                )
              ),
              Container(
                height: 61,
                margin: EdgeInsets.only(bottom: 8),
                decoration: ShapeDecoration(
                  color: LingoColors.secondaryContainer,
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                )
              ),
            ],
          ),
        );
      },
    );
  }
}
