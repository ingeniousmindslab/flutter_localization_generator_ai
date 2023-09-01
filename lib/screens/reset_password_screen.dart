import 'package:diy_boox/screens/reset_successful_screen.dart';
import 'package:diy_boox/widgets/button.dart';
import 'package:flutter/material.dart';

import '../core/utils/color_constant.dart';
import '../core/utils/math_utils.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  TextEditingController newPassword = TextEditingController();
  TextEditingController confirmNewPassword = TextEditingController();

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
              'Reset Your Password',
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
              bottom: 10,
            ),
            child: Text(
              'You can now set your new password accordingly',
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'Sans',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          // CustomTextField(controller: newPassword, text: 'New Password'),
          // CustomTextField(
          //     controller: confirmNewPassword, text: 'Confirm New Password'),
          Padding(
              padding: getPadding(top: 20),
              child: Button(
                  text: 'Reset My Password',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ResetSuccessful()));
                  })),
        ],
      ),
    );
  }
}
