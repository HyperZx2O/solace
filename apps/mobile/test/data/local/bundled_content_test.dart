import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:solace/features/crisis/crisis_screen.dart';
import 'package:solace/l10n/app_localizations.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('crisis resources load with no database (bundled assets)', (
    tester,
  ) async {
    await tester.pumpWidget(
      MaterialApp(
        supportedLocales: AppLocalizations.supportedLocales,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        home: const CrisisScreen(),
      ),
    );
    await tester.pumpAndSettle();
    expect(
      find.text('Here is a number you can call right now.'),
      findsOneWidget,
    );
    expect(find.text('UNVERIFIED'), findsNothing);
    expect(find.text('+880 9612-119911'), findsOneWidget);
    expect(find.textContaining('hours hours'), findsNothing);
  });
}
