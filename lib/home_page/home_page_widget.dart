import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../create_alarm_page/create_alarm_page_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  bool switchListTileValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFA959DE),
        automaticallyImplyLeading: false,
        title: Align(
          alignment: Alignment(-0.55, 0),
          child: Text(
            'Medication Reminder',
            textAlign: TextAlign.start,
            style: FlutterFlowTheme.title2.override(
              fontFamily: 'Poppins',
              color: Colors.white,
            ),
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: Colors.white,
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
        child: StreamBuilder<List<PostalarmRecord>>(
          stream: queryPostalarmRecord(
            queryBuilder: (postalarmRecord) => postalarmRecord
                .where('user', isEqualTo: currentUserReference)
                .orderBy('created_time', descending: true),
          ),
          builder: (context, snapshot) {
            // Customize what your widget looks like when it's loading.
            if (!snapshot.hasData) {
              return Center(child: CircularProgressIndicator());
            }
            List<PostalarmRecord> listViewPostalarmRecordList = snapshot.data;
            // Customize what your widget looks like with no query results.
            if (snapshot.data.isEmpty) {
              return Container(
                height: 100,
                child: Center(
                  child: Text('No results.'),
                ),
              );
            }
            return ListView.builder(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.vertical,
              itemCount: listViewPostalarmRecordList.length,
              itemBuilder: (context, listViewIndex) {
                final listViewPostalarmRecord =
                    listViewPostalarmRecordList[listViewIndex];
                return Padding(
                  padding: EdgeInsets.fromLTRB(1, 5, 0, 0),
                  child: Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Color(0xFFF5F5F5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Align(
                      alignment: Alignment(0, 0),
                      child: Container(
                        width: double.infinity,
                        height: 134,
                        decoration: BoxDecoration(
                          color: Color(0xFFEEEEEE),
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
                                  textStyle:
                                      FlutterFlowTheme.subtitle2.override(
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
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                child: SwitchListTile(
                                  value: switchListTileValue ??
                                      listViewPostalarmRecord.alarmSwitch,
                                  onChanged: (newValue) => setState(
                                      () => switchListTileValue = newValue),
                                  title: Text(
                                    listViewPostalarmRecord.medname,
                                    style: FlutterFlowTheme.title3.override(
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                                  tileColor: Color(0xFFF5F5F5),
                                  activeColor: Color(0xFFA959DE),
                                  dense: false,
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment(-0.87, 0.4),
                              child: Text(
                                'Next Intake',
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment(-0.87, 0.7),
                              child: Text(
                                listViewPostalarmRecord.intakeTime,
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
