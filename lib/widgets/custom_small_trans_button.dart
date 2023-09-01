import 'package:flutter/material.dart';
import 'package:spring_button/spring_button.dart';

import '../core/utils/color_constant.dart';

class CustomSmallTransButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;

  const CustomSmallTransButton({
    super.key,
    required this.onTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return SpringButton(
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
            text,
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
      onTap: onTap,
    );
  }
}
