import 'package:solace/copy/offline_copy.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('offline notice exact wording', () {
    expect(
      OfflineCopy.offlineNotice,
      "You're offline right now. Your safety plan and crisis resources are still available below.",
    );
  });

  test('unreachable care team exact wording', () {
    expect(
      OfflineCopy.unreachableCareTeam,
      "The app can't reach your care team right now. These numbers connect you directly to support.",
    );
  });
}
