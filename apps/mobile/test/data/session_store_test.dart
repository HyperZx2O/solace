import 'package:solace/data/session_store.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('session store saves and clears safety plan and journals', () {
    final container = ProviderContainer();
    addTearDown(container.dispose);
    final notifier = container.read(sessionStoreProvider.notifier);

    expect(container.read(sessionStoreProvider).plan.shared, isFalse);

    notifier.saveSafetyPlan(
      const SafetyPlan(
        field1: 'A',
        field2: 'B',
        field3: 'C',
        field4: 'D',
        field5: 'E',
        shared: true,
      ),
    );
    final plan = container.read(sessionStoreProvider).plan;
    expect(plan.field1, 'A');
    expect(plan.shared, isTrue);

    notifier.addJournal('It was heavy.');
    final state = container.read(sessionStoreProvider);
    expect(state.journals.length, 1);
    expect(state.journals.first.text, 'It was heavy.');

    notifier.clear();
    expect(container.read(sessionStoreProvider).journals, isEmpty);
  });
}
