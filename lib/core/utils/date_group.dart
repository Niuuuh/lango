enum DateGroup {
  today,
  yesterday,
  thisWeek,
  thisMonth,
  older,
}

extension DateGroupExtension on DateTime {
  DateGroup get group {
    final now = DateTime.now();
    final difference = now.difference(this);

    if (difference.inDays == 0) {
      return DateGroup.today;
    } else if (difference.inDays == 1) {
      return DateGroup.yesterday;
    } else if (difference.inDays < 7) {
      return DateGroup.thisWeek;
    } else if (difference.inDays < 30) {
      return DateGroup.thisMonth;
    } else {
      return DateGroup.older;
    }
  }
}
