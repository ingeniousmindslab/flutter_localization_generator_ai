import 'package:diy_boox/core/utils/color_constant.dart';
import 'package:diy_boox/core/utils/math_utils.dart';
import 'package:diy_boox/widgets/button.dart';
import 'package:diy_boox/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController email = TextEditingController();
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
              'Forgot Password?',
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
            ),
            child: Text(
              'Enter your email address to retrieve your password',
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'Sans',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Padding(
              padding: getPadding(bottom: 20, top: 10),
              child: CustomTextField(
                controller: email,
              )),
          Button(
              text: 'Send',
              onTap: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => VerifyCodeScreen()));
              }),
        ],
      ),
    );
  }
}
