import 'package:test/test.dart';
import 'package:between_api/between_api.dart';


/// tests for SyncApi
void main() {
  final instance = BetweenApi().getSyncApi();

  group(SyncApi, () {
    // Batch-sync offline items. Each item is accepted, duplicate, historical_flagged or rejected.
    //
    //Future<SyncItems200Response> syncItems(SyncItemsRequest syncItemsRequest) async
    test('test syncItems', () async {
      // TODO
    });

  });
}
