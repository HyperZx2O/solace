// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'journal_kind.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const JournalKind _$recovery = const JournalKind._('recovery');
const JournalKind _$personal = const JournalKind._('personal');

JournalKind _$valueOf(String name) {
  switch (name) {
    case 'recovery':
      return _$recovery;
    case 'personal':
      return _$personal;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<JournalKind> _$values =
    BuiltSet<JournalKind>(const <JournalKind>[
  _$recovery,
  _$personal,
]);

class _$JournalKindMeta {
  const _$JournalKindMeta();
  JournalKind get recovery => _$recovery;
  JournalKind get personal => _$personal;
  JournalKind valueOf(String name) => _$valueOf(name);
  BuiltSet<JournalKind> get values => _$values;
}

abstract class _$JournalKindMixin {
  // ignore: non_constant_identifier_names
  _$JournalKindMeta get JournalKind => const _$JournalKindMeta();
}

Serializer<JournalKind> _$journalKindSerializer = _$JournalKindSerializer();

class _$JournalKindSerializer implements PrimitiveSerializer<JournalKind> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'recovery': 'recovery',
    'personal': 'personal',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'recovery': 'recovery',
    'personal': 'personal',
  };

  @override
  final Iterable<Type> types = const <Type>[JournalKind];
  @override
  final String wireName = 'JournalKind';

  @override
  Object serialize(Serializers serializers, JournalKind object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  JournalKind deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      JournalKind.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
