import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CustomToast {
  static final FToast _fToast = FToast();

  static void init(BuildContext context) {
    _fToast.init(context);
  }

  static void showToast({
    required String message,
    IconData? iconData = Icons.info,
    Color? backgroundColor = Colors.blue,
    Color? textColor = Colors.white,
    int durationSeconds = 2,
    ToastGravity gravity = ToastGravity.BOTTOM_RIGHT,
  }) {
    _fToast.removeCustomToast();

    Widget toast = Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: backgroundColor ?? Colors.black45,
          boxShadow: [
            BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 5,
              offset: Offset(0, 2),
              spreadRadius: 0,
            )
          ]),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (iconData != null) ...[
            Icon(
              iconData,
              color: textColor ?? Colors.white,
            ),
            SizedBox(width: 12.0),
          ],
          Text(
            message,
            style: TextStyle(color: textColor ?? Colors.white, fontSize: 16.0),
          ),
        ],
      ),
    );

    _fToast.showToast(
      child: toast,
      gravity: gravity,
      toastDuration: Duration(seconds: durationSeconds),
    );
  }
}
