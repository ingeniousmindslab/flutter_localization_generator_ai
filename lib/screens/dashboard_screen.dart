import 'package:auto_size_text/auto_size_text.dart';
import 'package:diy_boox/core/utils/color_constant.dart';
import 'package:diy_boox/provider/dashboard_provider.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../widgets/common_image_view.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final List<String> invoicesItems = [
    'This Week',
    'Last Week',
    'This Month',
    'Last Month',
    'This Quarter',
    'Last Quarter',
    'This Year',
    'Last Year',
  ];
  String? invoicesSelectedValue = "This Week";

  final List<String> topEarningItems = [
    'This Week',
    'Last Week',
    'This Month',
    'Last Month',
    'This Quarter',
    'Last Quarter',
    'This Year',
    'Last Year',
  ];
  String? topEarningSelectedValue = "This Week";

  final List<String> topExpenseItems = [
    'This Week',
    'Last Week',
    'This Month',
    'Last Month',
    'This Quarter',
    'Last Quarter',
    'This Year',
    'Last Year',
  ];
  String? topExpenseSelectedValue = "This Week";

  final List<String> transaction = [
    'This Week',
    'Last Week',
    'This Month',
    'Last Month',
    'This Quarter',
    'Last Quarter',
    'This Year',
    'Last Year',
  ];
  String? transactionSelectedValue = "This Week";

  List<_InvoiceData>? invoiceData;

  List<_TopEarnerData>? topEarnersData;

  List<_TransactionData>? transactionData;

  List<_TopExpenseCategories>? topExpenseCategories;

  List<Color> colors = [
    const Color(0xffB49AFF),
    const Color(0xff6042A5),
    const Color(0xff7761CD),
    const Color(0xffAB60CC),
  ];

  List<Color> topExpenseColors = [
    const Color(0xffB49AFF),
    const Color(0xff6042A5),
    const Color(0xffAB60CC),
    const Color(0xff7761CD),
    const Color(0xffAB60CC),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final dashboardProvider =
          Provider.of<DashboardProvider>(context, listen: false);
      dashboardProvider.getInvoiceHistory('1');
      dashboardProvider.getTopEarningByClients('1');
      dashboardProvider.getAllBankDashboard();
      // dashboardProvider.getDashboadBankFeed();
    });
  }

  @override
  Widget build(BuildContext context) {
    final dashboardProvider = Provider.of<DashboardProvider>(context);

    ///InvoiceChartData
    invoiceData = dashboardProvider.lineCharts.map((lineChart) {
      return _InvoiceData(
        label: lineChart.label,
        raisedInvoicesTotalAmount:
            double.parse(lineChart.raisedInvoicesTotalAmount),
        receivedInvoicesTotalAmount:
            double.parse(lineChart.receivedInvoicesTotalAmount),
        dueInvoiceTotalAmount: double.parse(lineChart.dueInvoiceTotalAmount),
      );
    }).toList();
    List<ChartSeries<_InvoiceData, String>> seriesList = [];
    if (invoiceData != null && invoiceData!.isNotEmpty) {
      // _InvoiceData firstData = invoiceData!.first;
      seriesList.add(StackedColumn100Series<_InvoiceData, String>(
        dataSource: invoiceData!,
        dataLabelSettings: const DataLabelSettings(isVisible: true),
        xValueMapper: (_InvoiceData data, _) => data.label,
        yValueMapper: (_InvoiceData data, _) => data.raisedInvoicesTotalAmount,
        name: 'Raised Invoices',
      ));

      // Check if 'receivedInvoicesTotalAmount' is available
      seriesList.add(StackedColumn100Series<_InvoiceData, String>(
        dataSource: invoiceData!,
        dataLabelSettings: const DataLabelSettings(isVisible: true),
        xValueMapper: (_InvoiceData data, _) => data.label,
        yValueMapper: (_InvoiceData data, _) =>
            data.receivedInvoicesTotalAmount,
        name: 'Received Invoices',
      ));

      // Check if 'dueInvoiceTotalAmount' is available
      seriesList.add(StackedColumn100Series<_InvoiceData, String>(
        dataSource: invoiceData!,
        dataLabelSettings: const DataLabelSettings(isVisible: true),
        xValueMapper: (_InvoiceData data, _) => data.label,
        yValueMapper: (_InvoiceData data, _) => data.dueInvoiceTotalAmount,
        name: 'Due Invoices',
      ));
    }

    ///InvoiceChartDataEnd

    ///TopEarnersData
    topEarnersData = dashboardProvider.topEarning.map((data) {
      return _TopEarnerData(
        clientID: data.clientId,
        clientName: data.clientName,
        totalAmount: data.totalAmount,
        dateFilter: data.dateFilter,
      );
    }).toList();

    ///TopEarnersDataEnd

    transactionData =
        dashboardProvider.allBankDashboardTransactions.map((data) {
      return _TransactionData(
        x: data.month!,
        credit: data.credit!,
        debit: data.debit!,
      );
    }).toList();

    topExpenseCategories = dashboardProvider.topExpenses.map((data) {
      return _TopExpenseCategories(
          x: data.categoryName,
          y: data.totalAmount,
          label: data.totalAmount.toString());
    }).toList();

    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      body: dashboardProvider.isLoading == false
          ? SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //text
                  const Padding(
                    padding: EdgeInsets.fromLTRB(20, 15, 0, 0),
                    child: Text(
                      'Saint Thomas PVT. LTD',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Sans',
                        fontWeight: FontWeight.w600,
                        color: Color(0xff404A5F),
                      ),
                    ),
                  ),
                  //invoices
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 16, 20, 0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      // height: 440,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 15, 20, 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Invoices',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Sans',
                                    fontSize: 16,
                                    color: ColorConstant.primaryColor,
                                  ),
                                ),
                                Container(
                                    height: 36,
                                    width: 140,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(5),
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Color(0x19000000),
                                          blurRadius: 5,
                                          offset: Offset(0, 0),
                                          spreadRadius: 0,
                                        )
                                      ],
                                    ),
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton2(
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 14,
                                          fontFamily: 'Sans',
                                          color: Color(0xff404A5F),
                                        ),
                                        items: invoicesItems
                                            .map((item) =>
                                                DropdownMenuItem<String>(
                                                  value: item,
                                                  child: Text(
                                                    item,
                                                    style: const TextStyle(
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                ))
                                            .toList(),
                                        value: invoicesSelectedValue,
                                        onChanged: (value) {
                                          setState(() {
                                            invoicesSelectedValue = value;
                                          });
                                          if (value == 'This Week') {
                                            Provider.of<DashboardProvider>(
                                                    context,
                                                    listen: false)
                                                .getInvoiceHistory('1');
                                          }
                                          if (value == 'Last Week') {
                                            Provider.of<DashboardProvider>(
                                                    context,
                                                    listen: false)
                                                .getInvoiceHistory('2');
                                          }
                                          if (value == 'This Month') {
                                            Provider.of<DashboardProvider>(
                                                    context,
                                                    listen: false)
                                                .getInvoiceHistory('3');
                                          }
                                          if (value == 'Last Month') {
                                            Provider.of<DashboardProvider>(
                                                    context,
                                                    listen: false)
                                                .getInvoiceHistory('4');
                                          }
                                          if (value == 'This Quarter') {
                                            Provider.of<DashboardProvider>(
                                                    context,
                                                    listen: false)
                                                .getInvoiceHistory('5');
                                          }
                                          if (value == 'Last Quarter') {
                                            Provider.of<DashboardProvider>(
                                                    context,
                                                    listen: false)
                                                .getInvoiceHistory('6');
                                          }
                                          if (value == 'This Year') {
                                            Provider.of<DashboardProvider>(
                                                    context,
                                                    listen: false)
                                                .getInvoiceHistory('7');
                                          }
                                          if (value == 'Last Year') {
                                            Provider.of<DashboardProvider>(
                                                    context,
                                                    listen: false)
                                                .getInvoiceHistory('8');
                                          }
                                        },
                                      ),
                                    )),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                            child: Divider(
                              thickness: 2,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: FittedBox(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                5, 5, 0, 0),
                                            child: Container(
                                              height: 10,
                                              width: 10,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: const Color(0xff00E396),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const AutoSizeText(
                                                'Total Raised (GBP)',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: 'Sans',
                                                  fontSize: 14,
                                                  color: Color(0xff404A5F),
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
                                                '£ ${dashboardProvider.summary?.totalRaisedAmount}',
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: 'Sans',
                                                  fontSize: 14,
                                                  color: Color(0xff00E396),
                                                ),
                                                presetFontSizes: const [
                                                  14,
                                                  12,
                                                  10,
                                                  8
                                                ],
                                                // minFontSize: 14,
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                              // Text(
                                              //   '£ 5670',
                                              //   overflow: TextOverflow.ellipsis,
                                              //   style: TextStyle(
                                              //     fontWeight: FontWeight.w600,
                                              //     fontFamily: 'Sans',
                                              //     fontSize: 18,
                                              //     color: Color(0xff00E396),
                                              //   ),
                                              // )
                                            ],
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                5, 5, 0, 0),
                                            child: Container(
                                              height: 10,
                                              width: 10,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: const Color(0xffFF594F),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const AutoSizeText(
                                                'Total Due (GBP)',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: 'Sans',
                                                  fontSize: 14,
                                                  color: Color(0xff404A5F),
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
                                                '£ ${dashboardProvider.summary?.totalDueAmount}',
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: 'Sans',
                                                  fontSize: 14,
                                                  color: Color(0xffFF594F),
                                                ),
                                                presetFontSizes: const [
                                                  14,
                                                  12,
                                                  10,
                                                  8
                                                ],
                                                // minFontSize: 14,
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                              // Text(
                                              //   '£ 5670',
                                              //   overflow: TextOverflow.ellipsis,
                                              //   style: TextStyle(
                                              //     fontWeight: FontWeight.w600,
                                              //     fontFamily: 'Sans',
                                              //     fontSize: 18,
                                              //     color: Color(0xff00E396),
                                              //   ),
                                              // )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(5, 0, 0, 0),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 37,
                                          width: 1,
                                          color: const Color(0xffDCDFE6),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Container(
                                          height: 37,
                                          width: 1,
                                          color: const Color(0xffDCDFE6),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                5, 5, 0, 0),
                                            child: Container(
                                              height: 10,
                                              width: 10,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: const Color(0xff008FFB),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const AutoSizeText(
                                                'Total Received (GBP)',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: 'Sans',
                                                  fontSize: 14,
                                                  color: Color(0xff404A5F),
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
                                                '£ ${dashboardProvider.summary?.totalReceivedAmount}',
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: 'Sans',
                                                  fontSize: 14,
                                                  color: Color(0xff008FFB),
                                                ),
                                                presetFontSizes: const [
                                                  14,
                                                  12,
                                                  10,
                                                  8
                                                ],
                                                // minFontSize: 14,
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                              // Text(
                                              //   '£ 5670',
                                              //   overflow: TextOverflow.ellipsis,
                                              //   style: TextStyle(
                                              //     fontWeight: FontWeight.w600,
                                              //     fontFamily: 'Sans',
                                              //     fontSize: 18,
                                              //     color: Color(0xff00E396),
                                              //   ),
                                              // )
                                            ],
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                5, 5, 0, 0),
                                            child: Container(
                                              height: 10,
                                              width: 10,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: const Color(0xffFF594F),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const AutoSizeText(
                                                'Total OverDue (GBP)',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: 'Sans',
                                                  fontSize: 14,
                                                  color: Color(0xff404A5F),
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
                                                '£ ${dashboardProvider.summary?.totalOverDueAmount}',
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: 'Sans',
                                                  fontSize: 14,
                                                  color: Color(0xffFF594F),
                                                ),
                                                presetFontSizes: const [
                                                  14,
                                                  12,
                                                  10,
                                                  8
                                                ],
                                                // minFontSize: 14,
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                              // Text(
                                              //   '£ 5670',
                                              //   overflow: TextOverflow.ellipsis,
                                              //   style: TextStyle(
                                              //     fontWeight: FontWeight.w600,
                                              //     fontFamily: 'Sans',
                                              //     fontSize: 18,
                                              //     color: Color(0xff00E396),
                                              //   ),
                                              // )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: SizedBox(
                              height: 230,
                              child: SfCartesianChart(
                                plotAreaBorderWidth: 0,
                                // title: ChartTitle(
                                //     text: isCardView ? '' : 'Quarterly wise sales of products'),
                                // legend: Legend(
                                //     isVisible: !isCardView, overflowMode: LegendItemOverflowMode.wrap),
                                primaryXAxis: CategoryAxis(
                                  majorGridLines:
                                      const MajorGridLines(width: 0),
                                ),
                                primaryYAxis: NumericAxis(
                                    rangePadding: ChartRangePadding.none,
                                    axisLine: const AxisLine(width: 0),
                                    majorTickLines:
                                        const MajorTickLines(size: 0)),
                                series: seriesList,
                                // series: <ChartSeries<_InvoiceData, String>>[
                                //   StackedColumn100Series<_InvoiceData, String>(
                                //     dataSource: invoiceData!,
                                //     dataLabelSettings: const DataLabelSettings(
                                //         isVisible: true),
                                //     xValueMapper: (_InvoiceData sales, _) =>
                                //         sales.label,
                                //     yValueMapper: (_InvoiceData sales, _) =>
                                //         sales.dueInvoiceTotalAmount,
                                //     // name: 'Product C',
                                //   ),
                                //   StackedColumn100Series<_InvoiceData, String>(
                                //     dataSource: invoiceData!,
                                //     dataLabelSettings: const DataLabelSettings(
                                //         isVisible: true),
                                //     xValueMapper: (_InvoiceData sales, _) =>
                                //         sales.label,
                                //     yValueMapper: (_InvoiceData sales, _) =>
                                //         sales.raisedInvoicesTotalAmount,
                                //     // name: 'Product D',
                                //   ),
                                //   StackedColumn100Series<_InvoiceData, String>(
                                //     dataSource: invoiceData!,
                                //     dataLabelSettings: const DataLabelSettings(
                                //         isVisible: true),
                                //     xValueMapper: (_InvoiceData sales, _) =>
                                //         sales.label,
                                //     yValueMapper: (_InvoiceData sales, _) =>
                                //         sales.receivedInvoicesTotalAmount,
                                //     // name: 'Product D',
                                //   )
                                // ],
                                tooltipBehavior: TooltipBehavior(
                                    enable: true,
                                    header: '',
                                    canShowMarker: false),
                              ),
                            ),
                          ),
                          // Padding(
                          //   padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                          //   child: SizedBox(
                          //     height: 230,
                          //     child: SfCartesianChart(
                          //       tooltipBehavior: TooltipBehavior(
                          //         enable: true,
                          //       ),
                          //       margin: EdgeInsets.zero,
                          //       primaryXAxis: DateTimeAxis(
                          //         minimum: DateTime(2002),
                          //         maximum: DateTime(2005),
                          //         isVisible: true,
                          //       ),
                          //       primaryYAxis:
                          //           NumericAxis(isVisible: false, maximum: 4),
                          //       plotAreaBorderWidth: 0,
                          //       series: <SplineAreaSeries<ChartSampleData2,
                          //           DateTime>>[
                          //         SplineAreaSeries<ChartSampleData2, DateTime>(
                          //             dataSource: <ChartSampleData2>[
                          //               ChartSampleData2(DateTime(2002), 2.2),
                          //               ChartSampleData2(DateTime(2003), 3.4),
                          //               ChartSampleData2(DateTime(2004), 2.8),
                          //               ChartSampleData2(DateTime(2005), 1.6),
                          //             ],
                          //             xValueMapper:
                          //                 (ChartSampleData2 sales, _) =>
                          //                     sales.x as DateTime,
                          //             yValueMapper:
                          //                 (ChartSampleData2 sales, _) =>
                          //                     sales.y,
                          //             gradient: LinearGradient(
                          //               colors: <Color>[
                          //                 Color(0xffECE5FF),
                          //                 Color(0xffEFEAFF),
                          //                 Color(0xffF5F3FF),
                          //               ],
                          //               begin: Alignment.topCenter,
                          //               end: Alignment.bottomCenter,
                          //             ),
                          //             animationDuration: 0)
                          //       ],
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ),
                  //bank accounts
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 16, 20, 0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      // height: 366,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 20, 20, 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Bank Accounts',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Sans',
                                    fontSize: 16,
                                    color: ColorConstant.primaryColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                            child: Divider(
                              thickness: 2,
                            ),
                          ),
                          dashboardProvider.bankDashboard.isEmpty
                              ? const Padding(
                                  padding: EdgeInsets.fromLTRB(0, 100, 0, 100),
                                  child: Text(
                                    'No records found',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: Color(0xff404A5F),
                                    ),
                                  ),
                                )
                              : Column(
                                  children: [
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: List.generate(
                                            dashboardProvider
                                                .bankDashboard.length, (index) {
                                          return Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                20, 0, 20, 0),
                                            child: SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width -
                                                  80,
                                              child: Column(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets
                                                            .fromLTRB(
                                                        20, 10, 20, 0),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Row(
                                                          children: [
                                                            CommonImageView(
                                                              svgPath:
                                                                  'assets/bank_account.svg',
                                                            ),
                                                            const SizedBox(
                                                              width: 8,
                                                            ),
                                                            Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                SizedBox(
                                                                  width: 200,
                                                                  child: Text(
                                                                    dashboardProvider
                                                                        .bankDashboard[
                                                                            index]
                                                                        .accountName,
                                                                    style:
                                                                        TextStyle(
                                                                      fontFamily:
                                                                          'Sans',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      fontSize:
                                                                          14,
                                                                      color: ColorConstant
                                                                          .primaryColor1,
                                                                    ),
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                  ),
                                                                ),
                                                                Text(
                                                                  dashboardProvider
                                                                      .bankDashboard[
                                                                          index]
                                                                      .accountNo,
                                                                  style:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        12,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    fontFamily:
                                                                        'Sans',
                                                                    color: ColorConstant
                                                                        .primaryColor1,
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(0, 40, 0, 25),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        if (index > 0)
                                                          IconButton(
                                                              onPressed: () {},
                                                              icon: const Icon(
                                                                Icons
                                                                    .arrow_back_ios_new_rounded,
                                                                color: Color(
                                                                    0xff404A5F),
                                                              )),
                                                        if (index == 0)
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(8.0),
                                                            child: SizedBox(
                                                              height: 24,
                                                              width: 24,
                                                            ),
                                                          ),
                                                        Column(
                                                          children: [
                                                            const Text(
                                                              'Money In',
                                                              style: TextStyle(
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                fontFamily:
                                                                    'Sans',
                                                              ),
                                                            ),
                                                            Text(
                                                              '£ ${dashboardProvider.bankDashboard[index].credited}',
                                                              style:
                                                                  const TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontSize: 20,
                                                                fontFamily:
                                                                    'Sans',
                                                              ),
                                                            ),
                                                            const SizedBox(
                                                              height: 25,
                                                            ),
                                                            const Text(
                                                              'Money Out',
                                                              style: TextStyle(
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                fontFamily:
                                                                    'Sans',
                                                              ),
                                                            ),
                                                            Text(
                                                              '£ ${dashboardProvider.bankDashboard[index].debited}',
                                                              style:
                                                                  const TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontSize: 20,
                                                                fontFamily:
                                                                    'Sans',
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        if (index <
                                                            dashboardProvider
                                                                    .bankDashboard
                                                                    .length -
                                                                1)
                                                          IconButton(
                                                              onPressed: () {},
                                                              icon: const Icon(
                                                                Icons
                                                                    .arrow_forward_ios_rounded,
                                                                color: Color(
                                                                    0xff404A5F),
                                                              )),
                                                        if (index ==
                                                            dashboardProvider
                                                                    .bankDashboard
                                                                    .length -
                                                                1)
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(8.0),
                                                            child: SizedBox(
                                                              height: 24,
                                                              width: 24,
                                                            ),
                                                          ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        }),
                                      ),
                                    ),
                                    const Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(15, 0, 15, 10),
                                      child: Divider(
                                        thickness: 2,
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                                      child: Column(
                                        children: [
                                          Text(
                                            '119 to review',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'Sans',
                                            ),
                                          ),
                                          Text(
                                            'Updated 15 hour ago',
                                            style: TextStyle(
                                              fontFamily: 'Sans',
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                        ],
                      ),
                    ),
                  ),
                  //top earners
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 16, 20, 0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 435,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 15, 20, 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Top Earners',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Sans',
                                    fontSize: 16,
                                    color: ColorConstant.primaryColor,
                                  ),
                                ),
                                Container(
                                    height: 36,
                                    width: 140,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(5),
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Color(0x19000000),
                                          blurRadius: 5,
                                          offset: Offset(0, 0),
                                          spreadRadius: 0,
                                        )
                                      ],
                                    ),
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton2(
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 14,
                                          fontFamily: 'Sans',
                                          color: Color(0xff404A5F),
                                        ),
                                        items: topEarningItems
                                            .map((item) =>
                                                DropdownMenuItem<String>(
                                                  value: item,
                                                  child: Text(
                                                    item,
                                                    style: const TextStyle(
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                ))
                                            .toList(),
                                        value: topEarningSelectedValue,
                                        onChanged: (value) {
                                          setState(() {
                                            topEarningSelectedValue = value;
                                          });
                                          if (value == 'This Week') {
                                            Provider.of<DashboardProvider>(
                                                    context,
                                                    listen: false)
                                                .getTopEarningByClients('1');
                                          }
                                          if (value == 'Last Week') {
                                            Provider.of<DashboardProvider>(
                                                    context,
                                                    listen: false)
                                                .getTopEarningByClients('2');
                                          }
                                          if (value == 'This Month') {
                                            Provider.of<DashboardProvider>(
                                                    context,
                                                    listen: false)
                                                .getTopEarningByClients('3');
                                          }
                                          if (value == 'Last Month') {
                                            Provider.of<DashboardProvider>(
                                                    context,
                                                    listen: false)
                                                .getTopEarningByClients('4');
                                          }
                                          if (value == 'This Quarter') {
                                            Provider.of<DashboardProvider>(
                                                    context,
                                                    listen: false)
                                                .getTopEarningByClients('5');
                                          }
                                          if (value == 'Last Quarter') {
                                            Provider.of<DashboardProvider>(
                                                    context,
                                                    listen: false)
                                                .getTopEarningByClients('6');
                                          }
                                          if (value == 'This Year') {
                                            Provider.of<DashboardProvider>(
                                                    context,
                                                    listen: false)
                                                .getTopEarningByClients('7');
                                          }
                                          if (value == 'Last Year') {
                                            Provider.of<DashboardProvider>(
                                                    context,
                                                    listen: false)
                                                .getTopEarningByClients('8');
                                          }
                                        },
                                      ),
                                    )),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                            child: Divider(
                              thickness: 2,
                            ),
                          ),
                          dashboardProvider.topEarning.isEmpty
                              ? const Padding(
                                  padding: EdgeInsets.fromLTRB(0, 150, 0, 0),
                                  child: Text(
                                    'No records found',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: Color(0xff404A5F),
                                    ),
                                  ),
                                )
                              : Column(
                                  children: [
                                    SfCircularChart(
                                      tooltipBehavior:
                                          TooltipBehavior(enable: true),
                                      series: <CircularSeries<_TopEarnerData,
                                          String>>[
                                        PieSeries<_TopEarnerData, String>(
                                          dataSource: topEarnersData!,
                                          xValueMapper: (data, _) =>
                                              '${topEarnersData!.indexOf(data) + 1}',
                                          yValueMapper: (data, _) =>
                                              data.totalAmount,
                                          dataLabelMapper: (data, _) =>
                                              data.clientName,
                                          pointColorMapper: (data, _) => colors[
                                              topEarnersData!.indexOf(data) %
                                                  colors.length],
                                          startAngle: 100,
                                          endAngle: 100,
                                          explode: true,
                                          strokeColor: Colors.white,
                                          dataLabelSettings:
                                              const DataLabelSettings(
                                            textStyle: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Sans',
                                              color: Colors.white,
                                            ),
                                            isVisible: true,
                                            labelPosition:
                                                ChartDataLabelPosition.inside,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          20, 0, 20, 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: List.generate(
                                          topEarnersData!.length,
                                          (index) => Row(
                                            children: [
                                              Container(
                                                height: 10,
                                                width: 10,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  color: colors[
                                                      index % colors.length],
                                                ),
                                              ),
                                              const SizedBox(width: 5),
                                              Text(
                                                topEarnersData![index]
                                                    .clientName,
                                                style: const TextStyle(
                                                  fontFamily: 'Sans',
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                        ],
                      ),
                    ),
                  ),
                  //top expense categories
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 16, 20, 0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 15, 20, 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: AutoSizeText(
                                    'Top Expense Categories',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Sans',
                                      fontSize: 16,
                                      color: ColorConstant.primaryColor,
                                    ),
                                    minFontSize: 14,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Container(
                                    height: 36,
                                    width: 140,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(5),
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Color(0x19000000),
                                          blurRadius: 5,
                                          offset: Offset(0, 0),
                                          spreadRadius: 0,
                                        )
                                      ],
                                    ),
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton2(
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 14,
                                          fontFamily: 'Sans',
                                          color: Color(0xff404A5F),
                                        ),
                                        items: topExpenseItems
                                            .map((item) =>
                                                DropdownMenuItem<String>(
                                                  value: item,
                                                  child: Text(
                                                    item,
                                                    style: const TextStyle(
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                ))
                                            .toList(),
                                        value: topExpenseSelectedValue,
                                        onChanged: (value) {
                                          setState(() {
                                            topExpenseSelectedValue = value;
                                          });
                                          if (value == 'This Week') {
                                            Provider.of<DashboardProvider>(
                                                    context,
                                                    listen: false)
                                                .getTopExpensesBycategories(
                                                    '1');
                                          }
                                          if (value == 'Last Week') {
                                            Provider.of<DashboardProvider>(
                                                    context,
                                                    listen: false)
                                                .getTopExpensesBycategories(
                                                    '2');
                                          }
                                          if (value == 'This Month') {
                                            Provider.of<DashboardProvider>(
                                                    context,
                                                    listen: false)
                                                .getTopExpensesBycategories(
                                                    '3');
                                          }
                                          if (value == 'Last Month') {
                                            Provider.of<DashboardProvider>(
                                                    context,
                                                    listen: false)
                                                .getTopExpensesBycategories(
                                                    '4');
                                          }
                                          if (value == 'This Quarter') {
                                            Provider.of<DashboardProvider>(
                                                    context,
                                                    listen: false)
                                                .getTopExpensesBycategories(
                                                    '5');
                                          }
                                          if (value == 'Last Quarter') {
                                            Provider.of<DashboardProvider>(
                                                    context,
                                                    listen: false)
                                                .getTopExpensesBycategories(
                                                    '6');
                                          }
                                          if (value == 'This Year') {
                                            Provider.of<DashboardProvider>(
                                                    context,
                                                    listen: false)
                                                .getTopExpensesBycategories(
                                                    '7');
                                          }
                                          if (value == 'Last Year') {
                                            Provider.of<DashboardProvider>(
                                                    context,
                                                    listen: false)
                                                .getTopExpensesBycategories(
                                                    '8');
                                          }
                                        },
                                      ),
                                    )),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                            child: Divider(
                              thickness: 2,
                            ),
                          ),
                          dashboardProvider.topExpenses.isEmpty
                              ? const Padding(
                                  padding: EdgeInsets.fromLTRB(0, 150, 0, 150),
                                  child: Text(
                                    'No records found',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: Color(0xff404A5F),
                                    ),
                                  ),
                                )
                              : Column(
                                  children: [
                                    SizedBox(
                                      height: 250,
                                      child: SfCircularChart(
                                        // tooltipBehavior: TooltipBehavior(
                                        //   enable: true,
                                        //   // header: 'Customer 1',
                                        //   format: '1',
                                        // ),
                                        series: <DoughnutSeries<
                                            _TopExpenseCategories, String>>[
                                          DoughnutSeries<_TopExpenseCategories,
                                              String>(
                                            radius: '80%',
                                            explode: true,
                                            explodeOffset: '10%',
                                            dataSource: topExpenseCategories!,
                                            xValueMapper: (data, _) => data.x,
                                            yValueMapper: (data, _) => data.y,
                                            // dataLabelMapper:
                                            //     (ChartSampleData data, _) => data.text,
                                            pointColorMapper: (data, _) =>
                                                topExpenseColors[
                                                    topExpenseCategories!
                                                            .indexOf(data) %
                                                        topExpenseColors
                                                            .length],
                                            dataLabelSettings:
                                                const DataLabelSettings(
                                              textStyle: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: 'Sans',
                                                color: Colors.white,
                                              ),
                                              isVisible: true,
                                              labelPosition:
                                                  ChartDataLabelPosition.inside,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          20, 0, 20, 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: List.generate(
                                          topExpenseCategories!.length,
                                          (index) => Row(
                                            children: [
                                              Container(
                                                height: 10,
                                                width: 10,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  color: colors[
                                                      index % colors.length],
                                                ),
                                              ),
                                              const SizedBox(width: 5),
                                              Text(
                                                topExpenseCategories![index].x,
                                                style: const TextStyle(
                                                  fontFamily: 'Sans',
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                        ],
                      ),
                    ),
                  ),
                  //transactions
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 16, 20, 40),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 526,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 15, 20, 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Transactions',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Sans',
                                    fontSize: 16,
                                    color: ColorConstant.primaryColor,
                                  ),
                                ),
                                Container(
                                    height: 36,
                                    width: 140,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(5),
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Color(0x19000000),
                                          blurRadius: 5,
                                          offset: Offset(0, 0),
                                          spreadRadius: 0,
                                        )
                                      ],
                                    ),
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton2(
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 14,
                                          fontFamily: 'Sans',
                                          color: Color(0xff404A5F),
                                        ),
                                        items: transaction
                                            .map((item) =>
                                                DropdownMenuItem<String>(
                                                  value: item,
                                                  child: Text(
                                                    item,
                                                    style: const TextStyle(
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                ))
                                            .toList(),
                                        value: transactionSelectedValue,
                                        onChanged: (value) {
                                          setState(() {
                                            transactionSelectedValue = value;
                                          });
                                          if (value == 'This Week') {
                                            Provider.of<DashboardProvider>(
                                                    context,
                                                    listen: false)
                                                .getDashboadBankFeed(
                                                    dashboardProvider
                                                        .universalIdValue!,
                                                    1);
                                          }
                                          if (value == 'Last Week') {
                                            Provider.of<DashboardProvider>(
                                                    context,
                                                    listen: false)
                                                .getDashboadBankFeed(
                                                    dashboardProvider
                                                        .universalIdValue!,
                                                    2);
                                          }
                                          if (value == 'This Month') {
                                            Provider.of<DashboardProvider>(
                                                    context,
                                                    listen: false)
                                                .getDashboadBankFeed(
                                                    dashboardProvider
                                                        .universalIdValue!,
                                                    3);
                                          }
                                          if (value == 'Last Month') {
                                            Provider.of<DashboardProvider>(
                                                    context,
                                                    listen: false)
                                                .getDashboadBankFeed(
                                                    dashboardProvider
                                                        .universalIdValue!,
                                                    4);
                                          }
                                          if (value == 'This Quarter') {
                                            Provider.of<DashboardProvider>(
                                                    context,
                                                    listen: false)
                                                .getDashboadBankFeed(
                                                    dashboardProvider
                                                        .universalIdValue!,
                                                    5);
                                          }
                                          if (value == 'Last Quarter') {
                                            Provider.of<DashboardProvider>(
                                                    context,
                                                    listen: false)
                                                .getDashboadBankFeed(
                                                    dashboardProvider
                                                        .universalIdValue!,
                                                    6);
                                          }
                                          if (value == 'This Year') {
                                            Provider.of<DashboardProvider>(
                                                    context,
                                                    listen: false)
                                                .getDashboadBankFeed(
                                                    dashboardProvider
                                                        .universalIdValue!,
                                                    7);
                                          }
                                          if (value == 'Last Year') {
                                            Provider.of<DashboardProvider>(
                                                    context,
                                                    listen: false)
                                                .getDashboadBankFeed(
                                                    dashboardProvider
                                                        .universalIdValue!,
                                                    8);
                                          }
                                        },
                                      ),
                                    )),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                            child: Divider(
                              thickness: 2,
                            ),
                          ),
                          dashboardProvider.bankDashboard.isEmpty
                              ? const Padding(
                                  padding: EdgeInsets.fromLTRB(0, 180, 0, 0),
                                  child: Text(
                                    'No records found',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: Color(0xff404A5F),
                                    ),
                                  ),
                                )
                              : Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          20, 10, 0, 0),
                                      child: Row(
                                        children: [
                                          Container(
                                              height: 36,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                boxShadow: const [
                                                  BoxShadow(
                                                    color: Color(0x19000000),
                                                    blurRadius: 5,
                                                    offset: Offset(0, 0),
                                                    spreadRadius: 0,
                                                  )
                                                ],
                                              ),
                                              child:
                                                  DropdownButtonHideUnderline(
                                                child: DropdownButton2(
                                                  style: const TextStyle(
                                                    fontWeight: FontWeight.w300,
                                                    fontSize: 14,
                                                    fontFamily: 'Sans',
                                                    color: Color(0xff404A5F),
                                                  ),
                                                  items: dashboardProvider
                                                      .bankDashboard
                                                      .map((item) =>
                                                          DropdownMenuItem<
                                                              String>(
                                                            value: item
                                                                .accountName,
                                                            child: Text(
                                                              item.accountName,
                                                              style:
                                                                  const TextStyle(
                                                                fontSize: 14,
                                                              ),
                                                            ),
                                                          ))
                                                      .toList(),
                                                  value: dashboardProvider
                                                      .transactionsSelectedValue,
                                                  onChanged: (value) {
                                                    dashboardProvider
                                                            .transactionsSelectedValue =
                                                        value;

                                                    int index = dashboardProvider
                                                        .bankDashboard
                                                        .indexWhere((item) =>
                                                            item.universalId ==
                                                            value);

                                                    // Update the universalId in the provider based on index
                                                    if (index != -1) {
                                                      dashboardProvider
                                                              .universalId =
                                                          dashboardProvider
                                                              .bankDashboard[
                                                                  index]
                                                              .universalId;
                                                    }
                                                  },
                                                ),
                                              )),
                                        ],
                                      ),
                                    ),
                                    // Padding(
                                    //   padding:
                                    //       EdgeInsets.fromLTRB(0, 20, 0, 10),
                                    //   child: SizedBox(
                                    //     height: 340,
                                    //     child: SfCartesianChart(
                                    //       plotAreaBorderWidth: 0,
                                    //       primaryXAxis: CategoryAxis(
                                    //         majorGridLines:
                                    //             const MajorGridLines(width: 0),
                                    //       ),
                                    //       primaryYAxis: NumericAxis(
                                    //           maximum: 20,
                                    //           minimum: 0,
                                    //           interval: 4,
                                    //           axisLine:
                                    //               const AxisLine(width: 0),
                                    //           majorTickLines:
                                    //               const MajorTickLines(
                                    //                   size: 0)),
                                    //       tooltipBehavior:
                                    //           TooltipBehavior(enable: true),
                                    //       series: <ColumnSeries<
                                    //           ChartSampleData1, String>>[
                                    //         ColumnSeries<ChartSampleData1,
                                    //                 String>(
                                    //
                                    //             /// To apply the column width here.
                                    //             width: 0.8,
                                    //
                                    //             /// To apply the spacing betweeen to two columns here.
                                    //             spacing: 0.2,
                                    //             dataSource: <ChartSampleData1>[
                                    //               ChartSampleData1(
                                    //                   'January',
                                    //                   20,
                                    //                   9,
                                    //                   13,
                                    //                   Color(0xffAB60CC)),
                                    //               ChartSampleData1('Febuary', 8,
                                    //                   10, 7, Color(0xffAB60CC)),
                                    //               ChartSampleData1('March', 12,
                                    //                   10, 5, Color(0xffAB60CC)),
                                    //               ChartSampleData1('April', 4,
                                    //                   8, 14, Color(0xffAB60CC)),
                                    //               ChartSampleData1('May', 8, 5,
                                    //                   4, Color(0xffAB60CC)),
                                    //             ],
                                    //             // color: const Color.fromRGBO(251, 193, 55, 1),
                                    //             xValueMapper:
                                    //                 (ChartSampleData1 sales,
                                    //                         _) =>
                                    //                     sales.x,
                                    //             yValueMapper:
                                    //                 (ChartSampleData1 sales,
                                    //                         _) =>
                                    //                     sales.y,
                                    //             pointColorMapper:
                                    //                 (ChartSampleData1 sales,
                                    //                         _) =>
                                    //                     sales.color,
                                    //             name: 'Gold'),
                                    //         ColumnSeries<ChartSampleData1,
                                    //                 String>(
                                    //
                                    //             /// To apply the column width here.
                                    //             width: 0.8,
                                    //
                                    //             /// To apply the spacing betweeen to two columns here.
                                    //             spacing: 0.2,
                                    //             dataSource: <ChartSampleData1>[
                                    //               ChartSampleData1(
                                    //                   'January',
                                    //                   10,
                                    //                   8,
                                    //                   13,
                                    //                   Color(0xff7761CD)),
                                    //               ChartSampleData1('Febuary', 8,
                                    //                   10, 7, Color(0xff7761CD)),
                                    //               ChartSampleData1('March', 12,
                                    //                   10, 5, Color(0xff7761CD)),
                                    //               ChartSampleData1('April', 4,
                                    //                   8, 14, Color(0xff7761CD)),
                                    //               ChartSampleData1('May', 8, 5,
                                    //                   4, Color(0xff7761CD)),
                                    //             ],
                                    //             // color: const Color.fromRGBO(251, 193, 55, 1),
                                    //             xValueMapper:
                                    //                 (ChartSampleData1 sales,
                                    //                         _) =>
                                    //                     sales.x,
                                    //             yValueMapper:
                                    //                 (ChartSampleData1 sales,
                                    //                         _) =>
                                    //                     sales.y,
                                    //             pointColorMapper:
                                    //                 (ChartSampleData1 sales,
                                    //                         _) =>
                                    //                     sales.color,
                                    //             name: 'Gold'),
                                    //       ],
                                    //     ),
                                    //   ),
                                    // ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 20, 0, 10),
                                      child: SizedBox(
                                        height: 340,
                                        child: SfCartesianChart(
                                          plotAreaBorderWidth: 0,
                                          primaryXAxis: CategoryAxis(
                                            majorGridLines:
                                                const MajorGridLines(width: 0),
                                          ),
                                          primaryYAxis: NumericAxis(
                                            maximum: 20,
                                            minimum: 0,
                                            interval: 4,
                                            axisLine: const AxisLine(width: 0),
                                            majorTickLines:
                                                const MajorTickLines(size: 0),
                                          ),
                                          tooltipBehavior:
                                              TooltipBehavior(enable: true),
                                          series: <ColumnSeries<
                                              _TransactionData, String>>[
                                            ColumnSeries<_TransactionData,
                                                String>(
                                              width: 0.8,
                                              spacing: 0.2,
                                              dataSource:
                                                  transactionData!, // Use the first series data here
                                              xValueMapper:
                                                  (_TransactionData sales, _) =>
                                                      sales.x,
                                              yValueMapper: (_TransactionData
                                                          sales,
                                                      _) =>
                                                  double.parse(sales.credit),
                                              pointColorMapper:
                                                  (_TransactionData sales, _) =>
                                                      const Color(0xffAB60CC),
                                              name: 'Gold',
                                            ),
                                            ColumnSeries<_TransactionData,
                                                String>(
                                              width: 0.8,
                                              spacing: 0.2,
                                              dataSource:
                                                  transactionData!, // Use the second series data here
                                              xValueMapper:
                                                  (_TransactionData sales, _) =>
                                                      sales.x,
                                              yValueMapper:
                                                  (_TransactionData sales, _) =>
                                                      double.parse(sales.debit),
                                              pointColorMapper:
                                                  (_TransactionData sales, _) =>
                                                      const Color(0xff7761CD),
                                              name: 'Silver',
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          20, 0, 0, 10),
                                      child: Row(
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                height: 10,
                                                width: 10,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  color:
                                                      const Color(0xffAB60CC),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              const Text(
                                                'Money In',
                                                style: TextStyle(
                                                  fontFamily: 'Sans',
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            width: 40,
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                height: 10,
                                                width: 10,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  color:
                                                      const Color(0xff7761CD),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              const Text(
                                                'Money Out',
                                                style: TextStyle(
                                                  fontFamily: 'Sans',
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          : const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: CircularProgressIndicator(
                    color: Color(0xff6661B8),
                  ),
                )
              ],
            ),
    );
  }
}

// class ChartSampleData1 {
//   ChartSampleData1(
//       this.x, this.y, this.secondSeriesYValue, this.thirdSeriesYValue,
//       [this.color]);
//   final String x;
//   final int y;
//   final int secondSeriesYValue;
//   final int thirdSeriesYValue;
//   final Color? color;
// }
//
// class ChartSampleData {
//   final String x;
//   final double y;
//   final String label;
//   final Color color;
//
//   ChartSampleData(this.x, this.y, this.label, this.color);
// }

class _TopExpenseCategories {
  final String x;
  final double y;
  final String label;

  _TopExpenseCategories({
    required this.x,
    required this.y,
    required this.label,
  });
}

class _TopEarnerData {
  final String clientID;
  final String clientName;
  final double totalAmount;
  final int dateFilter;

  _TopEarnerData({
    required this.clientID,
    required this.clientName,
    required this.totalAmount,
    required this.dateFilter,
  });
}

class _InvoiceData {
  final String label;
  final double raisedInvoicesTotalAmount;
  final double receivedInvoicesTotalAmount;
  final double dueInvoiceTotalAmount;

  _InvoiceData({
    required this.label,
    required this.raisedInvoicesTotalAmount,
    required this.receivedInvoicesTotalAmount,
    required this.dueInvoiceTotalAmount,
  });
}

class _TransactionData {
  String x;
  String credit;
  String debit;

  _TransactionData({
    required this.x,
    required this.credit,
    required this.debit,
  });
}
