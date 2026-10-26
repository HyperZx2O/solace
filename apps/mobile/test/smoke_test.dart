import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:between/app/smoke_screen.dart';
import 'package:between/config/env.dart';
import 'package:between/l10n/app_localizations.dart';

void main() {
  Widget smoke({Locale? locale}) {
    return MaterialApp(
      supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates:
          AppLocalizations.localizationsDelegates +
          [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
      locale: locale,
      home: SmokeScreen(env: Env.fromValues({Env.appEnvKey: 'dev'})),
    );
  }

  testWidgets('English smoke route renders the ARB headline', (tester) async {
    await tester.pumpWidget(smoke(locale: const Locale('en')));
    expect(find.text('Between'), findsOneWidget);
    expect(find.textContaining('even when things feel heavy'), findsOneWidget);
  });

  testWidgets('Bengali smoke route renders the bn strings', (tester) async {
    await tester.pumpWidget(smoke(locale: const Locale('bn')));
    expect(find.text('Between'), findsOneWidget);
    expect(find.textContaining('অ্যাপটি আপনি খুলতে পারবেন'), findsOneWidget);
  });

  testWidgets('text survives 200% font scale without ⊃ clipping', (
    tester,
  ) async {
    await tester.pumpWidget(
      MediaQuery(
        data: const MediaQueryData(textScaler: TextScaler.linear(2.0)),
        child: smoke(locale: const Locale('en')),
      ),
    );
    final title = tester.getRect(find.text('Between'));
    expect(title.left, greaterThanOrEqualTo(0));
    expect(title.width, lessThan(600));
  });
}
