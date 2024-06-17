import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'budget_detail_model.dart';
export 'budget_detail_model.dart';

class BudgetDetailWidget extends StatefulWidget {
  const BudgetDetailWidget({super.key});

  @override
  State<BudgetDetailWidget> createState() => _BudgetDetailWidgetState();
}

class _BudgetDetailWidgetState extends State<BudgetDetailWidget> {
  late BudgetDetailModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BudgetDetailModel());
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
          backgroundColor: FlutterFlowTheme.of(context).primary,
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
            'Detail Budget',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 18.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
              child: Icon(
                Icons.delete,
                color: FlutterFlowTheme.of(context).tertiary,
                size: 24.0,
              ),
            ),
          ],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 135.0,
                  height: 41.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).accent2,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.solidCircle,
                          color: Color(0xFFEE8B60),
                          size: 24.0,
                        ),
                        Text(
                          'Shopping',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ].divide(SizedBox(width: 10.0)),
                    ),
                  ),
                ),
                Text(
                  'Remaining',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 20.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Text(
                    '0 VND',
                    style: FlutterFlowTheme.of(context).headlineLarge.override(
                          fontFamily: 'Outfit',
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Container(
                    height: 18.0,
                    decoration: BoxDecoration(
                      color: Color(0x3D39D2C0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: LinearPercentIndicator(
                      percent: 0.9,
                      lineHeight: 30.0,
                      animation: true,
                      animateFromLastPercent: true,
                      progressColor: Color(0xFFEE8B60),
                      backgroundColor: Color(0x001CA59C),
                      barRadius: Radius.circular(6.0),
                      padding: EdgeInsets.zero,
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.info_sharp,
                      color: Color(0xE357636C),
                      size: 24.0,
                    ),
                    Text(
                      'You have excced the limit !',
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily: 'Readex Pro',
                            color: FlutterFlowTheme.of(context).error,
                            fontSize: 16.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ].divide(SizedBox(width: 10.0)),
                ),
                Spacer(),
                FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('Edit_Budget');
                  },
                  text: 'Edit',
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
              ]
                  .divide(SizedBox(height: 10.0))
                  .addToStart(SizedBox(height: 20.0)),
            ),
          ),
        ),
      ),
    );
  }
}
