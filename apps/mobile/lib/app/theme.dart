import 'package:flutter/material.dart';

import '../design/tokens.g.dart';

/// The app theme, built from `tokens.g.dart` only (Global rule: no hard-coded
/// colour or durations in `lib/`). Type scale is Phase 3 work (F-ADR-5);
/// Until then Material defaults carry the smoke route.
///
/// App uses the dark "hero" surface with a radial scrim and garden grid drawn
/// by widgets, not the shader (F-ADR-3).
ThemeData buildBetweenTheme() {
  final scheme = ColorScheme.dark(
    surface: hero_base,
    onSurface: heading,
    primary: accent,
    onPrimary: action_inverse_fg,
    secondary: bot_sage,
    onError: bot_butter,
    outline: hairline_strong,
  );

  return ThemeData(
    useMaterial3: true,
    colorScheme: scheme,
    scaffoldBackgroundColor: hero_base,
    splashFactory: NoSplash.splashFactory,
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {TargetPlatform.android: FadeUpwardsPageTransitionsBuilder()},
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: hero_base,
      surfaceTintColor: Colors.transparent,
      foregroundColor: heading,
      elevation: 0,
    ),
    dividerTheme: const DividerThemeData(
      color: hairline,
      thickness: 1,
      space: 1,
    ),
    snackBarTheme: const SnackBarThemeData(
      backgroundColor: glass_fill,
      contentTextStyle: TextStyle(color: heading),
    ),
  );
}
