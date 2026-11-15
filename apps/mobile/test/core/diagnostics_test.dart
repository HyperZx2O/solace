import 'dart:convert';

import 'package:solace/core/diagnostics.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('diagnostic report has only the 4 allowed fields', () {
    final r = DiagnosticReport(
      appVersion: '1.0.0',
      deviceModel: 'Pixel',
      osVersion: '14',
      lastErrorCode: 'RATE_LIMITED',
    );
    final json = jsonDecode(r.toJsonString()) as Map<String, dynamic>;
    expect(json.keys.toSet(), {
      'appVersion',
      'deviceModel',
      'osVersion',
      'lastErrorCode',
    });
    expect(json.values.any((v) => v.toString().contains('journal')), isFalse);
  });
}
