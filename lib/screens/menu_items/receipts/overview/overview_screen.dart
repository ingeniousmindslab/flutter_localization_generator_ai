import 'package:diy_boox/provider/receipt_provider.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spring_button/spring_button.dart';

import '../../../../widgets/common_image_view.dart';

class OverviewScreen extends StatefulWidget {
  const OverviewScreen({Key? key}) : super(key: key);

  @override
  State<OverviewScreen> createState() => _OverviewScreenState();
}

class _OverviewScreenState extends State<OverviewScreen> {
  @override
  void initState() {
    final receiptProvider =
        Provider.of<ReceiptProvider>(context, listen: false);
    receiptProvider.getReceiptsList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CommonImageView(
              svgPath: 'assets/overview_receipts.svg',
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Text(
                'For bringing your receipts here you have to connect with Receipt hub Click on button below to connect with ‘Receipt hub’',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Sans',
                    fontSize: 12,
                    color: Color(0xff404A5F),
                    fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Container(
                  height: 53,
                  width: 53,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x21000000),
                          blurRadius: 15,
                          offset: Offset(0, 0),
                          spreadRadius: 0,
                        )
                      ]),
                  child: Image.asset('assets/message_logo_receipts.png')),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DottedLine(
                  direction: Axis.vertical,
                  lineLength: 80,
                  lineThickness: 2,
                ),
              ],
            ),
            SpringButton(
              SpringButtonType.OnlyScale,
              Container(
                width: 100,
                height: 46,
                decoration: ShapeDecoration(
                  color: Color(0xFF6D41A1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Connect',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Sans',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              scaleCoefficient: 0.90,
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
