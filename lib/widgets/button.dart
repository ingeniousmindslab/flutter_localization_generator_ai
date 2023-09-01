import 'package:flutter/material.dart';
import 'package:spring_button/spring_button.dart';

import '../core/utils/color_constant.dart';
import '../core/utils/math_utils.dart';

class Button extends StatelessWidget {
  final String text;

  final VoidCallback onTap;

  Button({
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        left: 15,
        right: 15,
      ),
      child: SpringButton(
        SpringButtonType.OnlyScale,
        Container(
          height: 54,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: ColorConstant.primaryColor,
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'Sans',
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
        ),
        scaleCoefficient: 0.90,
        onTap: onTap,
      ),
    );
  }
}
