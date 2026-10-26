import 'package:test/test.dart';
import 'package:between_api/between_api.dart';


/// tests for StatusApi
void main() {
  final instance = BetweenApi().getStatusApi();

  group(StatusApi, () {
    // Restriction level and copy key. Never returns stage.
    //
    //Future<GetStatus200Response> getStatus() async
    test('test getStatus', () async {
      // TODO
    });

  });
}
