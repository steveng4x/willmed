import '../components/sign_in_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPageWidget extends StatefulWidget {
  LoginPageWidget({Key key}) : super(key: key);

  @override
  _LoginPageWidgetState createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget> {
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
            color: Color(0x00EEEEEE),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.asset(
                'assets/images/Group 9.png',
              ).image,
            ),
          ),
          child: Align(
            alignment: Alignment(0, 0),
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 80),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Align(
                    alignment: Alignment(0, 0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        await showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.6,
                                child: SignInWidget(),
                              );
                            });
                      },
                      text: 'Get Started',
                      options: FFButtonOptions(
                        width: 300,
                        height: 40,
                        color: Color(0xFFA959DE),
                        textStyle: FlutterFlowTheme.subtitle2.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.tertiaryColor,
                        ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: 20,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(0, 0),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 320),
                      child: Image.asset(
                        'assets/images/Component 13 – 1.png',
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
