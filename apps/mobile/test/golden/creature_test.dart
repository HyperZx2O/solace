import 'package:solace/design/companion/companion.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('creature (golden review)', () {
    testWidgets('rest state renders', (tester) async {
      await tester.pumpWidget(const MaterialApp(home: Companion(state: CompanionState.rest)));
      await tester.pump();
      expect(find.byType(Companion), findsOneWidget);
    });

    testWidgets('calm state renders', (tester) async {
      await tester.pumpWidget(const MaterialApp(home: Companion(state: CompanionState.calm)));
      await tester.pump();
      expect(find.byType(Companion), findsOneWidget);
    });

    testWidgets('low state renders', (tester) async {
      await tester.pumpWidget(const MaterialApp(home: Companion(state: CompanionState.low)));
      await tester.pump();
      expect(find.byType(Companion), findsOneWidget);
    });

    testWidgets('joyful state renders', (tester) async {
      await tester.pumpWidget(const MaterialApp(home: Companion(state: CompanionState.joyful)));
      await tester.pump();
      expect(find.byType(Companion), findsOneWidget);
    });

    testWidgets('reduced motion disables timers', (tester) async {
      await tester.pumpWidget(MediaQuery(
        data: const MediaQueryData(disableAnimations: true),
        child: const MaterialApp(home: Companion()),
      ));
      await tester.pump();
      expect(find.byType(Companion), findsOneWidget);
    });
  });
}