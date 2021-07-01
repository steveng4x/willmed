import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StatisticPageWidget extends StatefulWidget {
  StatisticPageWidget({Key key}) : super(key: key);

  @override
  _StatisticPageWidgetState createState() => _StatisticPageWidgetState();
}

class _StatisticPageWidgetState extends State<StatisticPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.primaryColor,
        automaticallyImplyLeading: true,
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
    );
  }
}
