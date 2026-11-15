import 'package:flutter/material.dart';

import '../design/tokens.g.dart';
import 'page_transitions.dart';

/// The app theme, built from `tokens.g.dart` only (Global rule: no hard-coded
/// colour or durations in `lib/`).
///
/// Type: Onest for everything, Fraunces for the main display voice. Body text
/// is 16 sp; the smallest metadata label is 12 sp.
ThemeData buildSolaceTheme() {
  final scheme = ColorScheme.dark(
    surface: hero_base,
    onSurface: heading,
    primary: accent,
    onPrimary: action_inverse_fg,
    secondary: bot_sage,
    onError: bot_butter,
    outline: hairline_strong,
  );

  final base = ThemeData(
    useMaterial3: true,
    fontFamily: 'Onest',
    colorScheme: scheme,
  );

  const bodyStyle = TextStyle(
    fontFamily: 'Onest',
    fontSize: 16,
    height: 1.5,
    color: heading,
  );

  final textTheme = base.textTheme.copyWith(
    displaySmall: const TextStyle(
      fontFamily: 'Fraunces',
      fontSize: 32,
      height: 1.15,
      fontWeight: FontWeight.w500,
      color: heading,
    ),
    headlineMedium: const TextStyle(
      fontFamily: 'Fraunces',
      fontSize: 28,
      height: 1.2,
      fontWeight: FontWeight.w500,
      color: heading,
    ),
    headlineSmall: const TextStyle(
      fontFamily: 'Onest',
      fontSize: 22,
      height: 1.25,
      fontWeight: FontWeight.w500,
      color: heading,
    ),
    titleLarge: const TextStyle(
      fontFamily: 'Onest',
      fontSize: 20,
      height: 1.2,
      fontWeight: FontWeight.w500,
      color: heading,
    ),
    titleMedium: const TextStyle(
      fontFamily: 'Onest',
      fontSize: 18,
      height: 1.3,
      fontWeight: FontWeight.w500,
      color: heading,
    ),
    titleSmall: const TextStyle(
      fontFamily: 'Onest',
      fontSize: 15,
      height: 1.3,
      fontWeight: FontWeight.w500,
      color: heading,
    ),
    bodyLarge: bodyStyle,
    bodyMedium: bodyStyle,
    bodySmall: const TextStyle(
      fontFamily: 'Onest',
      fontSize: 14,
      height: 1.45,
      color: body_muted,
    ),
    labelLarge: const TextStyle(
      fontFamily: 'Onest',
      fontSize: 15,
      height: 1.2,
      fontWeight: FontWeight.w500,
      color: heading,
    ),
    labelMedium: const TextStyle(
      fontFamily: 'Onest',
      fontSize: 13,
      height: 1.2,
      fontWeight: FontWeight.w500,
      color: body_muted,
    ),
    labelSmall: const TextStyle(
      fontFamily: 'Onest',
      fontSize: 12,
      height: 1.2,
      color: body_muted,
    ),
  );

  return base.copyWith(
    textTheme: textTheme,
    scaffoldBackgroundColor: hero_base,
    splashFactory: NoSplash.splashFactory,
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: SolacePageTransitionsBuilder(),
        TargetPlatform.iOS: SolacePageTransitionsBuilder(),
        TargetPlatform.macOS: SolacePageTransitionsBuilder(),
        TargetPlatform.windows: SolacePageTransitionsBuilder(),
        TargetPlatform.linux: SolacePageTransitionsBuilder(),
      },
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: hero_base,
      surfaceTintColor: Colors.transparent,
      foregroundColor: heading,
      elevation: 0,
      centerTitle: false,
      titleTextStyle: TextStyle(
        fontFamily: 'Onest',
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: heading,
      ),
    ),
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: hero_base,
      surfaceTintColor: Colors.transparent,
      indicatorColor: accent.withValues(alpha: 0.16),
      elevation: 0,
      height: 64,
      labelTextStyle: WidgetStateProperty.resolveWith(
        (states) => TextStyle(
          fontFamily: 'Onest',
          fontSize: 12,
          color: states.contains(WidgetState.selected) ? heading : body_muted,
        ),
      ),
      iconTheme: WidgetStateProperty.resolveWith(
        (states) => IconThemeData(
          size: 22,
          color: states.contains(WidgetState.selected) ? accent : body_muted,
        ),
      ),
    ),
    navigationRailTheme: NavigationRailThemeData(
      backgroundColor: hero_base,
      indicatorColor: accent.withValues(alpha: 0.16),
      selectedIconTheme: const IconThemeData(size: 22, color: accent),
      unselectedIconTheme: const IconThemeData(size: 22, color: body_muted),
      selectedLabelTextStyle: const TextStyle(
        fontFamily: 'Onest',
        fontSize: 12,
        color: heading,
      ),
      unselectedLabelTextStyle: const TextStyle(
        fontFamily: 'Onest',
        fontSize: 12,
        color: body_muted,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: glass_fill,
      labelStyle: const TextStyle(fontFamily: 'Onest', color: body_muted),
      hintStyle: const TextStyle(fontFamily: 'Onest', color: body_muted),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: gutter,
        vertical: 14,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(color: hairline),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(color: hairline),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(color: accent),
      ),
    ),
    progressIndicatorTheme: const ProgressIndicatorThemeData(color: accent),
    dividerTheme: const DividerThemeData(
      color: hairline,
      thickness: 1,
      space: 1,
    ),
    snackBarTheme: const SnackBarThemeData(
      backgroundColor: glass_fill,
      contentTextStyle: TextStyle(fontFamily: 'Onest', color: heading),
    ),
  );
}
