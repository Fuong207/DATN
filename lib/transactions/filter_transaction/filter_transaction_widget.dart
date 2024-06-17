import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'filter_transaction_model.dart';
export 'filter_transaction_model.dart';

class FilterTransactionWidget extends StatefulWidget {
  const FilterTransactionWidget({super.key});

  @override
  State<FilterTransactionWidget> createState() =>
      _FilterTransactionWidgetState();
}

class _FilterTransactionWidgetState extends State<FilterTransactionWidget> {
  late FilterTransactionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FilterTransactionModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 100.0,
                height: 5.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primary,
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Filter Transactions',
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Outfit',
                          fontSize: 20.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  Container(
                    width: 120.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).accent2,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Text(
                        'Reset',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: Color(0xFF085A55),
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                  ),
                ].divide(SizedBox(width: 10.0)),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Filter By',
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Outfit',
                          fontSize: 20.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ].divide(SizedBox(width: 10.0)),
              ),
              Align(
                alignment: AlignmentDirectional(-1.0, 0.0),
                child: Container(
                  width: double.infinity,
                  height: 56.0,
                  decoration: BoxDecoration(),
                  child: FlutterFlowChoiceChips(
                    options: [
                      ChipData('Income'),
                      ChipData('Expense'),
                      ChipData('Transfer')
                    ],
                    onChanged: (val) => setState(
                        () => _model.choiceChipsValue = val?.firstOrNull),
                    selectedChipStyle: ChipStyle(
                      backgroundColor: Color(0x4D39D2C0),
                      textStyle:
                          FlutterFlowTheme.of(context).titleLarge.override(
                                fontFamily: 'Outfit',
                                color: Color(0xFF085A55),
                                fontSize: 18.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.normal,
                              ),
                      iconColor: FlutterFlowTheme.of(context).primaryText,
                      iconSize: 30.0,
                      labelPadding: EdgeInsets.all(10.0),
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    unselectedChipStyle: ChipStyle(
                      backgroundColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      textStyle:
                          FlutterFlowTheme.of(context).titleLarge.override(
                                fontFamily: 'Outfit',
                                fontSize: 18.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.normal,
                              ),
                      iconColor: FlutterFlowTheme.of(context).secondaryText,
                      iconSize: 18.0,
                      labelPadding: EdgeInsets.all(10.0),
                      elevation: 0.0,
                      borderColor: FlutterFlowTheme.of(context).alternate,
                      borderWidth: 1.0,
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    chipSpacing: 20.0,
                    rowSpacing: 17.0,
                    multiselect: false,
                    alignment: WrapAlignment.spaceBetween,
                    controller: _model.choiceChipsValueController ??=
                        FormFieldController<List<String>>(
                      [],
                    ),
                    wrapped: true,
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Category',
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Outfit',
                          fontSize: 20.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ].divide(SizedBox(width: 10.0)),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Choose Category',
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Outfit',
                          fontSize: 20.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                      child: FlutterFlowDropDown<String>(
                        controller: _model.dropDownValueController ??=
                            FormFieldController<String>(null),
                        options: ['Option 1'],
                        onChanged: (val) =>
                            setState(() => _model.dropDownValue = val),
                        width: 360.0,
                        height: 56.0,
                        textStyle:
                            FlutterFlowTheme.of(context).labelLarge.override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                ),
                        hintText: 'Shop',
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
                      ),
                    ),
                  ),
                ].divide(SizedBox(width: 10.0)),
              ),
              FFButtonWidget(
                onPressed: () async {
                  context.safePop();
                },
                text: 'Apply',
                options: FFButtonOptions(
                  width: 220.0,
                  height: 40.0,
                  padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
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
            ].divide(SizedBox(height: 20.0)),
          ),
        ),
      ),
    );
  }
}
