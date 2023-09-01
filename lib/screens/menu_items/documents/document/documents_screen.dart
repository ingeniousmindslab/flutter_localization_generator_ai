import 'package:diy_boox/widgets/custom_search.dart';
import 'package:flutter/material.dart';

import '../../../../widgets/common_image_view.dart';
import '../../../../widgets/custom_small_button.dart';
import '../../../../widgets/custom_small_trans_button.dart';

class DocumentsScreen extends StatefulWidget {
  const DocumentsScreen({Key? key}) : super(key: key);

  @override
  State<DocumentsScreen> createState() => _DocumentsScreenState();
}

class _DocumentsScreenState extends State<DocumentsScreen> {
  TextEditingController controller = TextEditingController();
  bool isLoading = true;

  @override
  void initState() {
    // show a 3 sec circular progress indicator
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        isLoading = false;
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomSearch(
            onChanged: (p0) {},
            controller: controller,
            search: () {},
          ),
          isLoading
              ? Center(
                  child: isLoading
                      ? CircularProgressIndicator()
                      : SizedBox.shrink())
              : Column(
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
                          CustomSmallTransButton(
                              onTap: () {}, text: 'Not Subscribe Yet'),
                        ],
                      ),
                    ),
                  ],
                )
        ],
      ),
    );
  }
}
