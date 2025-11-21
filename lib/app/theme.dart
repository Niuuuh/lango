import 'package:flutter/material.dart';

abstract class LingoColors {
  static const primary = Color(0xff59c9e8);
  static const onPrimary = Color(0xff000000);
  static const surface = Color(0xfffff3de);
  static const onSurface = Color(0xff4c3000);
  static const onSurfaceVariant = Color(0xff545049);
  static const surfaceContainer = Color(0xffffffff);
  static const onSurfaceContainer = Color(0xffffffff);
  static const primaryContainer = Color(0xffeedf9b);
  static const onPrimaryContainer = Color(0xff4c3000);
  static const onPrimaryContainerVariant = Color(0xff9e7110);
  static const secondaryContainer = Color(0xffd5e9ed);
  static const onSecondaryContainer = Color(0xff000000);
}

ThemeData theme() {
  final colorScheme = ColorScheme.light(
    primary: LingoColors.primary,
    onPrimary: LingoColors.onPrimary,
    surface: LingoColors.surface,
    onSurface: LingoColors.onSurface,
    onSurfaceVariant: LingoColors.onSurfaceVariant,
    primaryContainer: LingoColors.primaryContainer,
    onPrimaryContainer: LingoColors.onPrimaryContainer,
    secondaryContainer: LingoColors.secondaryContainer,
    onSecondaryContainer: LingoColors.onSecondaryContainer,
  );
  return ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    colorScheme: colorScheme,
  ).copyWith(
  );
}
