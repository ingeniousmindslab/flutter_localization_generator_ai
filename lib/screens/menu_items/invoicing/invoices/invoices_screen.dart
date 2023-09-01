import 'package:auto_size_text/auto_size_text.dart';
import 'package:diy_boox/core/utils/app_extenshions.dart';
import 'package:diy_boox/core/utils/app_utils.dart';
import 'package:diy_boox/core/utils/color_constant.dart';
import 'package:diy_boox/core/utils/custom_toast.dart';
import 'package:diy_boox/provider/invoices_provider.dart';
import 'package:diy_boox/screens/menu_items/invoicing/invoices/invoices_summary_screen.dart';
import 'package:diy_boox/screens/menu_items/invoicing/invoices/new_invoice.dart';
import 'package:diy_boox/widgets/custom_slider.dart';
import 'package:diy_boox/widgets/custom_tool_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InvoicesScreen extends StatefulWidget {
  const InvoicesScreen({Key? key}) : super(key: key);

  @override
  State<InvoicesScreen> createState() => _InvoicesScreenState();
}

class _InvoicesScreenState extends State<InvoicesScreen> {
  int selectedIndex = 0;

  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {});
    final receiptProvider =
        Provider.of<InvoicesProvider>(context, listen: false);
    receiptProvider.getInvoicesList(-1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final rp = Provider.of<InvoicesProvider>(context, listen: false);
    return Scaffold(
      backgroundColor: Color(0xffFBFBFB),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // CommonImageView(
              //   svgPath: 'assets/no_record_found.svg',
              // ),
              // Padding(
              //   padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
              //   child: Text(
              //     'No Record Found!',
              //     style: TextStyle(
              //         fontFamily: 'Sans',
              //         fontSize: 20,
              //         color: Color(0xff828282),
              //         fontWeight: FontWeight.w400),
              //   ),
              // ),
              // Padding(
              //   padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
              //   child: Text(
              //     'You can create your first record by clicking the plus icon below',
              //     textAlign: TextAlign.center,
              //     style: TextStyle(
              //         fontFamily: 'Sans',
              //         fontSize: 20,
              //         color: Color(0xff828282),
              //         fontWeight: FontWeight.w400),
              //   ),
              // )
              CustomToolBar(
                  searchText: (value) {
                    rp.getInvoicesList(-1, search: value);
                  },
                  search: () {},
                  controller: controller,
                  onTap1: () {},
                  onTap2: () {}),
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
                              rp.getInvoicesList(-1);
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
                            child: Center(
                              child: Text(
                                'Overdue',
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
                              rp.getInvoicesList(4);
                            },
                            child: const Text(
                              'Overdue',
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Sans',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                    selectedIndex == 2
                        ? Container(
                            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: ColorConstant.primaryColor,
                            ),
                            child: const Center(
                              child: Text(
                                'Paid',
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
                              rp.getInvoicesList(5);
                            },
                            child: const Text(
                              'Paid',
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Sans',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                    selectedIndex == 3
                        ? Container(
                            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
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
                                selectedIndex = 3;
                              });
                              rp.getInvoicesList(3);
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
                    selectedIndex == 4
                        ? Container(
                            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: ColorConstant.primaryColor,
                            ),
                            child: const Center(
                              child: Text(
                                'Partially Paid',
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
                              rp.getInvoicesList(6);
                            },
                            child: Text(
                              'Partially Paid',
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Sans',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                  ],
                ),
              ),
              Consumer<InvoicesProvider>(
                builder: (context, value, child) {
                  if (value.isLoading == true) {
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
                  } else {
                    child = Column(
                      children: value.invoicesList.map((e) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: CustomSlider(
                            widget: FittedBox(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              InvoicesSummaryScreen(
                                                invoice: e,
                                              )));
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
                                              AutoSizeText(
                                                e.invoiceNo,
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w600,
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
                                                      fontWeight:
                                                          FontWeight.w400,
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
                                                    overflow:
                                                        TextOverflow.ellipsis,
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
                                              AutoSizeText(
                                                e.clientFullName,
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w600,
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
                                              AutoSizeText(
                                                e.totalAmount.toString(),
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w600,
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
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ],
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              AutoSizeText(
                                                'Date',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14,
                                                  fontFamily: 'Sans',
                                                  color: Color(0xff828282),
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
                                              AutoSizeText(
                                                e.invoiceDate
                                                    .toDateTimeFormat(),
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w600,
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
                                                overflow: TextOverflow.ellipsis,
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
                                                'Amount due (GBP)',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14,
                                                  fontFamily: 'Sans',
                                                  color: Color(0xff828282),
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
                                              AutoSizeText(
                                                (e.totalAmount - e.paidAmount)
                                                    .toString(),
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w600,
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
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ],
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              AutoSizeText(
                                                'Due (days)',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14,
                                                  fontFamily: 'Sans',
                                                  color: Color(0xff828282),
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
                                              AutoSizeText(
                                                e.dueDate
                                                    .toDateTime()!
                                                    .difference(DateTime.now())
                                                    .inDays
                                                    .toString(),
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 14,
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
                                            ],
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              AutoSizeText(
                                                'Last Received on',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14,
                                                  fontFamily: 'Sans',
                                                  color: Color(0xff828282),
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
                                              AutoSizeText(
                                                e.paidAmount.toString(),
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w600,
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
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              AutoSizeText(
                                                'Sent on',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14,
                                                  fontFamily: 'Sans',
                                                  color: Color(0xff828282),
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
                                              AutoSizeText(
                                                e.dueDate.toDateTimeFormat(),
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w600,
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
                                                overflow: TextOverflow.ellipsis,
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
                              value.deleteInvoice(e.universalId).whenComplete(
                                  () => CustomToast.showToast(
                                      message: "Invoice Deleted Successfully"));
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
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: ColorConstant.primaryColor,
        onPressed: () {
          final invNo = rp.invoicesList.reversed.last.invoiceNo;
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => NewInvoice(
                        invNumber: AppUtils.generateNextInvoiceNumber(invNo),
                      )));
        },
        child: const Icon(
          Icons.add,
          size: 40,
        ),
      ),
    );
  }
}
