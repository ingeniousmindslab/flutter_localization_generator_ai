import 'package:diy_boox/widgets/custom_drop_down_button.dart';
import 'package:flutter/material.dart';
import 'package:spring_button/spring_button.dart';

import '../../../core/utils/color_constant.dart';

class RecordPaymentDialog extends StatefulWidget {
  const RecordPaymentDialog({super.key});

  @override
  State<RecordPaymentDialog> createState() => _RecordPaymentDialogState();
}

class _RecordPaymentDialogState extends State<RecordPaymentDialog> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Record Payment',
                  style: TextStyle(
                    color: Color(0xFF0A1825),
                    fontSize: 18,
                    fontFamily: 'Sans',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Payment Date',
                  style: TextStyle(
                    color: Color(0xFF0A1825),
                    fontSize: 16,
                    fontFamily: 'Sans',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 46,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)),
                    shadows: [
                      BoxShadow(
                        color: Color(0x1E000000),
                        blurRadius: 5,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Amount',
                  style: TextStyle(
                    color: Color(0xFF0A1825),
                    fontSize: 16,
                    fontFamily: 'Sans',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 46,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)),
                    shadows: [
                      BoxShadow(
                        color: Color(0x1E000000),
                        blurRadius: 5,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Payment Method',
                  style: TextStyle(
                    color: Color(0xFF0A1825),
                    fontSize: 16,
                    fontFamily: 'Sans',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 10),
                CustomDropDownButton(
                  items: [
                    'Test 1',
                    'Test 2',
                    'Test 3',
                    'Test 4',
                  ],
                  selectedValue: 'Test 1',
                  onChanged: () {},
                  width: MediaQuery.of(context).size.width,
                  height: 46,
                ),
                // Container(
                //   width: MediaQuery.of(context).size.width,
                //   height: 46,
                //   decoration: ShapeDecoration(
                //     color: Colors.white,
                //     shape: RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(6)),
                //     shadows: [
                //       BoxShadow(
                //         color: Color(0x1E000000),
                //         blurRadius: 5,
                //         offset: Offset(0, 0),
                //         spreadRadius: 0,
                //       )
                //     ],
                //   ),
                //   child: Padding(
                //     padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                //     child: TextField(
                //       decoration: InputDecoration(
                //         border: InputBorder.none,
                //       ),
                //     ),
                //   ),
                // ),
                SizedBox(height: 20),
                Text(
                  'Amount Due (GBP)',
                  style: TextStyle(
                    color: Color(0xFF0A1825),
                    fontSize: 16,
                    fontFamily: 'Sans',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 46,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)),
                    shadows: [
                      BoxShadow(
                        color: Color(0x1E000000),
                        blurRadius: 5,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    SizedBox(
                      height: 24,
                      width: 24,
                      child: Checkbox(
                        value: isChecked,
                        onChanged: (newValue) {
                          setState(() {
                            isChecked = newValue!;
                          });
                        },
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Send receipt for this payment to client',
                      style: TextStyle(
                        color: Color(0xFF0A1825),
                        fontSize: 14,
                        fontFamily: 'Sans',
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SpringButton(
                      SpringButtonType.OnlyScale,
                      Container(
                        height: 54,
                        width: MediaQuery.of(context).size.width * 0.40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: ColorConstant.primaryColor,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Cancel',
                            style: TextStyle(
                              fontFamily: 'Sans',
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: ColorConstant.primaryColor,
                            ),
                          ),
                        ),
                      ),
                      scaleCoefficient: 0.95,
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    SizedBox(width: 10),
                    SpringButton(
                      SpringButtonType.OnlyScale,
                      Container(
                        height: 54,
                        width: MediaQuery.of(context).size.width * 0.40,
                        decoration: BoxDecoration(
                          color: ColorConstant.primaryColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            'Send',
                            style: TextStyle(
                              fontFamily: 'Sans',
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      scaleCoefficient: 0.95,
                      onTap: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
