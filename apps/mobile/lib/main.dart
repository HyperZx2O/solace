import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import 'app/error_screen.dart';
import 'app/router.dart';
import 'app/theme.dart';
import 'auth/session.dart';
import 'config/env.dart';
import 'core/logging.dart';
import 'core/platform/notification_channels.dart';
import 'l10n/app_localizations.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  FlutterError.onError = (details) {
    logError('FlutterError: ${details.exception}');
    if (kDebugMode) FlutterError.presentError(details);
  };
  ErrorWidget.builder = (details) => const ErrorScreen();
  runZonedGuarded(
    () async {
      final env = Env.fromDefines();
      final problems = env.debugProblems();
      if (kDebugMode && !env.demoMode && problems.isNotEmpty) {
        throw StateError('Missing or invalid --dart-define: $problems');
      }
      if (problems.isNotEmpty) {
        logWarn('Env problems: $problems');
      }
      final container = ProviderContainer();
      final session = container.read(authSessionProvider);
      if (env.demoMode) session.enterDemo();
      // Create notification channels (crisis=SECRET, care_reminders, connection) up front.
      try {
        final notifPlugin = FlutterLocalNotificationsPlugin();
        await createNotificationChannels(notifPlugin);
      } catch (_) {
        // Non-Android or unsupported: no-op.
      }
      runApp(
        UncontrolledProviderScope(
          container: container,
          child: SolaceApp(env: env, session: session),
        ),
      );
    },
    (error, stack) {
      logError('Uncaught error: $error');
      if (kDebugMode) debugPrintStack(stackTrace: stack);
    },
  );
}

class SolaceApp extends StatelessWidget {
  const SolaceApp({super.key, required this.env, required this.session});

  final Env env;
  final AuthSession session;

  @override
  Widget build(BuildContext context) {
    final router = buildRouter(session, demoMode: env.demoMode);
    return MaterialApp.router(
      onGenerateTitle: (context) => AppLocalizations.of(context).appTitle,
      theme: buildSolaceTheme(),
      supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      routerConfig: router,
    );
  }
}
