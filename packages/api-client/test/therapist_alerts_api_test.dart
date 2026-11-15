import 'package:test/test.dart';
import 'package:solace_api/solace_api.dart';


/// tests for TherapistAlertsApi
void main() {
  final instance = SolaceApi().getTherapistAlertsApi();

  group(TherapistAlertsApi, () {
    // One alert. Requires re-authentication when the session is older than 4 hours (B08, S16).
    //
    //Future<GetTherapistAlert200Response> getTherapistAlert(String id) async
    test('test getTherapistAlert', () async {
      // TODO
    });

    // Open and recent alerts for connected patients.
    //
    //Future<ListTherapistAlerts200Response> listTherapistAlerts() async
    test('test listTherapistAlerts', () async {
      // TODO
    });

    // Resolve. All three checklist items are required (S7).
    //
    //Future<GetTherapistAlert200Response> resolveAlert(String id, ResolveAlertRequest resolveAlertRequest) async
    test('test resolveAlert', () async {
      // TODO
    });

    // Mark reviewed. Starts the 60-second undo window.
    //
    //Future<GetTherapistAlert200Response> reviewAlert(String id) async
    test('test reviewAlert', () async {
      // TODO
    });

    // Undo the review inside 60 seconds. Escalation continues (S5, S6).
    //
    //Future<GetTherapistAlert200Response> undoReview(String id) async
    test('test undoReview', () async {
      // TODO
    });

  });
}
