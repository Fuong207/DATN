import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:local_auth/local_auth.dart';
import 'package:provider/provider.dart';
import 'app_lock_model.dart';
export 'app_lock_model.dart';

class AppLockWidget extends StatefulWidget {
  const AppLockWidget({super.key});

  @override
  State<AppLockWidget> createState() => _AppLockWidgetState();
}

class _AppLockWidgetState extends State<AppLockWidget> {
  late AppLockModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AppLockModel());
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
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          body: SafeArea(
            top: true,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, -1.0),
                    child: Text(
                      'Verify your self befor entering into the app',
                      textAlign: TextAlign.center,
                      style:
                          FlutterFlowTheme.of(context).displayMedium.override(
                                fontFamily: 'Outfit',
                                letterSpacing: 0.0,
                                lineHeight: 1.2,
                              ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      final _localAuth = LocalAuthentication();
                      bool _isBiometricSupported =
                          await _localAuth.isDeviceSupported();

                      if (_isBiometricSupported) {
                        _model.verify = await _localAuth.authenticate(
                            localizedReason:
                                'Verify your self befor entering into the app');
                        setState(() {});
                      }

                      if (_model.verify!) {
                        context.goNamed('Add_Expense');
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Verification Failed',
                              style: TextStyle(
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                            ),
                            duration: Duration(milliseconds: 4000),
                            backgroundColor:
                                FlutterFlowTheme.of(context).secondary,
                          ),
                        );
                      }

                      setState(() {});
                    },
                    child: Icon(
                      Icons.fingerprint_sharp,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 100.0,
                    ),
                  ),
                ]
                    .divide(SizedBox(height: 50.0))
                    .addToStart(SizedBox(height: 100.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
