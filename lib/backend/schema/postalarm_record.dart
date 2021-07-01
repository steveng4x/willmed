import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'postalarm_record.g.dart';

abstract class PostalarmRecord
    implements Built<PostalarmRecord, PostalarmRecordBuilder> {
  static Serializer<PostalarmRecord> get serializer =>
      _$postalarmRecordSerializer;

  @nullable
  String get medname;

  @nullable
  BuiltList<DateTime> get duration;

  @nullable
  String get intake;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  @BuiltValueField(wireName: 'intake_time')
  BuiltList<DateTime> get intakeTime;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(PostalarmRecordBuilder builder) => builder
    ..medname = ''
    ..duration = ListBuilder()
    ..intake = ''
    ..intakeTime = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('postalarm');

  static Stream<PostalarmRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  PostalarmRecord._();
  factory PostalarmRecord([void Function(PostalarmRecordBuilder) updates]) =
      _$PostalarmRecord;

  static PostalarmRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(
          serializer, {...data, kDocumentReferenceField: reference});
}

Map<String, dynamic> createPostalarmRecordData({
  String medname,
  String intake,
  DateTime createdTime,
}) =>
    serializers.toFirestore(
        PostalarmRecord.serializer,
        PostalarmRecord((p) => p
          ..medname = medname
          ..duration = null
          ..intake = intake
          ..createdTime = createdTime
          ..intakeTime = null));
