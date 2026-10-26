import 'package:test/test.dart';
import 'package:between_api/between_api.dart';


/// tests for HealthApi
void main() {
  final instance = BetweenApi().getHealthApi();

  group(HealthApi, () {
    // Liveness. No dependencies checked.
    //
    //Future<HealthEnvelope> getHealth() async
    test('test getHealth', () async {
      // TODO
    });

    // Readiness. Checks PostgreSQL and Redis.
    //
    //Future<ReadyEnvelope> getReady() async
    test('test getReady', () async {
      // TODO
    });

  });
}
