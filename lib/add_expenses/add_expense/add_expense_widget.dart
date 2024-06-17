import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/utilities/upload_bottomsheet/upload_bottomsheet_widget.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'add_expense_model.dart';
export 'add_expense_model.dart';

class AddExpenseWidget extends StatefulWidget {
  const AddExpenseWidget({super.key});

  @override
  State<AddExpenseWidget> createState() => _AddExpenseWidgetState();
}

class _AddExpenseWidgetState extends State<AddExpenseWidget> {
  late AddExpenseModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddExpenseModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).tertiary,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).redC,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Expenses',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: double.infinity,
                  height: 180.0,
                  decoration: BoxDecoration(
                    color: Color(0xFFD00E1C),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                      topLeft: Radius.circular(0.0),
                      topRight: Radius.circular(0.0),
                    ),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0.0, 1.0),
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-1.0, -1.0),
                            child: Text(
                              'How Much ?',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color:
                                        FlutterFlowTheme.of(context).tertiary,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: TextFormField(
                              controller: _model.textController1,
                              focusNode: _model.textFieldFocusNode1,
                              autofocus: false,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                                hintText: '0 VND',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .displayLarge
                                    .override(
                                      fontFamily: 'Outfit',
                                      color:
                                          FlutterFlowTheme.of(context).tertiary,
                                      fontSize: 40.0,
                                      letterSpacing: 0.0,
                                    ),
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                focusedErrorBorder: InputBorder.none,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color:
                                        FlutterFlowTheme.of(context).tertiary,
                                    fontSize: 40.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                              maxLines: null,
                              validator: _model.textController1Validator
                                  .asValidator(context),
                            ),
                          ),
                        ]
                            .divide(SizedBox(height: 20.0))
                            .addToEnd(SizedBox(height: 10.0)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                  child: FlutterFlowDropDown<String>(
                    controller: _model.dropDownValueController1 ??=
                        FormFieldController<String>(null),
                    options: [
                      'Shopping',
                      'Food',
                      'Pet',
                      'Traffic',
                      'Hospital',
                      'Other'
                    ],
                    onChanged: (val) =>
                        setState(() => _model.dropDownValue1 = val),
                    width: 360.0,
                    height: 60.0,
                    textStyle: FlutterFlowTheme.of(context).labelLarge.override(
                          fontFamily: 'Readex Pro',
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                        ),
                    hintText: 'Category',
                    icon: Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 24.0,
                    ),
                    fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                    elevation: 0.0,
                    borderColor: FlutterFlowTheme.of(context).alternate,
                    borderWidth: 2.0,
                    borderRadius: 8.0,
                    margin:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    hidesUnderline: true,
                    isOverButton: true,
                    isSearchable: false,
                    isMultiSelect: false,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                  child: Container(
                    width: 360.0,
                    child: TextFormField(
                      controller: _model.textController2,
                      focusNode: _model.textFieldFocusNode2,
                      autofocus: false,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                        hintText: 'Description',
                        hintStyle:
                            FlutterFlowTheme.of(context).labelLarge.override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).alternate,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                      maxLines: 3,
                      minLines: 1,
                      validator:
                          _model.textController2Validator.asValidator(context),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                  child: StreamBuilder<List<AccountsRecord>>(
                    stream: queryAccountsRecord(
                      queryBuilder: (accountsRecord) => accountsRecord.where(
                        'userRef',
                        isEqualTo: currentUserReference,
                      ),
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ),
                        );
                      }
                      List<AccountsRecord> dropDownAccountsRecordList =
                          snapshot.data!;
                      return FlutterFlowDropDown<String>(
                        controller: _model.dropDownValueController2 ??=
                            FormFieldController<String>(
                          _model.dropDownValue2 ??= '',
                        ),
                        options: List<String>.from(dropDownAccountsRecordList
                            .map((e) => e.accountId)
                            .toList()),
                        optionLabels: dropDownAccountsRecordList
                            .map((e) => e.accountName)
                            .toList(),
                        onChanged: (val) async {
                          setState(() => _model.dropDownValue2 = val);
                          setState(() {
                            _model.accountId = _model.dropDownValue2;
                          });
                        },
                        width: 360.0,
                        height: 56.0,
                        textStyle:
                            FlutterFlowTheme.of(context).labelLarge.override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                ),
                        hintText: 'Choose Bank or Wallet',
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        elevation: 0.0,
                        borderColor: FlutterFlowTheme.of(context).alternate,
                        borderWidth: 2.0,
                        borderRadius: 8.0,
                        margin: EdgeInsetsDirectional.fromSTEB(
                            16.0, 4.0, 16.0, 4.0),
                        hidesUnderline: true,
                        isOverButton: true,
                        isSearchable: false,
                        isMultiSelect: false,
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                  child: Container(
                    width: 360.0,
                    height: 56.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).alternate,
                        width: 2.0,
                      ),
                    ),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        await showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor: Color(0x48249689),
                          context: context,
                          builder: (context) {
                            return GestureDetector(
                              onTap: () => _model.unfocusNode.canRequestFocus
                                  ? FocusScope.of(context)
                                      .requestFocus(_model.unfocusNode)
                                  : FocusScope.of(context).unfocus(),
                              child: Padding(
                                padding: MediaQuery.viewInsetsOf(context),
                                child: Container(
                                  height: 300.0,
                                  child: UploadBottomsheetWidget(
                                    uploadAction: () async {
                                      final selectedMedia =
                                          await selectMediaWithSourceBottomSheet(
                                        context: context,
                                        allowPhoto: true,
                                      );
                                      if (selectedMedia != null &&
                                          selectedMedia.every((m) =>
                                              validateFileFormat(
                                                  m.storagePath, context))) {
                                        setState(() =>
                                            _model.isDataUploading = true);
                                        var selectedUploadedFiles =
                                            <FFUploadedFile>[];

                                        var downloadUrls = <String>[];
                                        try {
                                          selectedUploadedFiles = selectedMedia
                                              .map((m) => FFUploadedFile(
                                                    name: m.storagePath
                                                        .split('/')
                                                        .last,
                                                    bytes: m.bytes,
                                                    height:
                                                        m.dimensions?.height,
                                                    width: m.dimensions?.width,
                                                    blurHash: m.blurHash,
                                                  ))
                                              .toList();

                                          downloadUrls = (await Future.wait(
                                            selectedMedia.map(
                                              (m) async => await uploadData(
                                                  m.storagePath, m.bytes),
                                            ),
                                          ))
                                              .where((u) => u != null)
                                              .map((u) => u!)
                                              .toList();
                                        } finally {
                                          _model.isDataUploading = false;
                                        }
                                        if (selectedUploadedFiles.length ==
                                                selectedMedia.length &&
                                            downloadUrls.length ==
                                                selectedMedia.length) {
                                          setState(() {
                                            _model.uploadedLocalFile =
                                                selectedUploadedFiles.first;
                                            _model.uploadedFileUrl =
                                                downloadUrls.first;
                                          });
                                        } else {
                                          setState(() {});
                                          return;
                                        }
                                      }
                                    },
                                  ),
                                ),
                              ),
                            );
                          },
                        ).then((value) => safeSetState(() {}));
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.attachment_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          Text(
                            'Add Attachment',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ].divide(SizedBox(width: 10.0)),
                      ),
                    ),
                  ),
                ),
                FFButtonWidget(
                  onPressed: () async {
                    var expenseRecordReference = ExpenseRecord.collection.doc();
                    await expenseRecordReference.set(createExpenseRecordData(
                      userRef: currentUserReference,
                      category: _model.dropDownValue1,
                      document: _model.uploadedFileUrl,
                      expenseBalance:
                          double.tryParse(_model.textController1.text),
                      accountId: _model.accountId,
                      expenseMonth: dateTimeFormat('MMMM', getCurrentTimestamp),
                      expenseDesc: _model.textController2.text,
                    ));
                    _model.expenseData = ExpenseRecord.getDocumentFromData(
                        createExpenseRecordData(
                          userRef: currentUserReference,
                          category: _model.dropDownValue1,
                          document: _model.uploadedFileUrl,
                          expenseBalance:
                              double.tryParse(_model.textController1.text),
                          accountId: _model.accountId,
                          expenseMonth:
                              dateTimeFormat('MMMM', getCurrentTimestamp),
                          expenseDesc: _model.textController2.text,
                        ),
                        expenseRecordReference);

                    await TransactionRecord.collection
                        .doc()
                        .set(createTransactionRecordData(
                          id: random_data.randomString(
                            5,
                            10,
                            true,
                            true,
                            true,
                          ),
                          amount: double.tryParse(_model.textController1.text),
                          tType: 'D',
                          category: _model.dropDownValue1,
                          userRef: currentUserReference,
                          desc: _model.textController2.text,
                          tDay: dateTimeFormat('EEEE', getCurrentTimestamp),
                          time: getCurrentTimestamp,
                        ));
                    _model.expense = await queryAccountsRecordOnce(
                      queryBuilder: (accountsRecord) =>
                          accountsRecord.where(Filter.or(
                        Filter(
                          'userRef',
                          isEqualTo: currentUserReference,
                        ),
                        Filter(
                          'account_id',
                          isEqualTo: _model.accountId,
                        ),
                      )),
                      singleRecord: true,
                    ).then((s) => s.firstOrNull);

                    await _model.expense!.reference.update({
                      ...mapToFirestore(
                        {
                          'account_balance': FieldValue.increment(
                              -(double.parse(_model.textController1.text))),
                        },
                      ),
                    });
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'Expense Added Successfully',
                          style: TextStyle(
                            color: FlutterFlowTheme.of(context).tertiary,
                          ),
                        ),
                        duration: Duration(milliseconds: 4000),
                        backgroundColor: FlutterFlowTheme.of(context).redC,
                      ),
                    );

                    context.pushNamed('Home_Page');

                    setState(() {});
                  },
                  text: 'Continue',
                  options: FFButtonOptions(
                    width: 300.0,
                    height: 40.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: Color(0xFF1C756E),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Roboto',
                          color: Colors.white,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                        ),
                    elevation: 3.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ].divide(SizedBox(height: 22.0)).addToEnd(SizedBox(height: 50.0)),
            ),
          ),
        ),
      ),
    );
  }
}
