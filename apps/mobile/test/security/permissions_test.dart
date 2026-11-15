import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
    'manifest declares only INTERNET, POST_NOTIFICATIONS, USE_BIOMETRIC',
    () {
      final manifest = File('android/app/src/main/AndroidManifest.xml');
      final src = manifest.readAsStringSync();
      final perms = RegExp(r'<uses-permission\s+android:name="([^"]+)"')
          .allMatches(src)
          .map((m) => m.group(1)!)
          .toSet();
      expect(perms, {
        'android.permission.INTERNET',
        'android.permission.POST_NOTIFICATIONS',
        'android.permission.USE_BIOMETRIC',
      });
    },
  );

  test('network_security_config disables cleartext', () {
    final f = File('android/app/src/main/res/xml/network_security_config.xml');
    expect(f.existsSync(), isTrue);
    final src = f.readAsStringSync();
    expect(src, contains('cleartextTrafficPermitted="false"'));
  });
}
