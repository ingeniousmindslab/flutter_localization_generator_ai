import 'package:flutter/material.dart';

import '../core/utils/color_constant.dart';

class CustomTypes extends StatelessWidget {
  int selectedIndex;

  CustomTypes({super.key, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          selectedIndex == 0
              ? Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: ColorConstant.primaryColor,
                  ),
                  child: Center(
                    child: Text(
                      'All',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Sans',
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              : Text(
                  'All',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Sans',
                    fontWeight: FontWeight.w400,
                  ),
                ),
          selectedIndex == 1
              ? Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: ColorConstant.primaryColor,
                  ),
                  child: Center(
                    child: Text(
                      'Overdue',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Sans',
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              : Text(
                  'Overdue',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Sans',
                    fontWeight: FontWeight.w400,
                  ),
                ),
          selectedIndex == 2
              ? Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: ColorConstant.primaryColor,
                  ),
                  child: Center(
                    child: Text(
                      'Paid',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Sans',
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              : Text(
                  'Paid',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Sans',
                    fontWeight: FontWeight.w400,
                  ),
                ),
          selectedIndex == 3
              ? Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: ColorConstant.primaryColor,
                  ),
                  child: Center(
                    child: Text(
                      'Sent',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Sans',
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              : Text(
                  'Sent',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Sans',
                    fontWeight: FontWeight.w400,
                  ),
                ),
          selectedIndex == 4
              ? Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: ColorConstant.primaryColor,
                  ),
                  child: Center(
                    child: Text(
                      'Partially Paid',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Sans',
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              : Text(
                  'Partially Paid',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Sans',
                    fontWeight: FontWeight.w400,
                  ),
                ),
        ],
      ),
    );
  }
}
