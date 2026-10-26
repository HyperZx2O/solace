// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'journal_privacy.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const JournalPrivacy _$hiddenFromTherapist =
    const JournalPrivacy._('hiddenFromTherapist');
const JournalPrivacy _$progressOnly = const JournalPrivacy._('progressOnly');
const JournalPrivacy _$fullAccess = const JournalPrivacy._('fullAccess');

JournalPrivacy _$valueOf(String name) {
  switch (name) {
    case 'hiddenFromTherapist':
      return _$hiddenFromTherapist;
    case 'progressOnly':
      return _$progressOnly;
    case 'fullAccess':
      return _$fullAccess;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<JournalPrivacy> _$values =
    BuiltSet<JournalPrivacy>(const <JournalPrivacy>[
  _$hiddenFromTherapist,
  _$progressOnly,
  _$fullAccess,
]);

class _$JournalPrivacyMeta {
  const _$JournalPrivacyMeta();
  JournalPrivacy get hiddenFromTherapist => _$hiddenFromTherapist;
  JournalPrivacy get progressOnly => _$progressOnly;
  JournalPrivacy get fullAccess => _$fullAccess;
  JournalPrivacy valueOf(String name) => _$valueOf(name);
  BuiltSet<JournalPrivacy> get values => _$values;
}

abstract class _$JournalPrivacyMixin {
  // ignore: non_constant_identifier_names
  _$JournalPrivacyMeta get JournalPrivacy => const _$JournalPrivacyMeta();
}

Serializer<JournalPrivacy> _$journalPrivacySerializer =
    _$JournalPrivacySerializer();

class _$JournalPrivacySerializer
    implements PrimitiveSerializer<JournalPrivacy> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'hiddenFromTherapist': 'hidden_from_therapist',
    'progressOnly': 'progress_only',
    'fullAccess': 'full_access',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'hidden_from_therapist': 'hiddenFromTherapist',
    'progress_only': 'progressOnly',
    'full_access': 'fullAccess',
  };

  @override
  final Iterable<Type> types = const <Type>[JournalPrivacy];
  @override
  final String wireName = 'JournalPrivacy';

  @override
  Object serialize(Serializers serializers, JournalPrivacy object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  JournalPrivacy deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      JournalPrivacy.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
