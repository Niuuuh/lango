import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

class SliverGroupedList<E, G> extends StatelessWidget {
  const SliverGroupedList({
    super.key,
    required this.items,
    required this.groupBy,
    required this.labelBuilder,
    required this.itemBuilder,
  });

  final List<E> items;
  final G Function(E item) groupBy;
  final Widget Function(BuildContext context, G group) labelBuilder;
  final Widget Function(BuildContext context, E item) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final groupedItems = items.groupListsBy(groupBy);
    final flattenedGroups = groupedItems.entries
        .expand((group) => [group.key, ...group.value])
        .toList();

    return SliverList.builder(
      itemCount: flattenedGroups.length,
      itemBuilder: (context, index) {
        final element = flattenedGroups[index];
        return switch (element) {
          final G group => labelBuilder(context, group),
          final E item => itemBuilder(context, item),
          _ => throw UnimplementedError(),
        };
      },
    );
  }
}
