import 'package:test/test.dart';
import 'package:between_api/between_api.dart';


/// tests for JournalsApi
void main() {
  final instance = BetweenApi().getJournalsApi();

  group(JournalsApi, () {
    // Save an entry. Always succeeds, even while the AI is down (B02, S8).
    //
    //Future<CreateJournalEntry201Response> createJournalEntry(JournalKind kind, JournalEntryRequest journalEntryRequest) async
    test('test createJournalEntry', () async {
      // TODO
    });

    // Entries for one journal kind.
    //
    //Future<ListJournalEntries200Response> listJournalEntries(JournalKind kind) async
    test('test listJournalEntries', () async {
      // TODO
    });

    // Set journal privacy. Monitoring cannot be OFF while the journal is hidden (R-CONSENT-2).
    //
    //Future<EmptyEnvelope> setJournalPrivacy(SetJournalPrivacyRequest setJournalPrivacyRequest) async
    test('test setJournalPrivacy', () async {
      // TODO
    });

  });
}
