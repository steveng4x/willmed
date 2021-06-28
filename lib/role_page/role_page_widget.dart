import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RolePageWidget extends StatefulWidget {
  RolePageWidget({Key key}) : super(key: key);

  @override
  _RolePageWidgetState createState() => _RolePageWidgetState();
}

class _RolePageWidgetState extends State<RolePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.asset(
                'assets/images/Group 9.png',
              ).image,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Container(
                  width: 300,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Color(0x00FFFFFF),
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(30, 2, 0, 0),
                    child: Text(
                      'What is your Role ?',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.title2.override(
                        fontFamily: 'Poppins',
                        color: Color(0xFFA959DE),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 257,
                      height: 240,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Image.asset(
                        'assets/images/Group 24.png',
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                      child: Container(
                        width: 300,
                        height: 240,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0, 3, 0, 0),
                          child: Image.asset(
                            'assets/images/Group 22.png',
                            width: double.infinity,
                            height: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
