import '../auth/auth_util.dart';
import '../components/sign_in_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpWidget extends StatefulWidget {
  SignUpWidget({Key key}) : super(key: key);

  @override
  _SignUpWidgetState createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
  TextEditingController emailController;
  TextEditingController password1Controller;
  bool password1Visibility;
  TextEditingController password2Controller;
  bool password2Visibility;
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    password1Controller = TextEditingController();
    password1Visibility = false;
    password2Controller = TextEditingController();
    password2Visibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: AutovalidateMode.always,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 40, 0, 30),
              child: Image.asset(
                'assets/images/Icon.jpg',
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(4, 0, 0, 20),
                    child: Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0xFFE0E0E0),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: TextFormField(
                          controller: emailController,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: 'Email',
                            hintStyle: GoogleFonts.getFont(
                              'Open Sans',
                              color: Color(0xFF455A64),
                              fontWeight: FontWeight.normal,
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                          ),
                          style: GoogleFonts.getFont(
                            'Open Sans',
                            color: Color(0xFF455A64),
                            fontWeight: FontWeight.normal,
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(4, 0, 4, 20),
                    child: Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0xFFE0E0E0),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: TextFormField(
                          controller: password1Controller,
                          obscureText: !password1Visibility,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            hintStyle: GoogleFonts.getFont(
                              'Open Sans',
                              color: Color(0xFF455A64),
                              fontWeight: FontWeight.normal,
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            suffixIcon: InkWell(
                              onTap: () => setState(
                                () =>
                                    password1Visibility = !password1Visibility,
                              ),
                              child: Icon(
                                password1Visibility
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined,
                                size: 22,
                              ),
                            ),
                          ),
                          style: GoogleFonts.getFont(
                            'Open Sans',
                            color: Color(0xFF455A64),
                            fontWeight: FontWeight.normal,
                          ),
                          keyboardType: TextInputType.visiblePassword,
                          validator: (val) {
                            if (val.isEmpty) {
                              return 'Field is required';
                            }
                            if (val.length < 8) {
                              return 'Requires at least 8 characters.';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(4, 0, 4, 20),
                    child: Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0xFFE0E0E0),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: TextFormField(
                          controller: password2Controller,
                          obscureText: !password2Visibility,
                          decoration: InputDecoration(
                            hintText: 'Confirm Password',
                            hintStyle: GoogleFonts.getFont(
                              'Open Sans',
                              color: Color(0xFF455A64),
                              fontWeight: FontWeight.normal,
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            suffixIcon: InkWell(
                              onTap: () => setState(
                                () =>
                                    password2Visibility = !password2Visibility,
                              ),
                              child: Icon(
                                password2Visibility
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined,
                                size: 22,
                              ),
                            ),
                          ),
                          style: GoogleFonts.getFont(
                            'Open Sans',
                            color: Color(0xFF455A64),
                            fontWeight: FontWeight.normal,
                          ),
                          keyboardType: TextInputType.visiblePassword,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: FFButtonWidget(
                      onPressed: () async {
                        if (!formKey.currentState.validate()) {
                          return;
                        }
                        final user = await createAccountWithEmail(
                          context,
                          emailController.text,
                          password1Controller.text,
                        );
                        if (user == null) {
                          return;
                        }

                        await Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                NavBarPage(initialPage: 'HomePage'),
                          ),
                          (r) => false,
                        );
                      },
                      text: 'Sign up',
                      options: FFButtonOptions(
                        width: 300,
                        height: 50,
                        color: Color(0xFF292C3B),
                        textStyle: GoogleFonts.getFont(
                          'Open Sans',
                          color: Color(0xFFDEDEDE),
                          fontSize: 16,
                        ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 0,
                        ),
                        borderRadius: 25,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: InkWell(
                        onTap: () async {
                          await showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                return SignInWidget();
                              });
                        },
                        child: Text(
                          'Already have an account?',
                          style: GoogleFonts.getFont(
                            'Open Sans',
                            color: Color(0xFFADADAD),
                            fontSize: 14,
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
