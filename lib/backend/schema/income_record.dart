import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class IncomeRecord extends FirestoreRecord {
  IncomeRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "income_balance" field.
  double? _incomeBalance;
  double get incomeBalance => _incomeBalance ?? 0.0;
  bool hasIncomeBalance() => _incomeBalance != null;

  // "account_id" field.
  String? _accountId;
  String get accountId => _accountId ?? '';
  bool hasAccountId() => _accountId != null;

  // "income_desc" field.
  String? _incomeDesc;
  String get incomeDesc => _incomeDesc ?? '';
  bool hasIncomeDesc() => _incomeDesc != null;

  // "document" field.
  String? _document;
  String get document => _document ?? '';
  bool hasDocument() => _document != null;

  // "incomeMonth" field.
  String? _incomeMonth;
  String get incomeMonth => _incomeMonth ?? '';
  bool hasIncomeMonth() => _incomeMonth != null;

  void _initializeFields() {
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _category = snapshotData['category'] as String?;
    _incomeBalance = castToType<double>(snapshotData['income_balance']);
    _accountId = snapshotData['account_id'] as String?;
    _incomeDesc = snapshotData['income_desc'] as String?;
    _document = snapshotData['document'] as String?;
    _incomeMonth = snapshotData['incomeMonth'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('income');

  static Stream<IncomeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => IncomeRecord.fromSnapshot(s));

  static Future<IncomeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => IncomeRecord.fromSnapshot(s));

  static IncomeRecord fromSnapshot(DocumentSnapshot snapshot) => IncomeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static IncomeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      IncomeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'IncomeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is IncomeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createIncomeRecordData({
  DocumentReference? userRef,
  String? category,
  double? incomeBalance,
  String? accountId,
  String? incomeDesc,
  String? document,
  String? incomeMonth,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userRef': userRef,
      'category': category,
      'income_balance': incomeBalance,
      'account_id': accountId,
      'income_desc': incomeDesc,
      'document': document,
      'incomeMonth': incomeMonth,
    }.withoutNulls,
  );

  return firestoreData;
}

class IncomeRecordDocumentEquality implements Equality<IncomeRecord> {
  const IncomeRecordDocumentEquality();

  @override
  bool equals(IncomeRecord? e1, IncomeRecord? e2) {
    return e1?.userRef == e2?.userRef &&
        e1?.category == e2?.category &&
        e1?.incomeBalance == e2?.incomeBalance &&
        e1?.accountId == e2?.accountId &&
        e1?.incomeDesc == e2?.incomeDesc &&
        e1?.document == e2?.document &&
        e1?.incomeMonth == e2?.incomeMonth;
  }

  @override
  int hash(IncomeRecord? e) => const ListEquality().hash([
        e?.userRef,
        e?.category,
        e?.incomeBalance,
        e?.accountId,
        e?.incomeDesc,
        e?.document,
        e?.incomeMonth
      ]);

  @override
  bool isValidKey(Object? o) => o is IncomeRecord;
}
