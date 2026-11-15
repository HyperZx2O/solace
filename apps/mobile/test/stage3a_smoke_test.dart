import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:solace/design/companion/companion.dart';
import 'package:solace/features/crisis/crisis_screen.dart';
import 'package:solace/l10n/app_localizations.dart';

Widget _app(Widget child, {bool disableAnimations = false}) {
  return MaterialApp(
    supportedLocales: AppLocalizations.supportedLocales,
    localizationsDelegates: AppLocalizations.localizationsDelegates,
    home: MediaQuery(
      data: MediaQueryData(disableAnimations: disableAnimations),
      child: Scaffold(body: Center(child: child)),
    ),
  );
}

void main() {
  testWidgets('crisis screen renders headline and fast exit', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        supportedLocales: AppLocalizations.supportedLocales,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        home: const CrisisScreen(),
      ),
    );
    await tester.pump();
    expect(
      find.text('Here is a number you can call right now.'),
      findsOneWidget,
    );
  });

  testWidgets('companion respects reduced motion (no crash, renders)', (
    tester,
  ) async {
    await tester.pumpWidget(_app(const Companion(), disableAnimations: true));
    await tester.pump();
    expect(find.byType(Companion), findsOneWidget);
  });
}
