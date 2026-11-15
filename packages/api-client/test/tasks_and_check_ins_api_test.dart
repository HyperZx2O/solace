import 'package:test/test.dart';
import 'package:solace_api/solace_api.dart';


/// tests for TasksAndCheckInsApi
void main() {
  final instance = SolaceApi().getTasksAndCheckInsApi();

  group(TasksAndCheckInsApi, () {
    // Mark today's task complete.
    //
    //Future<CompleteTask200Response> completeTask(String id) async
    test('test completeTask', () async {
      // TODO
    });

    // Daily check-in. Idempotent on `clientId` (S9).
    //
    //Future<CreateCheckIn201Response> createCheckIn(CheckInRequest checkInRequest) async
    test('test createCheckIn', () async {
      // TODO
    });

    // Why this task was chosen. No clinical reasoning is exposed.
    //
    //Future<ExplainTask200Response> explainTask(String id) async
    test('test explainTask', () async {
      // TODO
    });

    // Today's task, check-in state and swap availability.
    //
    //Future<GetToday200Response> getToday() async
    test('test getToday', () async {
      // TODO
    });

    // Recent check-ins for the mood series.
    //
    //Future<ListCheckIns200Response> listCheckIns({ int days }) async
    test('test listCheckIns', () async {
      // TODO
    });

    // Swap today's task. At most one swap per day (R-SWAP-1).
    //
    //Future<CompleteTask200Response> swapTask() async
    test('test swapTask', () async {
      // TODO
    });

    // Rate how much the task helped.
    //
    //Future<EmptyEnvelope> taskFeedback(String id, TaskFeedbackRequest taskFeedbackRequest) async
    test('test taskFeedback', () async {
      // TODO
    });

  });
}
