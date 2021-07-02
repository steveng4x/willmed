import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UpdateAlarmPageWidget extends StatefulWidget {
  UpdateAlarmPageWidget({Key key}) : super(key: key);

  @override
  _UpdateAlarmPageWidgetState createState() => _UpdateAlarmPageWidgetState();
}

class _UpdateAlarmPageWidgetState extends State<UpdateAlarmPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Color(0xFF505050)),
        automaticallyImplyLeading: true,
        title: Align(
          alignment: Alignment(-1, 0),
          child: AutoSizeText(
            'Update Reminder',
            textAlign: TextAlign.start,
            style: FlutterFlowTheme.bodyText1.override(
              fontFamily: 'Poppins',
              color: FlutterFlowTheme.primaryColor,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
    );
  }
}
