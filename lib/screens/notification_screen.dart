import 'package:flutter/material.dart';

import '../core/utils/color_constant.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstant.primaryColor,
        title: Text(
          'Notification',
          style: TextStyle(
            fontSize: 18,
            fontFamily: 'Sans',
            fontWeight: FontWeight.w400,
          ),
        ),
        centerTitle: false,
        // actions: [
        //   IconButton(
        //       onPressed: () {
        //         Navigator.push(
        //             context,
        //             MaterialPageRoute(
        //                 builder: (context) => NotificationScreen()));
        //       },
        //       icon: Icon(Icons.notifications_none))
        // ],
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
