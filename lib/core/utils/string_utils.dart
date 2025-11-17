extension StringUtils on String {
  String toSnakeCase() {
    return replaceAllMapped(
      RegExp('(?<=[a-z0-9])[A-Z]'),
          (match) => '_${match.group(0)}',
    ).replaceAll(' ', '_').toLowerCase();
  }
}
