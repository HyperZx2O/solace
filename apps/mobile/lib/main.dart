import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'app/smoke_screen.dart';
import 'app/theme.dart';
import 'config/env.dart';
import 'core/logging.dart';
import 'l10n/app_localizations.dart';

/// Bootstrap: validate the environment before building anything.
///
/// Debug builds fail fast on a missing required dart-define (Phase 1 task 5);
/// release builds always launch. Uncaught errors are logged redacted, never
/// shown as stack traces later (Phase 9) — this error zone is the single funnel
/// for that.
void main() {
  runZonedGuarded(
    () async {
      final env = Env.fromDefines();
      final problems = env.debugProblems();
      if (kDebugMode && problems.isNotEmpty) {
        throw StateError('Missing or invalid --dart-define: $problems');
      }
      if (problems.isNotEmpty) {
        // Release keeps launching; record for diagnostics instead of crashing.
        logWarn('Env problems: $problems');
      }
      runApp(BetweenApp(env: env));
    },
    (error, stack) {
      logError('Uncaught error: $error');
      if (kDebugMode) debugPrintStack(stackTrace: stack);
    },
  );
}

class BetweenApp extends StatelessWidget {
  const BetweenApp({super.key, required this.env});

  final Env env;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateTitle: (context) => AppLocalizations.of(context).appTitle,
      theme: buildBetweenTheme(),
      supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      home: SmokeScreen(env: env),
    );
  }
}
