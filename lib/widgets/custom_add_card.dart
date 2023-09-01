import 'package:flutter/material.dart';

import '../core/utils/color_constant.dart';
import 'common_image_view.dart';

class CustomAddCard extends StatelessWidget {
  final String name;
  final String? svgPath;
  final VoidCallback onTap;
  final String? last;

  const CustomAddCard(
      {super.key,
      required this.name,
      required this.onTap,
      this.svgPath,
      this.last});

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
            boxShadow: [BoxShadow(blurRadius: 1)],
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
                      svgPath: svgPath ?? 'assets/add.svg',
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Sans',
                        color: ColorConstant.primaryColor,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(last ?? "", style: TextStyle(fontSize: 16)),
                    Icon(
                      last == null
                          ? Icons.arrow_forward_ios
                          : Icons.keyboard_arrow_down,
                      size: last == null ? 16 : 20,
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
