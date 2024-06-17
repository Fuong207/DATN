import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AccountsRecord extends FirestoreRecord {
  AccountsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "account_name" field.
  String? _accountName;
  String get accountName => _accountName ?? '';
  bool hasAccountName() => _accountName != null;

  // "account_type" field.
  String? _accountType;
  String get accountType => _accountType ?? '';
  bool hasAccountType() => _accountType != null;

  // "account_balance" field.
  double? _accountBalance;
  double get accountBalance => _accountBalance ?? 0.0;
  bool hasAccountBalance() => _accountBalance != null;

  // "account_createDate" field.
  String? _accountCreateDate;
  String get accountCreateDate => _accountCreateDate ?? '';
  bool hasAccountCreateDate() => _accountCreateDate != null;

  // "account_Date" field.
  DateTime? _accountDate;
  DateTime? get accountDate => _accountDate;
  bool hasAccountDate() => _accountDate != null;

  // "account_month" field.
  String? _accountMonth;
  String get accountMonth => _accountMonth ?? '';
  bool hasAccountMonth() => _accountMonth != null;

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "is_bank" field.
  bool? _isBank;
  bool get isBank => _isBank ?? false;
  bool hasIsBank() => _isBank != null;

  // "bank_name" field.
  String? _bankName;
  String get bankName => _bankName ?? '';
  bool hasBankName() => _bankName != null;

  // "account_id" field.
  String? _accountId;
  String get accountId => _accountId ?? '';
  bool hasAccountId() => _accountId != null;

  void _initializeFields() {
    _accountName = snapshotData['account_name'] as String?;
    _accountType = snapshotData['account_type'] as String?;
    _accountBalance = castToType<double>(snapshotData['account_balance']);
    _accountCreateDate = snapshotData['account_createDate'] as String?;
    _accountDate = snapshotData['account_Date'] as DateTime?;
    _accountMonth = snapshotData['account_month'] as String?;
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _isBank = snapshotData['is_bank'] as bool?;
    _bankName = snapshotData['bank_name'] as String?;
    _accountId = snapshotData['account_id'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('accounts');

  static Stream<AccountsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AccountsRecord.fromSnapshot(s));

  static Future<AccountsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AccountsRecord.fromSnapshot(s));

  static AccountsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AccountsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AccountsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AccountsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AccountsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AccountsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAccountsRecordData({
  String? accountName,
  String? accountType,
  double? accountBalance,
  String? accountCreateDate,
  DateTime? accountDate,
  String? accountMonth,
  DocumentReference? userRef,
  bool? isBank,
  String? bankName,
  String? accountId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'account_name': accountName,
      'account_type': accountType,
      'account_balance': accountBalance,
      'account_createDate': accountCreateDate,
      'account_Date': accountDate,
      'account_month': accountMonth,
      'userRef': userRef,
      'is_bank': isBank,
      'bank_name': bankName,
      'account_id': accountId,
    }.withoutNulls,
  );

  return firestoreData;
}

class AccountsRecordDocumentEquality implements Equality<AccountsRecord> {
  const AccountsRecordDocumentEquality();

  @override
  bool equals(AccountsRecord? e1, AccountsRecord? e2) {
    return e1?.accountName == e2?.accountName &&
        e1?.accountType == e2?.accountType &&
        e1?.accountBalance == e2?.accountBalance &&
        e1?.accountCreateDate == e2?.accountCreateDate &&
        e1?.accountDate == e2?.accountDate &&
        e1?.accountMonth == e2?.accountMonth &&
        e1?.userRef == e2?.userRef &&
        e1?.isBank == e2?.isBank &&
        e1?.bankName == e2?.bankName &&
        e1?.accountId == e2?.accountId;
  }

  @override
  int hash(AccountsRecord? e) => const ListEquality().hash([
        e?.accountName,
        e?.accountType,
        e?.accountBalance,
        e?.accountCreateDate,
        e?.accountDate,
        e?.accountMonth,
        e?.userRef,
        e?.isBank,
        e?.bankName,
        e?.accountId
      ]);

  @override
  bool isValidKey(Object? o) => o is AccountsRecord;
}
