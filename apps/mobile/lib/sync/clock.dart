/// Injectable clock. Defaults to UTC now. Inject a fake in tests.
typedef Clock = DateTime Function();

DateTime utcNow() => DateTime.now().toUtc();
