import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OCRPageWidget extends StatefulWidget {
  OCRPageWidget({Key key}) : super(key: key);

  @override
  _OCRPageWidgetState createState() => _OCRPageWidgetState();
}

class _OCRPageWidgetState extends State<OCRPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
    );
  }
}
