extension StringExtension on String {
  String toTitleCase() {
    return replaceAllMapped(
      RegExp(r'([A-Z])'),
      (match) => ' ${match.group(0)}',
    ).split(' ').map((word) {
      if (word.isEmpty) return word;
      return word[0].toUpperCase() + word.substring(1).toLowerCase();
    }).join(' ').trim();
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
