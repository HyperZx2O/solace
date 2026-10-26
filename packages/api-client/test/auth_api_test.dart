import 'package:test/test.dart';
import 'package:between_api/between_api.dart';


/// tests for AuthApi
void main() {
  final instance = BetweenApi().getAuthApi();

  group(AuthApi, () {
    // The authenticated user. The client routes on `role`.
    //
    //Future<GetMe200Response> getMe() async
    test('test getMe', () async {
      // TODO
    });

    // List active sessions for the current user.
    //
    //Future<ListSessions200Response> listSessions() async
    test('test listSessions', () async {
      // TODO
    });

    // Exchange credentials for an access and refresh token.
    //
    //Future<AuthEnvelope> login(LoginRequest loginRequest) async
    test('test login', () async {
      // TODO
    });

    // Revoke the current session.
    //
    //Future<EmptyEnvelope> logout({ LogoutRequest logoutRequest }) async
    test('test logout', () async {
      // TODO
    });

    // Rotate a refresh token. Reuse revokes the whole session family.
    //
    //Future<AuthEnvelope> refresh(RefreshRequest refreshRequest) async
    test('test refresh', () async {
      // TODO
    });

    // Revoke one session by id.
    //
    //Future<EmptyEnvelope> revokeSession(String id) async
    test('test revokeSession', () async {
      // TODO
    });

    // Create a patient account. Age 18+ is enforced server-side (OD-3).
    //
    //Future<AuthEnvelope> signup(SignupRequest signupRequest) async
    test('test signup', () async {
      // TODO
    });

  });
}
