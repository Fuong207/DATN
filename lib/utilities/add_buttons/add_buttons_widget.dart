import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'add_buttons_model.dart';
export 'add_buttons_model.dart';

class AddButtonsWidget extends StatefulWidget {
  const AddButtonsWidget({super.key});

  @override
  State<AddButtonsWidget> createState() => _AddButtonsWidgetState();
}

class _AddButtonsWidgetState extends State<AddButtonsWidget> {
  late AddButtonsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddButtonsModel());
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
        gradient: LinearGradient(
          colors: [Color(0x00F1F4F8), FlutterFlowTheme.of(context).accent2],
          stops: [0.0, 1.0],
          begin: AlignmentDirectional(0.0, -1.0),
          end: AlignmentDirectional(0, 1.0),
        ),
      ),
      child: Align(
        alignment: AlignmentDirectional(0.0, 1.0),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 85.0),
          child: Container(
            width: double.infinity,
            height: 150.0,
            child: Stack(
              alignment: AlignmentDirectional(0.0, 0.0),
              children: [
                Align(
                  alignment: AlignmentDirectional(-0.4, 0.0),
                  child: FlutterFlowIconButton(
                    borderRadius: 10.0,
                    borderWidth: 1.0,
                    buttonSize: 40.0,
                    fillColor: Color(0xFF23D845),
                    icon: FaIcon(
                      FontAwesomeIcons.download,
                      color: FlutterFlowTheme.of(context).tertiary,
                      size: 24.0,
                    ),
                    onPressed: () async {
                      context.pushNamed('Add_Income');
                    },
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.4, 0.0),
                  child: FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 10.0,
                    borderWidth: 1.0,
                    buttonSize: 40.0,
                    fillColor: FlutterFlowTheme.of(context).error,
                    icon: FaIcon(
                      FontAwesomeIcons.upload,
                      color: FlutterFlowTheme.of(context).tertiary,
                      size: 24.0,
                    ),
                    onPressed: () async {
                      context.pushNamed('Add_Expense');
                    },
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 10.0,
                    borderWidth: 1.0,
                    buttonSize: 40.0,
                    fillColor: FlutterFlowTheme.of(context).warning,
                    icon: Icon(
                      Icons.currency_exchange,
                      color: FlutterFlowTheme.of(context).tertiary,
                      size: 24.0,
                    ),
                    onPressed: () async {
                      context.pushNamed('Transfer');
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
