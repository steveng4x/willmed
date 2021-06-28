import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AlarmPageWidget extends StatefulWidget {
  AlarmPageWidget({Key key}) : super(key: key);

  @override
  _AlarmPageWidgetState createState() => _AlarmPageWidgetState();
}

class _AlarmPageWidgetState extends State<AlarmPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
    );
  }
}
