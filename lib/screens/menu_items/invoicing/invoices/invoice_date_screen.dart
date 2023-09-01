import 'package:diy_boox/widgets/common_date_picker.dart';
import 'package:diy_boox/widgets/common_text_field.dart';
import 'package:diy_boox/widgets/custom_drop_down_button.dart';
import 'package:diy_boox/widgets/custom_small_button.dart';
import 'package:diy_boox/widgets/custom_small_trans_button.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/color_constant.dart';
import '../../../notification_screen.dart';

class InvoiceDateScreen extends StatefulWidget {
  const InvoiceDateScreen({Key? key}) : super(key: key);

  @override
  State<InvoiceDateScreen> createState() => _InvoiceDateScreenState();
}

class _InvoiceDateScreenState extends State<InvoiceDateScreen> {
  TextEditingController invoiceid = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        automaticallyImplyLeading: false,
        backgroundColor: ColorConstant.primaryColor,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        title: Text(
          'New Invoice (INV014)',
          style: TextStyle(
            fontSize: 18,
            fontFamily: 'Sans',
            fontWeight: FontWeight.w400,
          ),
        ),
        centerTitle: false,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NotificationScreen()));
              },
              icon: Icon(Icons.notifications_none))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 0, 10),
            child: Text(
              'Invoice Date',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontFamily: 'Sans',
                fontSize: 16,
              ),
            ),
          ),
          CommonDatePicker(),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 0, 10),
            child: Text(
              'Invoice ID',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontFamily: 'Sans',
                fontSize: 16,
              ),
            ),
          ),
          CommonTextField(
            controller: invoiceid,
            onChanged: (c) {},
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 0, 10),
            child: Text(
              'PO / Reference',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontFamily: 'Sans',
                fontSize: 16,
              ),
            ),
          ),
          CommonTextField(
            controller: invoiceid,
            onChanged: (c) {},
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 0, 10),
            child: Text(
              'Payment Due',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontFamily: 'Sans',
                fontSize: 16,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
            child: CustomDropDownButton(
              items: [
                'On Receipt',
                'Model - I',
                'Model - F',
                'Model - E',
              ],
              selectedValue: 'On Receipt',
              onChanged: () {},
              width: MediaQuery.of(context).size.width,
              height: 46,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomSmallTransButton(onTap: () {}, text: 'Cancel'),
                CustomSmallButton(text: 'Save', onTap: () {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
