import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  test('every bundled crisis row is verified and callable', () {
    final raw = File('assets/crisis/resources.json').readAsStringSync();
    final data = jsonDecode(raw) as Map<String, dynamic>;
    final rows = (data['resources'] as List).cast<Map<String, dynamic>>();

    expect(rows, isNotEmpty);
    for (final row in rows) {
      final id = row['id'];
      expect(row['unverified'], isNot(true), reason: '$id is unverified');
      expect(row['number'], isNot('UNVERIFIED'), reason: '$id number');
      expect(row['hours'], isNot('UNVERIFIED'), reason: '$id hours');
      expect(
        (row['lastVerifiedAt'] as String?)?.isNotEmpty,
        isTrue,
        reason: '$id lastVerifiedAt',
      );
      expect(
        (row['number'] as String?)?.isNotEmpty,
        isTrue,
        reason: '$id number empty',
      );
    }

    final kaan = rows.firstWhere((r) => r['id'] == 'kaan-pete-roi');
    expect(kaan['number'], '+880 9612-119911');
    expect(kaan['hours'], contains('3:00 PM to 3:00 AM'));
  });
}
