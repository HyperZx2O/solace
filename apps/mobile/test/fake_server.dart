final fakeResponses = {
  '/crisis/start': (_) => {
        'id': 'cr1',
        'status': 'connecting',
        'startedAt': '',
        'personalJournal': '[COPY-BLOCKED]',
      },
  '/crisis/finish': (_) => {
        'id': 'cr1',
        'status': 'delivered',
        'endedAt': '',
        'personalJournal': '[COPY-BLOCKED]',
      },
  '/alerts': (_) => [
        {'id': 'al1', 'type': 'checkin', 'elapsedSeconds': 120, 'trigger': 'checkin'},
      ],
  '/patients': (_) => [
        {'id': 'p1', 'name': 'Patient A', 'lastCheckin': '2h ago'},
      ],
  '/therapist/invite': (_) => {
        'firstName': 'Ana',
        'requiresLicense': true,
      },
  '/therapist/alert/respond': (_) => {'acknowledged': true},
};

dynamic handleRequest(String path, Map<String, dynamic> body) {
  final resp = fakeResponses[path];
  if (resp != null) return resp(body);
  throw Exception('no fake endpoint for $path');
}
