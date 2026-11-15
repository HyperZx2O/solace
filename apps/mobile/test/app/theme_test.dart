import 'package:solace/app/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('type system: Onest body 16, Fraunces display', (tester) async {
    late TextTheme textTheme;
    await tester.pumpWidget(
      MaterialApp(
        theme: buildSolaceTheme(),
        home: Builder(
          builder: (context) {
            textTheme = Theme.of(context).textTheme;
            return const SizedBox();
          },
        ),
      ),
    );

    expect(textTheme.bodyMedium?.fontFamily, 'Onest');
    expect(textTheme.bodyMedium?.fontSize, 16);
    expect(textTheme.bodySmall?.fontSize, 14);
    expect(textTheme.headlineMedium?.fontFamily, 'Fraunces');
    expect(textTheme.headlineMedium?.fontSize, 28);
    expect(textTheme.labelLarge?.fontSize, 15);
  });
}
