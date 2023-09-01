import 'package:diy_boox/widgets/common_image_view.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/color_constant.dart';
// import '../../../common_image_view.dart';

class CustomLogoDropDown extends StatelessWidget {
  final String name, leading;
  final VoidCallback onTap;

  const CustomLogoDropDown({
    super.key,
    required this.name,
    required this.leading,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 64,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color(0x19000000),
                blurRadius: 5,
                offset: Offset(0, 0),
                spreadRadius: 0,
              )
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CommonImageView(
                      svgPath: 'assets/invoices/customer.svg',
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      name,
                      style: TextStyle(
                        color: Color(0xFF6D41A1),
                        fontSize: 16,
                        fontFamily: 'Sans',
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      leading,
                      style: TextStyle(
                        color: Color(0xFF3F4852),
                        fontSize: 16,
                        fontFamily: 'Sans',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      size: 20,
                      color: ColorConstant.primaryColor,
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
