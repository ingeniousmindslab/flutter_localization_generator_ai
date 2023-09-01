import 'package:auto_size_text/auto_size_text.dart';
import 'package:diy_boox/core/utils/custom_toast.dart';
import 'package:diy_boox/provider/report_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/utils/color_constant.dart';
import '../../../../widgets/common_image_view.dart';
import '../../../../widgets/custom_slider.dart';
import '../../../../widgets/custom_tool_bar.dart';
import '../../invoicing/invoices/invoices_summary_screen.dart';

class SalesReportScreen extends StatefulWidget {
  const SalesReportScreen({Key? key}) : super(key: key);

  @override
  State<SalesReportScreen> createState() => _SalesReportScreenState();
}

class _SalesReportScreenState extends State<SalesReportScreen> {
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    final rProvider = Provider.of<ReportProvider>(context, listen: false);
    rProvider.getReportSalesSummary();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    CustomToast.init(context);
    return Scaffold(
      body: Column(
        children: [
          CustomToolBar(
              searchText: (e) {},
              search: () {},
              controller: controller,
              onTap1: () {},
              onTap2: () {}),
          Consumer<ReportProvider>(
            builder: (context, value, child) {
              if (value.isLoading || value.clientSalesReport == null) {
                child = Center(
                  child: CircularProgressIndicator(
                    color: ColorConstant.primaryColor,
                  ),
                );
              } else {
                child = Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                      child: Container(
                        height: 80,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(blurRadius: 1, spreadRadius: 0.1)
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  icon: Icon(
                                    Icons.arrow_back_ios_new,
                                    size: 20,
                                  ),
                                  onPressed: () {},
                                ),
                                Row(
                                  children: [
                                    CommonImageView(
                                      svgPath: 'assets/noof.svg',
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'No. of Clients',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'Poppins',
                                            color: Color(0xff828282),
                                          ),
                                        ),
                                        Text(
                                          value.salesSummary!.totalClient
                                              .toString(),
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Poppins',
                                            color: ColorConstant.primaryColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.arrow_forward_ios,
                                size: 20,
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                    ),
                    Column(
                      children: value.clientSalesReport!.clientSales
                          .map((e) => Padding(
                                padding: const EdgeInsets.only(bottom: 20.0),
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
                                        padding:
                                            EdgeInsets.fromLTRB(10, 10, 10, 10),
                                        width:
                                            MediaQuery.of(context).size.width,
                                        decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                blurRadius: 1,
                                              )
                                            ],
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    const AutoSizeText(
                                                      'Customers & Invoices',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 14,
                                                        fontFamily: 'Sans',
                                                        color:
                                                            Color(0xff828282),
                                                      ),
                                                      presetFontSizes: [
                                                        14,
                                                        12,
                                                        10,
                                                        8
                                                      ],
                                                      // minFontSize: 14,
                                                      maxLines: 1,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                    AutoSizeText(
                                                      e.clientFullName,
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 14,
                                                        fontFamily: 'Sans',
                                                      ),
                                                      presetFontSizes: [
                                                        14,
                                                        12,
                                                        10,
                                                        8
                                                      ],
                                                      // minFontSize: 14,
                                                      maxLines: 1,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                  ],
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    const AutoSizeText(
                                                      'Amount (GBP)',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 14,
                                                        fontFamily: 'Sans',
                                                        color:
                                                            Color(0xff828282),
                                                      ),
                                                      presetFontSizes: [
                                                        14,
                                                        12,
                                                        10,
                                                        8
                                                      ],
                                                      // minFontSize: 14,
                                                      maxLines: 1,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                    AutoSizeText(
                                                      '£ ${e.totalAmount}',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 14,
                                                        fontFamily: 'Sans',
                                                      ),
                                                      presetFontSizes: [
                                                        14,
                                                        12,
                                                        10,
                                                        8
                                                      ],
                                                      // minFontSize: 14,
                                                      maxLines: 1,
                                                      overflow:
                                                          TextOverflow.ellipsis,
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
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    const AutoSizeText(
                                                      'Received (GBP)',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 14,
                                                        fontFamily: 'Sans',
                                                        color:
                                                            Color(0xff828282),
                                                      ),
                                                      presetFontSizes: [
                                                        14,
                                                        12,
                                                        10,
                                                        8
                                                      ],
                                                      // minFontSize: 14,
                                                      maxLines: 1,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                    AutoSizeText(
                                                      '£ ${e.totalReceivedAmount}',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 14,
                                                        fontFamily: 'Sans',
                                                      ),
                                                      presetFontSizes: [
                                                        14,
                                                        12,
                                                        10,
                                                        8
                                                      ],
                                                      // minFontSize: 14,
                                                      maxLines: 1,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                  ],
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    const AutoSizeText(
                                                      'Due (GBP)',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 14,
                                                        fontFamily: 'Sans',
                                                        color:
                                                            Color(0xff828282),
                                                      ),
                                                      presetFontSizes: [
                                                        14,
                                                        12,
                                                        10,
                                                        8
                                                      ],
                                                      // minFontSize: 14,
                                                      maxLines: 1,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                    AutoSizeText(
                                                      '£ ${e.totalAmountDueAmount}',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 14,
                                                        fontFamily: 'Sans',
                                                      ),
                                                      presetFontSizes: [
                                                        14,
                                                        12,
                                                        10,
                                                        8
                                                      ],
                                                      // minFontSize: 14,
                                                      maxLines: 1,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  archive: () {},
                                  delete: () {
                                    CustomToast.showToast(
                                        message: 'Report is in use.');
                                  },
                                ),
                              ))
                          .toList(),
                    )
                  ],
                );
              }
              return child;
            },
          ),
        ],
      ),
    );
  }
}
