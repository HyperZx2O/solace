import 'package:solace/design/widgets/chips_tabs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('tappable chip target is at least 44 dp', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: ChipLabel(label: 'Low', onTap: () {}),
          ),
        ),
      ),
    );

    final size = tester.getSize(find.byType(ChipLabel));
    expect(size.height, greaterThanOrEqualTo(44));
  });
}
