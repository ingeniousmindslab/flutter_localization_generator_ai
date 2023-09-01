import 'package:diy_boox/core/utils/math_utils.dart';
import 'package:diy_boox/screens/auth/login_screen.dart';
import 'package:diy_boox/screens/on_bording_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:m_toast/m_toast.dart';
import 'package:provider/provider.dart';

import '../../core/utils/image_constant.dart';
import '../../provider/auth_provider.dart';
import '../../widgets/button.dart';
import '../../widgets/common_image_view.dart';
import '../../widgets/custom_text_field.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final registerProvider = Provider.of<AuthProvider>(context, listen: false);
    return Scaffold(
      backgroundColor: const Color(0xffFCF9FF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
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
                  imagePath: 'assets/illu/signin.png',
                  height: getVerticalSize(
                    220,
                  ),
                  width: getHorizontalSize(
                    290,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(20, 20, 0, 20),
                        child: Row(
                          children: [
                            Text(
                              'Start your free 30-day trial',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontFamily: 'Sans',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Row(
                          children: [
                            Text(
                              'Email ID',
                              style: TextStyle(
                                color: Color(0xFF5A5A5D),
                                fontSize: 16,
                                fontFamily: 'Sans',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: CustomTextField(
                          controller: email,
                          // password: false,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Row(
                          children: [
                            Checkbox(value: true, onChanged: (value) {}),
                            const Text(
                              'Remember Me',
                              style: TextStyle(
                                color: Color(0xFF5A5A5D),
                                fontSize: 16,
                                fontFamily: 'Sans',
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(top: 10, bottom: 20),
                        child: Button(
                          text: 'Verify Mail',
                          onTap: () {
                            if (email.text.isEmpty) {
                              ShowMToast toast = ShowMToast();
                              toast.errorToast(context,
                                  message: "Enter your email address",
                                  alignment: Alignment.bottomCenter);
                            } else {
                              registerProvider
                                  .register(email.text)
                                  .whenComplete(() {
                                if (registerProvider.statusCode == 200) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const OnBoardingScreen()));
                                } else if (registerProvider.statusCode == 201) {
                                  ShowMToast toast = ShowMToast();
                                  toast.errorToast(context,
                                      message: "User already registered",
                                      alignment: Alignment.bottomCenter);
                                }
                              });
                            }
                          },
                        ),
                      ),
                      Padding(
                        padding: getPadding(left: 15, right: 15, bottom: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 2,
                              width: getHorizontalSize(140),
                              color: const Color(0xffABABAB),
                            ),
                            const Text(
                              'OR',
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Sans',
                                fontWeight: FontWeight.w400,
                                color: Color(0xffABABAB),
                              ),
                            ),
                            Container(
                              height: 2,
                              width: getHorizontalSize(140),
                              color: const Color(0xffABABAB),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                width: 100,
                                height: 48,
                                padding:
                                    const EdgeInsets.fromLTRB(0, 10, 0, 10),
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 2, color: Color(0xFFBEBEBF)),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                child: SvgPicture.asset(
                                  'assets/google.svg',
                                )),
                            Container(
                              width: 100,
                              height: 48,
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      width: 2, color: Color(0xFFBEBEBF)),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: SvgPicture.asset('assets/facebook.svg'),
                            ),
                            Container(
                              width: 100,
                              height: 48,
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      width: 2, color: Color(0xFFBEBEBF)),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: SvgPicture.asset('assets/link.svg'),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginScreen()));
                          },
                          child: const Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Already have an account? ',
                                  style: TextStyle(
                                    color: Color(0xFFBEBEBF),
                                    fontSize: 16,
                                    fontFamily: 'Sans',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Sign In',
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
                        ),
                      )
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
