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
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  DocumentReference get user;

  @nullable
  @BuiltValueField(wireName: 'duration_start')
  DateTime get durationStart;

  @nullable
  @BuiltValueField(wireName: 'intake_type')
  String get intakeType;

  @nullable
  @BuiltValueField(wireName: 'duration_end')
  String get durationEnd;

  @nullable
  @BuiltValueField(wireName: 'intake_time')
  String get intakeTime;

  @nullable
  String get mealspecific;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(PostalarmRecordBuilder builder) => builder
    ..medname = ''
    ..intakeType = ''
    ..durationEnd = ''
    ..intakeTime = ''
    ..mealspecific = '';

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
  DateTime createdTime,
  DocumentReference user,
  DateTime durationStart,
  String intakeType,
  String durationEnd,
  String intakeTime,
  String mealspecific,
}) =>
    serializers.toFirestore(
        PostalarmRecord.serializer,
        PostalarmRecord((p) => p
          ..medname = medname
          ..createdTime = createdTime
          ..user = user
          ..durationStart = durationStart
          ..intakeType = intakeType
          ..durationEnd = durationEnd
          ..intakeTime = intakeTime
          ..mealspecific = mealspecific));
