import 'package:flutter/material.dart';
import 'package:spring_button/spring_button.dart';

import '../core/utils/color_constant.dart';

class CustomSmallButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;

  const CustomSmallButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SpringButton(
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
            text,
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
      onTap: onTap,
    );
  }
}
