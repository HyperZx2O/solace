// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crisis_tier.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CrisisTier _$tier1 = const CrisisTier._('tier1');
const CrisisTier _$tier2 = const CrisisTier._('tier2');
const CrisisTier _$tier3 = const CrisisTier._('tier3');
const CrisisTier _$possibleConcern = const CrisisTier._('possibleConcern');

CrisisTier _$valueOf(String name) {
  switch (name) {
    case 'tier1':
      return _$tier1;
    case 'tier2':
      return _$tier2;
    case 'tier3':
      return _$tier3;
    case 'possibleConcern':
      return _$possibleConcern;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CrisisTier> _$values = BuiltSet<CrisisTier>(const <CrisisTier>[
  _$tier1,
  _$tier2,
  _$tier3,
  _$possibleConcern,
]);

class _$CrisisTierMeta {
  const _$CrisisTierMeta();
  CrisisTier get tier1 => _$tier1;
  CrisisTier get tier2 => _$tier2;
  CrisisTier get tier3 => _$tier3;
  CrisisTier get possibleConcern => _$possibleConcern;
  CrisisTier valueOf(String name) => _$valueOf(name);
  BuiltSet<CrisisTier> get values => _$values;
}

abstract class _$CrisisTierMixin {
  // ignore: non_constant_identifier_names
  _$CrisisTierMeta get CrisisTier => const _$CrisisTierMeta();
}

Serializer<CrisisTier> _$crisisTierSerializer = _$CrisisTierSerializer();

class _$CrisisTierSerializer implements PrimitiveSerializer<CrisisTier> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'tier1': 'tier1',
    'tier2': 'tier2',
    'tier3': 'tier3',
    'possibleConcern': 'possible_concern',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'tier1': 'tier1',
    'tier2': 'tier2',
    'tier3': 'tier3',
    'possible_concern': 'possibleConcern',
  };

  @override
  final Iterable<Type> types = const <Type>[CrisisTier];
  @override
  final String wireName = 'CrisisTier';

  @override
  Object serialize(Serializers serializers, CrisisTier object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CrisisTier deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CrisisTier.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
