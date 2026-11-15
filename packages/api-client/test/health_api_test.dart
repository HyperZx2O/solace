import 'package:test/test.dart';
import 'package:solace_api/solace_api.dart';


/// tests for HealthApi
void main() {
  final instance = SolaceApi().getHealthApi();

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
