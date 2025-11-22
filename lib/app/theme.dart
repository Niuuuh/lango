import 'package:flutter/material.dart';

abstract class LingoColors {
  static const secondary = Color(0xff59c9e8);
  static const onSecondary = Color(0xff000000);
  static const surface = Color(0xfffff3de);
  static const onSurface = Color(0xff4c3000);
  static const onSurfaceVariant = Color(0xff545049);
  static const surfaceContainer = Color(0xffeedf9b);
  static const onSurfaceContainer = Color(0xff4c3000);
  static const onSurfaceContainerVariant = Color(0xff9e7110);
  static const primaryContainer = Color(0xffffffff);
  static const onPrimaryContainer = Color(0xff000000);
  static const secondaryContainer = Color(0xffd5e9ed);
  static const onSecondaryContainer = Color(0xff000000);
  static const shadow = Color(0xff454545);
}

ThemeData theme() {
  final colorScheme = ColorScheme.light(
    primary: LingoColors.secondary,
    onPrimary: LingoColors.onSecondary,
    secondary: LingoColors.secondary,
    onSecondary: LingoColors.onSecondary,
    surface: LingoColors.surface,
    onSurface: LingoColors.onSurface,
    onSurfaceVariant: LingoColors.onSurfaceVariant,
    surfaceContainer: LingoColors.surfaceContainer,
    primaryContainer: LingoColors.primaryContainer,
    onPrimaryContainer: LingoColors.onPrimaryContainer,
    secondaryContainer: LingoColors.secondaryContainer,
    onSecondaryContainer: LingoColors.onSecondaryContainer,
    shadow: LingoColors.shadow,
  );
  return ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    colorScheme: colorScheme,
    fontFamily: "Itim",
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: LingoColors.onSurfaceContainer,
    ),
    inputDecorationTheme: InputDecorationThemeData(
      filled: true,
      fillColor: LingoColors.surfaceContainer,
      hintStyle: TextStyle(
        color: LingoColors.onSurfaceContainerVariant,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide.none,
      ),
      // focusedBorder: OutlineInputBorder(
      //   borderRadius: BorderRadius.circular(14),
      //   borderSide: BorderSide(
      //     color: LingoColors.onSurfaceContainerVariant,
      //     width: 2,
      //   ),
      // ),
      prefixIconColor: LingoColors.onSurfaceContainerVariant,
      suffixIconColor: LingoColors.onSurfaceContainerVariant,
    ),
  );
}
