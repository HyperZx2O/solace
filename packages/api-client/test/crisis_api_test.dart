import 'package:test/test.dart';
import 'package:between_api/between_api.dart';


/// tests for CrisisApi
void main() {
  final instance = BetweenApi().getCrisisApi();

  group(CrisisApi, () {
    // Answer the Tier 2 consent prompt. No detail is sent on refusal (S3).
    //
    //Future<AnswerTier2Consent200Response> answerTier2Consent(String id, AnswerTier2ConsentRequest answerTier2ConsentRequest) async
    test('test answerTier2Consent', () async {
      // TODO
    });

    // Synchronous crisis check. Target p95 under 2 seconds. Tier 3 is decided by the rule-based detector and never waits for the AI (ADR-4). Never rate-limited and never returns 503 for a Tier 3 decision (Global Rules 8 and 11). 
    //
    //Future<CheckCrisis200Response> checkCrisis(CrisisCheckRequest crisisCheckRequest) async
    test('test checkCrisis', () async {
      // TODO
    });

    // Bundled crisis resources. Works without a valid token (S22).
    //
    //Future<GetCrisisResources200Response> getCrisisResources() async
    test('test getCrisisResources', () async {
      // TODO
    });

    // The patient asks for help. Always accepted while authenticated.
    //
    //Future<CheckCrisis200Response> selfInitiatedCrisis(SelfInitiatedCrisisRequest selfInitiatedCrisisRequest) async
    test('test selfInitiatedCrisis', () async {
      // TODO
    });

  });
}
