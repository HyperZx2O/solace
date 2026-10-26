import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:yaml/yaml.dart';

/// Phase 2 task 2: every enum value declared in the frozen contract must
/// appear verbatim in the generated client (as a `wireName`). This keeps the
/// hand-written registry in `lib/data/api/error_registry.dart` honest without
/// duplicating the enum.
void main() {
  final contract = File('../../services/api/openapi.yaml');
  final generatedRoot = Directory('../../packages/api-client/lib/src/model');

  Map readYaml(String path) =>
      loadYaml(File(path).readAsStringSync()) as Map;

  test('contract and generated enum files exist', () {
    expect(contract.existsSync(), isTrue);
    expect(generatedRoot.existsSync(), isTrue);
  });

  final schemas = readYaml(contract.path)['components']['schemas'] as Map;

  // Top-level enum schemas: schema name -> generated file basename.
  final topLevel = <String, String>{
    'AlertState': 'alert_state.dart',
    'CrisisTier': 'crisis_tier.dart',
    'ConsentItem': 'consent_item.dart',
    'ConnectionState': 'connection_state.dart',
    'JournalKind': 'journal_kind.dart',
    'JournalPrivacy': 'journal_privacy.dart',
    'RestrictionLevel': 'restriction_level.dart',
  };

  for (final entry in topLevel.entries) {
    test('${entry.key} values all present in generated client', () {
      final values = (schemas[entry.key]['enum'] as YamlList).cast<String>();
      final file = File('${generatedRoot.path}/${entry.value}');
      expect(file.existsSync(), isTrue,
          reason: 'missing generated file for ${entry.key}');
      final source = file.readAsStringSync();
      for (final v in values) {
        expect(source, contains("wireName: r'$v'"),
            reason: 'contract value "$v" missing from ${entry.value}');
      }
    });
  }

  test('TherapistProfile.verificationStatus values present', () {
    final tp = schemas['TherapistProfile'] as Map;
    final values = (tp['properties']['verificationStatus']['enum'] as YamlList)
        .cast<String>();
    final file = File('${generatedRoot.path}/therapist_profile.dart');
    expect(file.existsSync(), isTrue);
    final source = file.readAsStringSync();
    for (final v in values) {
      expect(source, contains("wireName: r'$v'"),
          reason: 'contract value "$v" missing from therapist_profile.dart');
    }
  });

  test('ErrorCode values all present in generated client', () {
    final values = (schemas['ErrorCode']['enum'] as YamlList).cast<String>();
    final file = File('${generatedRoot.path}/error_code.dart');
    expect(file.existsSync(), isTrue);
    final source = file.readAsStringSync();
    for (final v in values) {
      expect(source, contains("wireName: r'$v'"),
          reason: 'contract error code "$v" missing');
    }
    expect(values.length, 12, reason: 'contract declares 12 error codes');
  });
}
