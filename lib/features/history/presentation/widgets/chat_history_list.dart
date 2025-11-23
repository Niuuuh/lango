import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timeago/timeago.dart' as timeago;

import '../../../../app/router.dart';
import '../../../../core/presentation/widgets/button.dart';
import '../../../../core/utils/context_extension.dart';
import '../../../topics/domain/topic.dart';
import '../../domain/entities/chat_history_entry.dart';
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
        final entries = context.select<ChatHistoryCubit, List<ChatHistoryEntry>>((cubit) {
          return cubit.select(language, topic);
        });
        return SliverList.builder(
          itemCount: entries.length,
          itemBuilder: (context, index) {
            final entry = entries[index];
            return Button.primary(
              elevation: 2,
              onPressed: () => context.goToHistory(topic, entry),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Title'),
                  Text(timeago.format(entry.date)),
                ],
              ),
            );
          },
        );
      },
      orElse: () {
        return SliverList.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return SizedBox(
              width: double.infinity,
              height: 50,
              child: Material(
                color: Colors.grey,
              ),
            );
          },
        );
      },
    );
  }
}
