import 'package:diy_boox/core/utils/app_constants.dart';
import 'package:diy_boox/core/utils/custom_toast.dart';
import 'package:diy_boox/provider/business_provider.dart';
import 'package:diy_boox/screens/home_screen.dart';
import 'package:diy_boox/widgets/common_text_field.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/utils/color_constant.dart';
import '../../../../widgets/custom_small_button.dart';
import '../../../../widgets/custom_small_trans_button.dart';

class Estimates extends StatefulWidget {
  const Estimates({Key? key}) : super(key: key);

  @override
  State<Estimates> createState() => _EstimatesState();
}

class _EstimatesState extends State<Estimates> {
  bool radio1 = true;

  String gender = "";

  @override
  void initState() {
    final bProvider = Provider.of<BusinessProvider>(context, listen: false);
    bProvider.getBusinessList(loadOthers: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    CustomToast.init(context);
    return Scaffold(
      body: Consumer<BusinessProvider>(
        builder: (context, value, child) {
          if (value.isLoading) {
            child = Center(
              child: CircularProgressIndicator(
                color: Color(0xff6661B8),
              ),
            );
          } else {
            final selectedB = value.selectedBusiness;
            gender = selectedB.isEstimateIdAutoGenerated
                ? "Autogenerated"
                : "Add manually";
            child = Column(
              children: [
                RadioListTile(
                  activeColor: ColorConstant.primaryColor1,
                  title: Text(
                    'Autogenerated',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins',
                      color: Color(0xff424A5D),
                    ),
                  ),
                  value: "Autogenerated",
                  groupValue: gender,
                  onChanged: (valu) {
                    value.updateSelectedType(true);
                  },
                ),
                RadioListTile(
                  activeColor: ColorConstant.primaryColor1,
                  title: Text(
                    'Add manually',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins',
                      color: Color(0xff424A5D),
                    ),
                  ),
                  value: "Add manually",
                  groupValue: gender,
                  onChanged: (valu) {
                    value.updateSelectedType(false);
                  },
                ),
                selectedB.isInvoiceIdAutoGenerated
                    ? Padding(
                        padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Prefix',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Poppins',
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  CommonTextField(
                                    controller: TextEditingController(
                                        text: selectedB.estimatePrefix),
                                    onChanged: (e) {},
                                    padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Next number',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Poppins',
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  CommonTextField(
                                    controller: TextEditingController(
                                        text: selectedB.estimateNextNumber
                                            .toString()),
                                    onChanged: (e) {},
                                    padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    : SizedBox.shrink(),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Text(
                        'Footer',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          color: Color(0xff000000),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: Container(
                    height: 160,
                    width: MediaQuery.of(context).size.width,
                    child: CommonTextField(
                      controller:
                          TextEditingController(text: selectedB.estimateFooter),
                      onChanged: (e) {
                        value.updateEFooter(e);
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 100, 20, 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomSmallButton(
                        text: 'Save',
                        onTap: () {
                          final body = {
                            "userId": value.sharedPreferences
                                .get(AppConstants.USERID),
                            "universalId": selectedB.universalId,
                            "isEstimateIdAutoGenerated":
                                selectedB.isEstimateIdAutoGenerated,
                            "estimatePreFix": selectedB.estimatePrefix,
                            "estimateNextNumber": selectedB.estimateNextNumber,
                            "estimateTitle": selectedB.estimateTitle,
                            "estimateFooter": selectedB.estimateFooter,
                            "newEstimateNumber": ""
                          };
                          Provider.of<BusinessProvider>(context, listen: false)
                              .updateEstimateInfo(body)
                              .whenComplete(() => CustomToast.showToast(
                                  message:
                                      "Estimate settings updated successfully"));
                        },
                      ),
                      CustomSmallTransButton(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomeScreen()));
                          },
                          text: 'Cancel'),
                    ],
                  ),
                ),
              ],
            );
          }
          return child;
        },
      ),
    );
  }
}