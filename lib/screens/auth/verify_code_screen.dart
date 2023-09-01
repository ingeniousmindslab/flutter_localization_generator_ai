import 'package:diy_boox/di_container.dart' as di;
import 'package:diy_boox/provider/auth_provider.dart';
import 'package:diy_boox/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:m_toast/m_toast.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/utils/app_constants.dart';
import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/math_utils.dart';
import '../../widgets/button.dart';
import '../../widgets/common_image_view.dart';

class VerifyCodeScreen extends StatefulWidget {
  String? email;
  String? userid;

  VerifyCodeScreen({super.key, required this.email, required this.userid});

  @override
  State<VerifyCodeScreen> createState() => _VerifyCodeScreenState();
}

class _VerifyCodeScreenState extends State<VerifyCodeScreen> {
  String? otp;
  late SharedPreferences prefs;

  @override
  Widget build(BuildContext context) {
    final verifyProvider = Provider.of<AuthProvider>(context, listen: false);

    return Scaffold(
      backgroundColor: Color(0xffFCF9FF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(20, 30, 0, 0),
                child: CommonImageView(
                  imagePath: ImageConstant.logoColor,
                  height: getVerticalSize(
                    42,
                  ),
                  width: getHorizontalSize(
                    95,
                  ),
                ),
              ),
              Center(
                child: CommonImageView(
                  imagePath: 'assets/verifyillu.png',
                  height: getVerticalSize(
                    230,
                  ),
                  width: getHorizontalSize(
                    245,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                        child: Text(
                          'Verification Code',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontFamily: 'Sans',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                        child: Text(
                          'We have sent code to your Email ID\n${widget.email}',
                          style: TextStyle(
                            color: Color(0xFF5A5A5D),
                            fontSize: 16,
                            fontFamily: 'Sans',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 20,
                          bottom: 20,
                        ),
                        child: OtpTextField(
                          cursorColor: ColorConstant.primaryColor,
                          borderWidth: 1,
                          borderRadius: BorderRadius.circular(5),
                          fieldWidth: 46,
                          numberOfFields: 6,
                          borderColor: ColorConstant.primaryColor1,
                          //set to true to show as box or false to show as dash
                          showFieldAsBox: true,
                          //runs when a code is typed in
                          onCodeChanged: (String code) {
                            //handle validation or checks here
                          },
                          //runs when every textfield is filled
                          onSubmit: (String verificationCode) {
                            setState(() {
                              otp = verificationCode;
                            });
                          }, // end onSubmit
                        ),
                      ),
                      Button(
                          text: 'Verify Account',
                          onTap: () {
                            if (otp!.isEmpty) {
                              ShowMToast toast = ShowMToast();
                              toast.errorToast(context,
                                  message: "Enter OTP",
                                  alignment: Alignment.bottomCenter);
                            } else {
                              verifyProvider
                                  .verify(widget.userid, otp)
                                  .whenComplete(() {
                                if (verifyProvider.success == true) {
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                                } else {
                                  ShowMToast toast = ShowMToast();
                                  toast.errorToast(context,
                                      message:
                                          "You have entered a wrong verification code",
                                      alignment: Alignment.bottomCenter);
                                }
                              });
                            }

                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) =>
                            //             ResetPasswordScreen()));
                          }),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Didn’t receive code? ',
                                    style: TextStyle(
                                      color: Color(0xFFBEBEBF),
                                      fontSize: 16,
                                      fontFamily: 'Sans',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Resend',
                                    style: TextStyle(
                                      color: Color(0xFF6D41A1),
                                      fontSize: 16,
                                      fontFamily: 'Sans',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 40, 0, 0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_back,
                              color: Color(0xFF6D41A1),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Back',
                              style: TextStyle(
                                color: Color(0xFF6D41A1),
                                fontSize: 16,
                                fontFamily: 'Sans',
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
