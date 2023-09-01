import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spring_button/spring_button.dart';

import '../../../core/utils/color_constant.dart';

class AddNoteDialog extends StatefulWidget {
  const AddNoteDialog({super.key});

  @override
  State<AddNoteDialog> createState() => _AddNoteDialogState();
}

class _AddNoteDialogState extends State<AddNoteDialog> {
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
                  'Add Note',
                  style: TextStyle(
                    color: Color(0xFF0A1825),
                    fontSize: 18,
                    fontFamily: 'Sans',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Notes',
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
                  height: 160,
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
                  'Attach',
                  style: TextStyle(
                    color: Color(0xFF0A1825),
                    fontSize: 16,
                    fontFamily: 'Sans',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 10),
                DottedBorder(
                  color: Color(0xffA5B1BE),
                  borderType: BorderType.RRect,
                  radius: Radius.circular(6),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 102,
                    // decoration: ShapeDecoration(
                    //   color: Colors.white,
                    //   shape: RoundedRectangleBorder(
                    //       borderRadius: BorderRadius.circular(6)),
                    //   shadows: [
                    //     BoxShadow(
                    //       color: Color(0x1E000000),
                    //       blurRadius: 5,
                    //       offset: Offset(0, 0),
                    //       spreadRadius: 0,
                    //     )
                    //   ],
                    // ),
                    // child: Padding(
                    //   padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    //   child: TextField(
                    //     decoration: InputDecoration(
                    //       border: InputBorder.none,
                    //     ),
                    //   ),
                    // ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/attach.svg'),
                          Text(
                            'Choose a file.',
                            style: TextStyle(
                              color: Color(0xFF0A1825),
                              fontSize: 14,
                              fontFamily: 'Sans',
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
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
                            'Save',
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
