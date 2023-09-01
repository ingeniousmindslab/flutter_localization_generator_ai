import 'package:flutter/material.dart';

import '../../../../core/utils/color_constant.dart';
import '../../../../widgets/custom_small_button.dart';
import '../../../../widgets/custom_small_trans_button.dart';

class SampleData extends StatefulWidget {
  const SampleData({Key? key}) : super(key: key);

  @override
  State<SampleData> createState() => _SampleDataState();
}

class _SampleDataState extends State<SampleData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "This account is having sample data. Click on ‘Remove sample data’ button to detele that. You can again add sample data by clicking on ‘Add sample data’ button (this button comes when there is not sample data in your account currently.",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                fontFamily: 'Sans',
                color: Color(0xff404A5F),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Text(
                  'Remove Sample Data',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Poppins',
                    color: ColorConstant.primaryColor,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 60, 20, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomSmallButton(
                  text: 'Save',
                  onTap: () {},
                ),
                CustomSmallTransButton(onTap: () {}, text: 'Cancel'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
