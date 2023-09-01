import 'package:diy_boox/provider/receipt_provider.dart';
import 'package:diy_boox/widgets/custom_tool_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/utils/color_constant.dart';
import '../../../../widgets/common_image_view.dart';
import '../../../notification_screen.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({Key? key}) : super(key: key);

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  @override
  void initState() {
    final provider = Provider.of<ReceiptProvider>(context, listen: false);
    provider.executeDuplicateReceipt();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFBFBFB),
      body: SafeArea(
        child: Column(
          children: [
            CustomToolBar(
                searchText: (e) {
                  final provider =
                      Provider.of<ReceiptProvider>(context, listen: false);
                  provider.executeDuplicateReceipt(search: e);
                },
                search: () {},
                controller: TextEditingController(),
                onTap1: () {},
                onTap2: () {}),
            Consumer<ReceiptProvider>(
              builder: (context, value, child) {
                if (value.isLoading) {
                  child = Center(
                    child: CircularProgressIndicator(
                      color: ColorConstant.primaryColor,
                    ),
                  );
                } else if (value.data.isEmpty) {
                  child = Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CommonImageView(
                        svgPath: 'assets/no_record_found.svg',
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                        child: Text(
                          'No Record Found!',
                          style: TextStyle(
                              fontFamily: 'Sans',
                              fontSize: 20,
                              color: Color(0xff828282),
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                        child: Text(
                          'You can create your first record by clicking the plus icon below',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'Sans',
                              fontSize: 20,
                              color: Color(0xff828282),
                              fontWeight: FontWeight.w400),
                        ),
                      )
                    ],
                  );
                } else {
                  child = Container();
                }
                return child;
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: ColorConstant.primaryColor,
        onPressed: () {},
        child: Icon(
          Icons.add,
          size: 40,
        ),
      ),
    );
  }
}
