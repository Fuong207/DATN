import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/utilities/add_buttons/add_buttons_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'nav_bar_model.dart';
export 'nav_bar_model.dart';

class NavBarWidget extends StatefulWidget {
  const NavBarWidget({
    super.key,
    String? pageName,
    this.addButtonAction,
  }) : this.pageName = pageName ?? 'name';

  final String pageName;
  final Future Function()? addButtonAction;

  @override
  State<NavBarWidget> createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends State<NavBarWidget> {
  late NavBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavBarModel());
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
      height: 70.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).tertiary,
      ),
      child: Align(
        alignment: AlignmentDirectional(0.0, 1.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                if (widget.pageName == 'Home') {
                  return;
                }

                context.pushNamed('Home_Page');

                return;
              },
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: FlutterFlowIconButton(
                      borderWidth: 0.0,
                      buttonSize: 35.0,
                      fillColor: FlutterFlowTheme.of(context).tertiary,
                      icon: Icon(
                        Icons.home,
                        color: valueOrDefault<Color>(
                          widget.pageName == 'Home'
                              ? FlutterFlowTheme.of(context).primary
                              : FlutterFlowTheme.of(context).secondaryText,
                          FlutterFlowTheme.of(context).secondaryText,
                        ),
                        size: 24.0,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                  ),
                  Text(
                    'Home',
                    style: FlutterFlowTheme.of(context).bodySmall.override(
                          fontFamily: 'Readex Pro',
                          color: valueOrDefault<Color>(
                            widget.pageName == 'Home'
                                ? FlutterFlowTheme.of(context).primary
                                : FlutterFlowTheme.of(context).secondaryText,
                            FlutterFlowTheme.of(context).secondaryText,
                          ),
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ],
              ),
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                if (widget.pageName == 'Transactions') {
                  return;
                }

                context.pushNamed('Transactions');

                return;
              },
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: FlutterFlowIconButton(
                      borderWidth: 0.0,
                      buttonSize: 35.0,
                      fillColor: FlutterFlowTheme.of(context).tertiary,
                      icon: Icon(
                        Icons.payment,
                        color: valueOrDefault<Color>(
                          widget.pageName == 'Transactions'
                              ? FlutterFlowTheme.of(context).primary
                              : FlutterFlowTheme.of(context).secondaryText,
                          FlutterFlowTheme.of(context).secondaryText,
                        ),
                        size: 24.0,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                  ),
                  Text(
                    'Transactions',
                    style: FlutterFlowTheme.of(context).bodySmall.override(
                          fontFamily: 'Readex Pro',
                          color: valueOrDefault<Color>(
                            widget.pageName == 'Transactions'
                                ? FlutterFlowTheme.of(context).primary
                                : FlutterFlowTheme.of(context).secondaryText,
                            FlutterFlowTheme.of(context).secondaryText,
                          ),
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ],
              ),
            ),
            Container(
              width: 70.0,
              height: 70.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).accent2,
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                child: Container(
                  width: 65.0,
                  height: 65.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primary,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).primaryBackground,
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
                        backgroundColor: Colors.transparent,
                        context: context,
                        builder: (context) {
                          return Padding(
                            padding: MediaQuery.viewInsetsOf(context),
                            child: AddButtonsWidget(),
                          );
                        },
                      ).then((value) => safeSetState(() {}));
                    },
                    child: Icon(
                      Icons.add,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 24.0,
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                if (widget.pageName == 'Budget') {
                  return;
                }

                context.pushNamed('Budget');

                return;
              },
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: FlutterFlowIconButton(
                      borderWidth: 0.0,
                      buttonSize: 35.0,
                      fillColor: FlutterFlowTheme.of(context).tertiary,
                      icon: Icon(
                        Icons.monetization_on_outlined,
                        color: valueOrDefault<Color>(
                          widget.pageName == 'Budget'
                              ? FlutterFlowTheme.of(context).primary
                              : FlutterFlowTheme.of(context).secondaryText,
                          FlutterFlowTheme.of(context).secondaryText,
                        ),
                        size: 24.0,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                  ),
                  Text(
                    'Budget',
                    style: FlutterFlowTheme.of(context).bodySmall.override(
                          fontFamily: 'Readex Pro',
                          color: valueOrDefault<Color>(
                            widget.pageName == 'Budget'
                                ? FlutterFlowTheme.of(context).primary
                                : FlutterFlowTheme.of(context).secondaryText,
                            FlutterFlowTheme.of(context).secondaryText,
                          ),
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ],
              ),
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                if (widget.pageName == 'Profile') {
                  return;
                }

                context.pushNamed('Profile');

                return;
              },
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: FlutterFlowIconButton(
                      borderWidth: 0.0,
                      buttonSize: 35.0,
                      fillColor: FlutterFlowTheme.of(context).tertiary,
                      icon: Icon(
                        Icons.person,
                        color: valueOrDefault<Color>(
                          widget.pageName == 'Profile'
                              ? FlutterFlowTheme.of(context).primary
                              : FlutterFlowTheme.of(context).secondaryText,
                          FlutterFlowTheme.of(context).secondaryText,
                        ),
                        size: 24.0,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                  ),
                  Text(
                    'Profile',
                    style: FlutterFlowTheme.of(context).bodySmall.override(
                          fontFamily: 'Readex Pro',
                          color: valueOrDefault<Color>(
                            widget.pageName == 'Profile'
                                ? FlutterFlowTheme.of(context).primary
                                : FlutterFlowTheme.of(context).secondaryText,
                            FlutterFlowTheme.of(context).secondaryText,
                          ),
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ],
              ),
            ),
          ].addToStart(SizedBox(width: 3.0)).addToEnd(SizedBox(width: 3.0)),
        ),
      ),
    );
  }
}
