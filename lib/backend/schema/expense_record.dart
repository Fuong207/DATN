import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ExpenseRecord extends FirestoreRecord {
  ExpenseRecord._(
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

  // "expense_balance" field.
  double? _expenseBalance;
  double get expenseBalance => _expenseBalance ?? 0.0;
  bool hasExpenseBalance() => _expenseBalance != null;

  // "account_id" field.
  String? _accountId;
  String get accountId => _accountId ?? '';
  bool hasAccountId() => _accountId != null;

  // "expenseMonth" field.
  String? _expenseMonth;
  String get expenseMonth => _expenseMonth ?? '';
  bool hasExpenseMonth() => _expenseMonth != null;

  // "expense_desc" field.
  String? _expenseDesc;
  String get expenseDesc => _expenseDesc ?? '';
  bool hasExpenseDesc() => _expenseDesc != null;

  // "document" field.
  String? _document;
  String get document => _document ?? '';
  bool hasDocument() => _document != null;

  void _initializeFields() {
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _category = snapshotData['category'] as String?;
    _expenseBalance = castToType<double>(snapshotData['expense_balance']);
    _accountId = snapshotData['account_id'] as String?;
    _expenseMonth = snapshotData['expenseMonth'] as String?;
    _expenseDesc = snapshotData['expense_desc'] as String?;
    _document = snapshotData['document'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('expense');

  static Stream<ExpenseRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ExpenseRecord.fromSnapshot(s));

  static Future<ExpenseRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ExpenseRecord.fromSnapshot(s));

  static ExpenseRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ExpenseRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ExpenseRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ExpenseRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ExpenseRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ExpenseRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createExpenseRecordData({
  DocumentReference? userRef,
  String? category,
  double? expenseBalance,
  String? accountId,
  String? expenseMonth,
  String? expenseDesc,
  String? document,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userRef': userRef,
      'category': category,
      'expense_balance': expenseBalance,
      'account_id': accountId,
      'expenseMonth': expenseMonth,
      'expense_desc': expenseDesc,
      'document': document,
    }.withoutNulls,
  );

  return firestoreData;
}

class ExpenseRecordDocumentEquality implements Equality<ExpenseRecord> {
  const ExpenseRecordDocumentEquality();

  @override
  bool equals(ExpenseRecord? e1, ExpenseRecord? e2) {
    return e1?.userRef == e2?.userRef &&
        e1?.category == e2?.category &&
        e1?.expenseBalance == e2?.expenseBalance &&
        e1?.accountId == e2?.accountId &&
        e1?.expenseMonth == e2?.expenseMonth &&
        e1?.expenseDesc == e2?.expenseDesc &&
        e1?.document == e2?.document;
  }

  @override
  int hash(ExpenseRecord? e) => const ListEquality().hash([
        e?.userRef,
        e?.category,
        e?.expenseBalance,
        e?.accountId,
        e?.expenseMonth,
        e?.expenseDesc,
        e?.document
      ]);

  @override
  bool isValidKey(Object? o) => o is ExpenseRecord;
}
