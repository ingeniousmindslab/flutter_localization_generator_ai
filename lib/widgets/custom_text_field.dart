import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;

  // final String text;

  // final bool password;

  const CustomTextField({
    super.key,
    required this.controller,
    // required this.text,
    // required this.password
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: double.infinity,
          height: 54,
          margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
          padding: EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xff6D41A1), width: 2),
            borderRadius: BorderRadius.circular(5),
            shape: BoxShape.rectangle,
          ),
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: TextField(
              controller: controller,
              // obscureText: password,
              cursorColor: Color(0xffABABAB),
              decoration: InputDecoration(
                // suffixIcon: Icon(
                //   Icons.remove_red_eye,
                //   color: Color(0xff747474),
                // ),
                border: InputBorder.none,
              ),
            ),
          ),
        ),
        // Positioned(
        //   left: 40,
        //   top: 12,
        //   child: Container(
        //     padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
        //     color: Colors.white,
        //     child: Text(
        //       text,
        //       style: TextStyle(color: Colors.black, fontSize: 12),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
