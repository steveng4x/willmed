import '../create_alarm_page/create_alarm_page_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Align(
          alignment: Alignment(-0.55, 0),
          child: Text(
            'Medication Reminder',
            textAlign: TextAlign.start,
            style: FlutterFlowTheme.title2.override(
              fontFamily: 'Poppins',
              color: Color(0xFFA959DE),
            ),
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: Color(0xFFEBEBEB),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CreateAlarmPageWidget(),
            ),
          );
        },
        backgroundColor: FlutterFlowTheme.primaryColor,
        icon: Icon(
          Icons.add,
        ),
        elevation: 8,
        label: Text(
          'Add Reminder',
          style: FlutterFlowTheme.bodyText1.override(
            fontFamily: 'Open Sans',
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [],
          ),
        ),
      ),
    );
  }
}
