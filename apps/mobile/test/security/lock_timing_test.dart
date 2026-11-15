import 'package:solace/core/lifecycle/lock_controller.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('lock timing: 29s no lock, 31s lock', () {
    var now = DateTime(2026, 10, 26, 10, 0, 0);
    final ctrl = LockController(now: () => now);
    ctrl.onBackgrounded();
    now = now.add(const Duration(seconds: 29));
    ctrl.onResumed();
    expect(ctrl.isLocked, isFalse);
    // re-background
    ctrl.onBackgrounded();
    now = now.add(const Duration(seconds: 31));
    ctrl.onResumed();
    expect(ctrl.isLocked, isTrue);
  });

  test('lock unlock clears', () {
    final ctrl = LockController();
    ctrl.lock();
    expect(ctrl.isLocked, isTrue);
    ctrl.unlock();
    expect(ctrl.isLocked, isFalse);
  });
}
