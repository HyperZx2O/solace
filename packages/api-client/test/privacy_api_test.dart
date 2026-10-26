import 'package:test/test.dart';
import 'package:between_api/between_api.dart';


/// tests for PrivacyApi
void main() {
  final instance = BetweenApi().getPrivacyApi();

  group(PrivacyApi, () {
    // Step 2 of deletion.
    //
    //Future<RequestDeletion201Response> confirmDeletion(String id) async
    test('test confirmDeletion', () async {
      // TODO
    });

    // Forward-only, append-only view of who opened what.
    //
    //Future<GetAccessLog200Response> getAccessLog() async
    test('test getAccessLog', () async {
      // TODO
    });

    // Export status.
    //
    //Future<RequestExport201Response> getExport(String id) async
    test('test getExport', () async {
      // TODO
    });

    // Account becomes read-only. Crisis monitoring follows the consent state.
    //
    //Future<EmptyEnvelope> pauseProcessing(PauseProcessingRequest pauseProcessingRequest) async
    test('test pauseProcessing', () async {
      // TODO
    });

    // Step 1 of deletion.
    //
    //Future<RequestDeletion201Response> requestDeletion(StartCrisisMonitoringWithdrawalRequest startCrisisMonitoringWithdrawalRequest) async
    test('test requestDeletion', () async {
      // TODO
    });

    // Request a data export. Therapist MFA is required for therapist exports.
    //
    //Future<RequestExport201Response> requestExport(StartCrisisMonitoringWithdrawalRequest startCrisisMonitoringWithdrawalRequest) async
    test('test requestExport', () async {
      // TODO
    });

  });
}
