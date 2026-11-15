/// Locks the app after 30s in background. Fake clock injectable for tests.
class LockController {
  LockController({DateTime Function()? now})
    : _now = now ?? (() => DateTime.now());

  final DateTime Function() _now;
  DateTime? _backgroundedAt;
  bool _locked = false;

  bool get isLocked => _locked;

  void onBackgrounded() {
    _backgroundedAt = _now();
  }

  void onResumed() {
    final bg = _backgroundedAt;
    if (bg == null) return;
    final elapsed = _now().difference(bg);
    if (elapsed > const Duration(seconds: 30)) {
      _locked = true;
    }
    _backgroundedAt = null;
  }

  void unlock() => _locked = false;
  void lock() => _locked = true;
}
