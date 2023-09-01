import 'package:flutter/material.dart';
import 'package:spring_button/spring_button.dart';

import '../core/utils/math_utils.dart';
import 'common_image_view.dart';

class SocialMediaButton extends StatelessWidget {
  final String text;

  final VoidCallback onTap;

  final String image;

  SocialMediaButton(
      {required this.onTap, required this.text, required this.image});

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
              border: Border.all(color: Color(0xffABABAB), width: 2),
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CommonImageView(
                svgPath: image,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                text,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Sans',
                  fontSize: 16,
                ),
              )
            ],
          ),
        ),
        onTap: onTap,
        scaleCoefficient: 0.90,
      ),
    );
  }
}
