import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ActiveAlarmWidget extends StatefulWidget {
  ActiveAlarmWidget({Key key}) : super(key: key);

  @override
  _ActiveAlarmWidgetState createState() => _ActiveAlarmWidgetState();
}

class _ActiveAlarmWidgetState extends State<ActiveAlarmWidget> {
  bool switchListTileValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFEEEEEE),
      ),
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        color: Color(0xFFF5F5F5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment(0.9, 0.78),
              child: FFButtonWidget(
                onPressed: () {
                  print('Button pressed ...');
                },
                text: 'Date',
                icon: Icon(
                  Icons.date_range,
                  color: Colors.black,
                  size: 25,
                ),
                options: FFButtonOptions(
                  width: 120,
                  height: 40,
                  color: FlutterFlowTheme.primaryColor,
                  textStyle: FlutterFlowTheme.subtitle2.override(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                  ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: 25,
                ),
              ),
            ),
            Align(
              alignment: Alignment(0, -1.14),
              child: SwitchListTile(
                value: switchListTileValue ?? true,
                onChanged: (newValue) =>
                    setState(() => switchListTileValue = newValue),
                title: Text(
                  dateTimeFormat('jms', getCurrentTimestamp),
                  style: FlutterFlowTheme.title3.override(
                    fontFamily: 'Poppins',
                  ),
                ),
                subtitle: Text(
                  dateTimeFormat('MEd', getCurrentTimestamp),
                  style: FlutterFlowTheme.subtitle2.override(
                    fontFamily: 'Poppins',
                  ),
                ),
                tileColor: Color(0xFFF5F5F5),
                activeColor: Color(0xFFA959DE),
                dense: false,
                controlAffinity: ListTileControlAffinity.trailing,
              ),
            )
          ],
        ),
      ),
    );
  }
}
