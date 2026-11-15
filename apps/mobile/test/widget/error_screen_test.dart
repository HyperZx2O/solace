import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:solace/app/error_screen.dart';
import 'package:solace/l10n/app_localizations.dart';

void main() {
  testWidgets('error screen shows crisis numbers, no stack trace', (
    tester,
  ) async {
    await tester.pumpWidget(
      MaterialApp(
        supportedLocales: AppLocalizations.supportedLocales,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        home: ErrorScreen(onRetry: () {}),
      ),
    );
    await tester.pump();
    expect(find.text('Retry'), findsOneWidget);
    expect(find.textContaining('number you can call'), findsOneWidget);
  });
}
