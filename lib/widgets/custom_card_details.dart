import 'package:flutter/material.dart';

import '../core/utils/color_constant.dart';
import 'common_image_view.dart';

class CustomCardDetails extends StatelessWidget {
  final String name;
  final String? svgPath;
  final VoidCallback onTap;
  final String? last;
  final String? desc;

  const CustomCardDetails(
      {super.key,
      required this.name,
      required this.onTap,
      this.svgPath,
      this.desc,
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
                Expanded(
                  child: Row(
                    children: [
                      CommonImageView(
                        svgPath: svgPath ?? 'assets/add.svg',
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            name,
                            softWrap: true,
                            maxLines: 1,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Sans',
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            desc ?? "",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Sans',
                              color: ColorConstant.primaryColor,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("£ $last", style: TextStyle(fontSize: 20)),
                    Text("Details", style: TextStyle(fontSize: 16)),
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
