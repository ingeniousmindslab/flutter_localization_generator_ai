import 'dart:async';

import 'package:diy_boox/core/utils/image_constant.dart';
import 'package:diy_boox/screens/auth/login_screen.dart';
import 'package:diy_boox/widgets/common_image_view.dart';
import 'package:flutter/material.dart';

import '../core/utils/math_utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), () async {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: CommonImageView(
                imagePath: ImageConstant.logoColor,
                height: getVerticalSize(
                  82.00,
                ),
                width: getHorizontalSize(
                  183.00,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
