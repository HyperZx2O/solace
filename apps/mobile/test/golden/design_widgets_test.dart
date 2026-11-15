import 'package:solace/design/widgets/buttons.dart';
import 'package:solace/design/widgets/chips_tabs.dart';
import 'package:solace/design/widgets/surfaces.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

Widget _wrap(Widget child) => MaterialApp(home: child);

void main() {
  group('design widgets (golden review)', () {
    testWidgets('accent link renders', (tester) async {
      await tester.pumpWidget(_wrap(AccentLink(label: 'grounding', onPressed: () {})));
      expect(find.text('grounding'), findsOneWidget);
    });

    testWidgets('primary pill renders', (tester) async {
      await tester.pumpWidget(_wrap(PrimaryPill(label: 'Yes', onPressed: () {})));
      expect(find.text('Yes'), findsOneWidget);
    });

    testWidgets('step tabs render label', (tester) async {
      await tester.pumpWidget(_wrap(StepTabs(labels: const ['A'], index: 0, onChanged: (i) {})));
      expect(find.text('A'), findsOneWidget);
    });

    testWidgets('glass surface renders', (tester) async {
      await tester.pumpWidget(_wrap(const GlassSurface(child: Text('x'))));
      expect(find.byType(GlassSurface), findsOneWidget);
    });

    testWidgets('hairline renders', (tester) async {
      await tester.pumpWidget(_wrap(const Hairline()));
      expect(find.byType(Hairline), findsOneWidget);
    });
  });
}
