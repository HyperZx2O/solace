import 'package:test/test.dart';
import 'package:between_api/between_api.dart';


/// tests for TherapistOnboardingApi
void main() {
  final instance = BetweenApi().getTherapistOnboardingApi();

  group(TherapistOnboardingApi, () {
    // Record DSA, crisis responsibility and emergency statement acknowledgements.
    //
    //Future<EmptyEnvelope> acknowledgeTherapistTerms(AcknowledgeTherapistTermsRequest acknowledgeTherapistTermsRequest) async
    test('test acknowledgeTherapistTerms', () async {
      // TODO
    });

    // Create a therapist profile after accepting an invite. Never open signup.
    //
    //Future<TherapistOnboarding201Response> therapistOnboarding(TherapistOnboardingRequest therapistOnboardingRequest) async
    test('test therapistOnboarding', () async {
      // TODO
    });

  });
}
