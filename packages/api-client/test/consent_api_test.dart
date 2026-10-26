import 'package:test/test.dart';
import 'package:between_api/between_api.dart';


/// tests for ConsentApi
void main() {
  final instance = BetweenApi().getConsentApi();

  group(ConsentApi, () {
    // Step 2. Without this, monitoring stays ON (R-CONSENT-3, S14).
    //
    //Future<SetConsent200Response> confirmCrisisMonitoringWithdrawal(String id) async
    test('test confirmCrisisMonitoringWithdrawal', () async {
      // TODO
    });

    // Append-only consent history.
    //
    //Future<ListConsents200Response> consentHistory() async
    test('test consentHistory', () async {
      // TODO
    });

    // Current consent state for every item.
    //
    //Future<ListConsents200Response> listConsents() async
    test('test listConsents', () async {
      // TODO
    });

    // Grant or refuse one consent item.
    //
    //Future<SetConsent200Response> setConsent(ConsentItem item, SetConsentRequest setConsentRequest) async
    test('test setConsent', () async {
      // TODO
    });

    // Step 1 of withdrawing crisis monitoring.
    //
    //Future<StartCrisisMonitoringWithdrawal201Response> startCrisisMonitoringWithdrawal(StartCrisisMonitoringWithdrawalRequest startCrisisMonitoringWithdrawalRequest) async
    test('test startCrisisMonitoringWithdrawal', () async {
      // TODO
    });

  });
}
