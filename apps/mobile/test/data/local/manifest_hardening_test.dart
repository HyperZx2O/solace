import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  test('release manifest has allowBackup=false and extraction rules', () {
    final manifest = File('android/app/src/main/AndroidManifest.xml');
    expect(manifest.existsSync(), isTrue);
    final src = manifest.readAsStringSync();
    expect(src, contains('android:allowBackup="false"'));
    expect(
      src,
      contains('android:dataExtractionRules="@xml/data_extraction_rules"'),
    );
    final rules = File(
      'android/app/src/main/res/xml/data_extraction_rules.xml',
    );
    expect(rules.existsSync(), isTrue);
  });
}
