import 'package:test/test.dart';
import 'package:solace_api/solace_api.dart';


/// tests for SafetyPlanApi
void main() {
  final instance = SolaceApi().getSafetyPlanApi();

  group(SafetyPlanApi, () {
    // The patient's own safety plan. Field 4 is never shared.
    //
    //Future<GetSafetyPlan200Response> getSafetyPlan() async
    test('test getSafetyPlan', () async {
      // TODO
    });

    // Replace the safety plan fields.
    //
    //Future<GetSafetyPlan200Response> replaceSafetyPlan(SafetyPlanFields safetyPlanFields) async
    test('test replaceSafetyPlan', () async {
      // TODO
    });

    // Update one field. Field 4 is stored but always excluded from sharing.
    //
    //Future<GetSafetyPlan200Response> setSafetyPlanField(int n, SetSafetyPlanFieldRequest setSafetyPlanFieldRequest) async
    test('test setSafetyPlanField', () async {
      // TODO
    });

    // Share or stop sharing fields 1, 2, 3 and 5 with the therapist.
    //
    //Future<GetSafetyPlan200Response> setSafetyPlanSharing(SetSafetyPlanSharingRequest setSafetyPlanSharingRequest) async
    test('test setSafetyPlanSharing', () async {
      // TODO
    });

  });
}
