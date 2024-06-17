import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TransactionRecord extends FirestoreRecord {
  TransactionRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  bool hasAmount() => _amount != null;

  // "t_type" field.
  String? _tType;
  String get tType => _tType ?? '';
  bool hasTType() => _tType != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "desc" field.
  String? _desc;
  String get desc => _desc ?? '';
  bool hasDesc() => _desc != null;

  // "t_day" field.
  String? _tDay;
  String get tDay => _tDay ?? '';
  bool hasTDay() => _tDay != null;

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _amount = castToType<double>(snapshotData['amount']);
    _tType = snapshotData['t_type'] as String?;
    _category = snapshotData['category'] as String?;
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _desc = snapshotData['desc'] as String?;
    _tDay = snapshotData['t_day'] as String?;
    _time = snapshotData['time'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('transaction');

  static Stream<TransactionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TransactionRecord.fromSnapshot(s));

  static Future<TransactionRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TransactionRecord.fromSnapshot(s));

  static TransactionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TransactionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TransactionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TransactionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TransactionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TransactionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTransactionRecordData({
  String? id,
  double? amount,
  String? tType,
  String? category,
  DocumentReference? userRef,
  String? desc,
  String? tDay,
  DateTime? time,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'amount': amount,
      't_type': tType,
      'category': category,
      'userRef': userRef,
      'desc': desc,
      't_day': tDay,
      'time': time,
    }.withoutNulls,
  );

  return firestoreData;
}

class TransactionRecordDocumentEquality implements Equality<TransactionRecord> {
  const TransactionRecordDocumentEquality();

  @override
  bool equals(TransactionRecord? e1, TransactionRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.amount == e2?.amount &&
        e1?.tType == e2?.tType &&
        e1?.category == e2?.category &&
        e1?.userRef == e2?.userRef &&
        e1?.desc == e2?.desc &&
        e1?.tDay == e2?.tDay &&
        e1?.time == e2?.time;
  }

  @override
  int hash(TransactionRecord? e) => const ListEquality().hash([
        e?.id,
        e?.amount,
        e?.tType,
        e?.category,
        e?.userRef,
        e?.desc,
        e?.tDay,
        e?.time
      ]);

  @override
  bool isValidKey(Object? o) => o is TransactionRecord;
}
