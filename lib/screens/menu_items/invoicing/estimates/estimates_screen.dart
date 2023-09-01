import 'package:auto_size_text/auto_size_text.dart';
import 'package:diy_boox/core/utils/app_extenshions.dart';
import 'package:diy_boox/provider/estimates_provider.dart';
import 'package:diy_boox/screens/menu_items/invoicing/invoices/invoices_summary_screen.dart';
import 'package:diy_boox/widgets/custom_slider.dart';
import 'package:diy_boox/widgets/custom_tool_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/utils/color_constant.dart';
import '../../../../widgets/common_image_view.dart';

class EstimatesScreen extends StatefulWidget {
  const EstimatesScreen({Key? key}) : super(key: key);

  @override
  State<EstimatesScreen> createState() => _EstimatesScreenState();
}

class _EstimatesScreenState extends State<EstimatesScreen> {
  int selectedIndex = 0;
  @override
  void initState() {
    Provider.of<EstimatesProvider>(context, listen: false).getEstimatesList(-1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final ep = Provider.of<EstimatesProvider>(context, listen: false);
    return Scaffold(
      backgroundColor: Color(0xffFBFBFB),
      body: SafeArea(
          child: Column(
        children: [
          CustomToolBar(
              searchText: (e) {
                ep.getEstimatesList(-1, search: e);
              },
              search: () {},
              controller: TextEditingController(),
              onTap1: () {},
              onTap2: () {}),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  selectedIndex == 0
                      ? Container(
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: ColorConstant.primaryColor,
                          ),
                          child: const Center(
                            child: Text(
                              'All',
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Sans',
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      : GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = 0;
                            });
                            ep.getEstimatesList(-1);
                          },
                          child: const Text(
                            'All',
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Sans',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                  selectedIndex == 1
                      ? Container(
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: ColorConstant.primaryColor,
                          ),
                          child: const Center(
                            child: Text(
                              'Draft',
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Sans',
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      : GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = 1;
                            });
                            ep.getEstimatesList(0);
                          },
                          child: const Text(
                            'Draft',
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Sans',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                  selectedIndex == 2
                      ? Container(
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: ColorConstant.primaryColor,
                          ),
                          child: const Center(
                            child: Text(
                              'Accepted',
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Sans',
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      : GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = 2;
                            });
                            ep.getEstimatesList(1);
                          },
                          child: const Text(
                            'Accepted',
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Sans',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                  selectedIndex == 3
                      ? Container(
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: ColorConstant.primaryColor,
                          ),
                          child: const Center(
                            child: Text(
                              'Declined',
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Sans',
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      : GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = 3;
                            });
                            ep.getEstimatesList(2);
                          },
                          child: const Text(
                            'Declined',
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Sans',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                  selectedIndex == 4
                      ? Container(
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: ColorConstant.primaryColor,
                          ),
                          child: const Center(
                            child: Text(
                              'Sent',
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Sans',
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      : GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = 4;
                            });
                            ep.getEstimatesList(3);
                          },
                          child: const Text(
                            'Sent',
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Sans',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                ]),
          ),
          Consumer<EstimatesProvider>(
            builder: (context, value, child) {
              if (value.isLoading) {
                child = const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: CircularProgressIndicator(
                        color: Color(0xff6661B8),
                      ),
                    )
                  ],
                );
              } else if (value.estimatesList.isEmpty) {
                child = Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CommonImageView(
                      svgPath: 'assets/no_record_found.svg',
                    ),
                    Padding(
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
                    Padding(
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
                child = Column(
                  children: value.estimatesList.map((e) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10, top: 10),
                      child: CustomSlider(
                        widget: FittedBox(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          InvoicesSummaryScreen()));
                            },
                            child: Container(
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 1,
                                    )
                                  ],
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const AutoSizeText(
                                            'ID',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              fontFamily: 'Sans',
                                              color: Color(0xff828282),
                                            ),
                                            presetFontSizes: [14, 12, 10, 8],
                                            // minFontSize: 14,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          AutoSizeText(
                                            e.estimateId,
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14,
                                              fontFamily: 'Sans',
                                            ),
                                            presetFontSizes: [14, 12, 10, 8],
                                            // minFontSize: 14,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            height: 24,
                                            width: 70,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              color: Color(0xffFFDADA),
                                            ),
                                            child: Center(
                                              child: AutoSizeText(
                                                'Overdue',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: 'Sans',
                                                  color: Color(0xffFF0000),
                                                ),
                                                presetFontSizes: [
                                                  14,
                                                  12,
                                                  10,
                                                  8
                                                ],
                                                // minFontSize: 14,
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                          ),
                                          Icon(
                                            Icons.more_vert,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          AutoSizeText(
                                            'Customer',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              fontFamily: 'Sans',
                                              color: Color(0xff828282),
                                            ),
                                            presetFontSizes: [14, 12, 10, 8],
                                            // minFontSize: 14,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          AutoSizeText(
                                            e.fullName,
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14,
                                              fontFamily: 'Sans',
                                            ),
                                            presetFontSizes: [14, 12, 10, 8],
                                            // minFontSize: 14,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          AutoSizeText(
                                            'Total (GBP)',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              fontFamily: 'Sans',
                                              color: Color(0xff828282),
                                            ),
                                            presetFontSizes: [14, 12, 10, 8],
                                            // minFontSize: 14,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          AutoSizeText(
                                            e.totalAmount.toString(),
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14,
                                              fontFamily: 'Sans',
                                            ),
                                            presetFontSizes: [14, 12, 10, 8],
                                            // minFontSize: 14,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const AutoSizeText(
                                            'Created Date',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              fontFamily: 'Sans',
                                              color: Color(0xff828282),
                                            ),
                                            presetFontSizes: [14, 12, 10, 8],
                                            // minFontSize: 14,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          AutoSizeText(
                                            e.createdOn.toDateTimeFormat(),
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14,
                                              fontFamily: 'Sans',
                                            ),
                                            presetFontSizes: [14, 12, 10, 8],
                                            // minFontSize: 14,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          const AutoSizeText(
                                            'Status Updated date',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              fontFamily: 'Sans',
                                              color: Color(0xff828282),
                                            ),
                                            presetFontSizes: [14, 12, 10, 8],
                                            // minFontSize: 14,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          AutoSizeText(
                                            e.expiresDate.toDateTimeFormat(),
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14,
                                              fontFamily: 'Sans',
                                            ),
                                            presetFontSizes: [14, 12, 10, 8],
                                            // minFontSize: 14,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        archive: () {},
                        delete: () {
                          value.deleteEstimate(e.universalId);
                        },
                      ),
                    );
                  }).toList(),
                );
              }
              return child;
            },
          ),
        ],
      )),
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
