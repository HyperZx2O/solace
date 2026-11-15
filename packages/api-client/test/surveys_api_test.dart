import 'package:test/test.dart';
import 'package:solace_api/solace_api.dart';


/// tests for SurveysApi
void main() {
  final instance = SolaceApi().getSurveysApi();

  group(SurveysApi, () {
    // Score and complete a survey. PHQ-9 item 9 becomes a possible concern (OD-10).
    //
    //Future<CompleteSurvey200Response> completeSurvey(String id, CompleteSurveyRequest completeSurveyRequest) async
    test('test completeSurvey', () async {
      // TODO
    });

    // Survey definition and items.
    //
    //Future<GetSurvey200Response> getSurvey(String id) async
    test('test getSurvey', () async {
      // TODO
    });

    // Survey results for the current patient.
    //
    //Future<ListSurveyResults200Response> listSurveyResults() async
    test('test listSurveyResults', () async {
      // TODO
    });

    // Request a retake. Rejected inside the 14-day cooldown.
    //
    //Future<EmptyEnvelope> retakeSurvey(RetakeSurveyRequest retakeSurveyRequest) async
    test('test retakeSurvey', () async {
      // TODO
    });

    // Save item-level answers. Idempotent on `clientId`.
    //
    //Future<SubmitSurveyResponses201Response> submitSurveyResponses(String id, SurveyResponsesRequest surveyResponsesRequest) async
    test('test submitSurveyResponses', () async {
      // TODO
    });

  });
}
