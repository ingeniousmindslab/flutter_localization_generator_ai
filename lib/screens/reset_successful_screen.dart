import 'package:diy_boox/screens/auth/login_screen.dart';
import 'package:diy_boox/widgets/button.dart';
import 'package:flutter/material.dart';

import '../core/utils/color_constant.dart';
import '../core/utils/math_utils.dart';

class ResetSuccessful extends StatefulWidget {
  const ResetSuccessful({Key? key}) : super(key: key);

  @override
  State<ResetSuccessful> createState() => _ResetSuccessfulState();
}

class _ResetSuccessfulState extends State<ResetSuccessful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: ColorConstant.primaryColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: getPadding(left: 15, right: 15, top: 20, bottom: 5),
            child: Text(
              'Successful Password Reset!',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontFamily: 'Sans',
                fontSize: 20,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 15,
              bottom: 80,
            ),
            child: Text(
              'You can now use your new password to log in to your account!',
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'Sans',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Button(
              text: 'Login',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              })
        ],
      ),
    );
  }
}
