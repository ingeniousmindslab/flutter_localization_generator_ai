import 'package:flutter/material.dart';

import '../../../widgets/common_image_view.dart';
import '../../../widgets/custom_small_button.dart';
import '../../../widgets/custom_small_trans_button.dart';

class BankFeedScreen extends StatefulWidget {
  const BankFeedScreen({Key? key}) : super(key: key);

  @override
  State<BankFeedScreen> createState() => _BankFeedScreenState();
}

class _BankFeedScreenState extends State<BankFeedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 20, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CommonImageView(
                  imagePath: 'assets/bulb.png',
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 60, 0, 60),
            child: CommonImageView(
              svgPath: 'assets/man.svg',
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomSmallButton(
                  text: 'Already Subscribe',
                  onTap: () {},
                ),
                CustomSmallTransButton(onTap: () {}, text: 'Not Subscribe Yet'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
