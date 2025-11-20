import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lango/app/router.dart';
import 'package:lango/core/utils/context_extension.dart';
import 'package:lango/features/history/presentation/cubit/chat_history_cubit.dart';
import 'package:lango/features/history/presentation/cubit/chat_history_state.dart';

import '../../../topics/domain/topic.dart';
import '../../domain/entities/chat_history_entry.dart';

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
            return ListTile(
              title: Text(entry.date.toIso8601String()),
              onTap: () => context.goToHistory(topic, entry),
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
