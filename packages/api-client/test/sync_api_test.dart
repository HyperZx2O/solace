import 'package:test/test.dart';
import 'package:solace_api/solace_api.dart';


/// tests for SyncApi
void main() {
  final instance = SolaceApi().getSyncApi();

  group(SyncApi, () {
    // Batch-sync offline items. Each item is accepted, duplicate, historical_flagged or rejected.
    //
    //Future<SyncItems200Response> syncItems(SyncItemsRequest syncItemsRequest) async
    test('test syncItems', () async {
      // TODO
    });

  });
}
