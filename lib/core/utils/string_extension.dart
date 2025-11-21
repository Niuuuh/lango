extension StringExtension on String {
  String toSentenceCase() {
    if (isEmpty) return this;
    return this[0].toUpperCase() + substring(1).toLowerCase();
  }

  String toSnakeCase() {
    return replaceAllMapped(
      RegExp('(?<=[a-z0-9])[A-Z]'),
      (match) => '_${match.group(0)}',
    ).replaceAll(' ', '_').toLowerCase();
  }

  String toKebabCase() {
    return replaceAllMapped(
      RegExp('(?<=[a-z0-9])[A-Z]'),
      (match) => '-${match.group(0)}',
    ).replaceAll(' ', '-').toLowerCase();
  }
}
