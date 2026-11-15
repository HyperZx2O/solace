import 'package:test/test.dart';
import 'package:solace_api/solace_api.dart';


/// tests for TherapistPatientsApi
void main() {
  final instance = SolaceApi().getTherapistPatientsApi();

  group(TherapistPatientsApi, () {
    // Approve or hold a recommended stage change. Stage is never sent to the patient.
    //
    //Future<EmptyEnvelope> approveStageChange(String id, ApproveStageChangeRequest approveStageChangeRequest) async
    test('test approveStageChange', () async {
      // TODO
    });

    // Weekly summary with the clinical-judgment disclaimer as a required field.
    //
    //Future<GetPatientSummary200Response> getPatientSummary(String id) async
    test('test getPatientSummary', () async {
      // TODO
    });

    // One patient. 404 when there is no active connection, never 403 (no existence leak).
    //
    //Future<GetTherapistPatient200Response> getTherapistPatient(String id) async
    test('test getTherapistPatient', () async {
      // TODO
    });

    // Patients grouped by priority. No stage is ever returned.
    //
    //Future<ListTherapistPatients200Response> listTherapistPatients() async
    test('test listTherapistPatients', () async {
      // TODO
    });

  });
}
