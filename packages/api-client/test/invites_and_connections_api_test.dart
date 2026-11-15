import 'package:test/test.dart';
import 'package:solace_api/solace_api.dart';


/// tests for InvitesAndConnectionsApi
void main() {
  final instance = SolaceApi().getInvitesAndConnectionsApi();

  group(InvitesAndConnectionsApi, () {
    // Accept an invite. No patient data is visible until the patient confirms (S18).
    //
    //Future<AcceptInvite200Response> acceptInvite(AcceptInviteRequest acceptInviteRequest) async
    test('test acceptInvite', () async {
      // TODO
    });

    // The patient confirms. The only transition to `active`.
    //
    //Future<AcceptInvite200Response> confirmConnection(String id) async
    test('test confirmConnection', () async {
      // TODO
    });

    // Connect with a therapist using an in-app code.
    //
    //Future<AcceptInvite200Response> connectByCode(ConnectByCodeRequest connectByCodeRequest) async
    test('test connectByCode', () async {
      // TODO
    });

    // Invite a therapist by email. Expires after 48 hours (OD-2).
    //
    //Future<CreateInvite201Response> createInvite(CreateInviteRequest createInviteRequest) async
    test('test createInvite', () async {
      // TODO
    });

    // The patient declines. Nothing is ever visible (S19).
    //
    //Future<EmptyEnvelope> declineConnection(String id) async
    test('test declineConnection', () async {
      // TODO
    });

    // The patient ends the connection. Access stops immediately (R-CONN-1, S21).
    //
    //Future<EmptyEnvelope> endConnection() async
    test('test endConnection', () async {
      // TODO
    });

    // The patient says this is the wrong therapist.
    //
    //Future<EmptyEnvelope> flagWrongConnection(String id) async
    test('test flagWrongConnection', () async {
      // TODO
    });

    // Connections waiting for the patient's confirmation.
    //
    //Future<ListPendingConnections200Response> listPendingConnections() async
    test('test listPendingConnections', () async {
      // TODO
    });

  });
}
