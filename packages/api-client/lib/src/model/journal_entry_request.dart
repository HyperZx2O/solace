//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'journal_entry_request.g.dart';

/// JournalEntryRequest
///
/// Properties:
/// * [clientId] 
/// * [clientCreatedAt] 
/// * [text] 
/// * [analysisAllowed] - Personal journal analysis is crisis-scan only (OD-4)
@BuiltValue()
abstract class JournalEntryRequest implements Built<JournalEntryRequest, JournalEntryRequestBuilder> {
  @BuiltValueField(wireName: r'clientId')
  String get clientId;

  @BuiltValueField(wireName: r'clientCreatedAt')
  DateTime get clientCreatedAt;

  @BuiltValueField(wireName: r'text')
  String get text;

  /// Personal journal analysis is crisis-scan only (OD-4)
  @BuiltValueField(wireName: r'analysisAllowed')
  bool? get analysisAllowed;

  JournalEntryRequest._();

  factory JournalEntryRequest([void updates(JournalEntryRequestBuilder b)]) = _$JournalEntryRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(JournalEntryRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<JournalEntryRequest> get serializer => _$JournalEntryRequestSerializer();
}

class _$JournalEntryRequestSerializer implements PrimitiveSerializer<JournalEntryRequest> {
  @override
  final Iterable<Type> types = const [JournalEntryRequest, _$JournalEntryRequest];

  @override
  final String wireName = r'JournalEntryRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    JournalEntryRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'clientId';
    yield serializers.serialize(
      object.clientId,
      specifiedType: const FullType(String),
    );
    yield r'clientCreatedAt';
    yield serializers.serialize(
      object.clientCreatedAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'text';
    yield serializers.serialize(
      object.text,
      specifiedType: const FullType(String),
    );
    if (object.analysisAllowed != null) {
      yield r'analysisAllowed';
      yield serializers.serialize(
        object.analysisAllowed,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    JournalEntryRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required JournalEntryRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'clientId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.clientId = valueDes;
          break;
        case r'clientCreatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.clientCreatedAt = valueDes;
          break;
        case r'text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.text = valueDes;
          break;
        case r'analysisAllowed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.analysisAllowed = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  JournalEntryRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = JournalEntryRequestBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

