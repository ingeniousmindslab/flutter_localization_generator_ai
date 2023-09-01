import 'package:diy_boox/model/invoice/execute_invoice_list_response.dart';
import 'package:diy_boox/model/invoice/get_invoice_response.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../core/utils/color_constant.dart';
import '../../../notification_screen.dart';

class InvoicesSummaryScreen extends StatefulWidget {
  final ExecuteInvoiceListResponse? invoice;
  const InvoicesSummaryScreen({this.invoice, Key? key}) : super(key: key);

  @override
  State<InvoicesSummaryScreen> createState() => _InvoicesSummaryScreenState();
}

class _InvoicesSummaryScreenState extends State<InvoicesSummaryScreen> {
  final List<String> items = [
    'This Quarter',
    'Model - I',
    'Model - F',
    'Model - E',
  ];
  String? selectedValue = "This Quarter";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        automaticallyImplyLeading: false,
        backgroundColor: ColorConstant.primaryColor,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
        title: Text(
          'Invoices Summary',
          style: TextStyle(
            fontSize: 18,
            fontFamily: 'Sans',
            fontWeight: FontWeight.w400,
          ),
        ),
        centerTitle: false,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NotificationScreen()));
              },
              icon: const Icon(Icons.notifications_none))
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 220,
              width: MediaQuery.of(context).size.width,
              color: ColorConstant.primaryColor,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: Container(
                    height: 260,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                          child: FittedBox(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Total Raised (GBP)',
                                      style: TextStyle(
                                        fontFamily: 'Sans',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                        color: Color(0xff3F4852),
                                      ),
                                    ),
                                    RichText(
                                        text: TextSpan(children: [
                                      TextSpan(
                                        text: widget.invoice?.totalAmount
                                            .toString(),
                                        style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'Sans',
                                          color: Colors.black,
                                        ),
                                      ),
                                      WidgetSpan(
                                        child: Icon(
                                          Icons.arrow_drop_up,
                                          color: Color(0xff6EA509),
                                        ),
                                      ),
                                      TextSpan(
                                        text: '80%',
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'Sans',
                                          color: Color(0xff3F4852),
                                        ),
                                      ),
                                    ])),
                                  ],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                    height: 36,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(5),
                                        boxShadow: [
                                          BoxShadow(
                                              blurRadius: 1, spreadRadius: 0.1)
                                        ]),
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton2(
                                        style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 14,
                                          fontFamily: 'Sans',
                                          color: Color(0xff404A5F),
                                        ),
                                        items: items
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
                                        value: selectedValue,
                                        onChanged: (value) {
                                          setState(() {
                                            selectedValue = value as String;
                                          });
                                        },
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 68,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(color: Color(0xffFAF5FF)),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FittedBox(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Total Received (GBP)',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              color: ColorConstant.primaryColor,
                                            ),
                                          ),
                                          Text(
                                            '£ 3,456',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16,
                                              color: ColorConstant.primaryColor,
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Total Received (GBP)',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              color: ColorConstant.primaryColor,
                                            ),
                                          ),
                                          Text(
                                            '£ 3,456',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16,
                                              color: ColorConstant.primaryColor,
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                          child: FittedBox(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'No. of Customers',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18,
                                        fontFamily: 'Sans',
                                      ),
                                    ),
                                    RichText(
                                        text: TextSpan(children: [
                                      TextSpan(
                                        text: '80',
                                        style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'Sans',
                                          color: Colors.black,
                                        ),
                                      ),
                                      WidgetSpan(
                                        child: Icon(
                                          Icons.arrow_drop_down,
                                          color: Color(0xffFF0000),
                                        ),
                                      ),
                                      TextSpan(
                                        text: '10%',
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'Sans',
                                          color: Color(0xff3F4852),
                                        ),
                                      ),
                                    ])),
                                  ],
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'No. of Invoices',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18,
                                        fontFamily: 'Sans',
                                      ),
                                    ),
                                    RichText(
                                        text: TextSpan(children: [
                                      TextSpan(
                                        text: '110',
                                        style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'Sans',
                                          color: Colors.black,
                                        ),
                                      ),
                                      WidgetSpan(
                                        child: Icon(
                                          Icons.arrow_drop_up,
                                          color: Color(0xff6EA509),
                                        ),
                                      ),
                                      TextSpan(
                                        text: '80%',
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'Sans',
                                          color: Color(0xff3F4852),
                                        ),
                                      ),
                                    ])),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 16, 20, 40),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 420,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                          child: SizedBox(
                            height: 340,
                            child: SfCartesianChart(
                              plotAreaBorderWidth: 0,
                              primaryXAxis: CategoryAxis(
                                majorGridLines: const MajorGridLines(width: 0),
                              ),
                              primaryYAxis: NumericAxis(
                                  maximum: 20,
                                  minimum: 0,
                                  interval: 4,
                                  axisLine: const AxisLine(width: 0),
                                  majorTickLines:
                                      const MajorTickLines(size: 0)),
                              tooltipBehavior: TooltipBehavior(enable: true),
                              series: <ColumnSeries<ChartSampleData1, String>>[
                                ColumnSeries<ChartSampleData1, String>(

                                    /// To apply the column width here.
                                    width: 0.8,

                                    /// To apply the spacing betweeen to two columns here.
                                    spacing: 0.2,
                                    dataSource: <ChartSampleData1>[
                                      ChartSampleData1('January', 16, 8, 13,
                                          Color(0xffAB60CC)),
                                      ChartSampleData1('Febuary', 8, 10, 7,
                                          Color(0xffAB60CC)),
                                      ChartSampleData1('March', 12, 10, 5,
                                          Color(0xffAB60CC)),
                                      ChartSampleData1(
                                          'April', 4, 8, 14, Color(0xffAB60CC)),
                                      ChartSampleData1(
                                          'May', 8, 5, 4, Color(0xffAB60CC)),
                                    ],
                                    // color: const Color.fromRGBO(251, 193, 55, 1),
                                    xValueMapper: (ChartSampleData1 sales, _) =>
                                        sales.x,
                                    yValueMapper: (ChartSampleData1 sales, _) =>
                                        sales.y,
                                    pointColorMapper:
                                        (ChartSampleData1 sales, _) =>
                                            sales.color,
                                    name: 'Gold'),
                                ColumnSeries<ChartSampleData1, String>(

                                    /// To apply the column width here.
                                    width: 0.8,

                                    /// To apply the spacing betweeen to two columns here.
                                    spacing: 0.2,
                                    dataSource: <ChartSampleData1>[
                                      ChartSampleData1('January', 16, 8, 13,
                                          Color(0xff7761CD)),
                                      ChartSampleData1('Febuary', 8, 10, 7,
                                          Color(0xff7761CD)),
                                      ChartSampleData1('March', 12, 10, 5,
                                          Color(0xff7761CD)),
                                      ChartSampleData1(
                                          'April', 4, 8, 14, Color(0xff7761CD)),
                                      ChartSampleData1(
                                          'May', 8, 5, 4, Color(0xff7761CD)),
                                    ],
                                    // color: const Color.fromRGBO(251, 193, 55, 1),
                                    xValueMapper: (ChartSampleData1 sales, _) =>
                                        sales.x,
                                    yValueMapper: (ChartSampleData1 sales, _) =>
                                        sales.y,
                                    pointColorMapper:
                                        (ChartSampleData1 sales, _) =>
                                            sales.color,
                                    name: 'Gold'),
                                ColumnSeries<ChartSampleData1, String>(

                                    /// To apply the column width here.
                                    width: 0.8,

                                    /// To apply the spacing betweeen to two columns here.
                                    spacing: 0.2,
                                    dataSource: <ChartSampleData1>[
                                      ChartSampleData1('January', 16, 8, 13,
                                          Color(0xff7761CD)),
                                      ChartSampleData1('Febuary', 8, 10, 7,
                                          Color(0xff7761CD)),
                                      ChartSampleData1('March', 12, 10, 5,
                                          Color(0xff7761CD)),
                                      ChartSampleData1(
                                          'April', 4, 8, 14, Color(0xff7761CD)),
                                      ChartSampleData1(
                                          'May', 8, 5, 4, Color(0xff7761CD)),
                                    ],
                                    // color: const Color.fromRGBO(251, 193, 55, 1),
                                    xValueMapper: (ChartSampleData1 sales, _) =>
                                        sales.x,
                                    yValueMapper: (ChartSampleData1 sales, _) =>
                                        sales.y,
                                    pointColorMapper:
                                        (ChartSampleData1 sales, _) =>
                                            sales.color,
                                    name: 'Gold'),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                          child: FittedBox(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 10,
                                      width: 10,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Color(0xff6D37AE),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Total Received',
                                      style: TextStyle(
                                        fontFamily: 'Sans',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 10,
                                      width: 10,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Color(0xff8159C7),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Total Raised',
                                      style: TextStyle(
                                        fontFamily: 'Sans',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 10,
                                      width: 10,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Color(0xffB577FF),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Total Due',
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
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ChartSampleData1 {
  ChartSampleData1(
      this.x, this.y, this.secondSeriesYValue, this.thirdSeriesYValue,
      [this.color]);
  final String x;
  final int y;
  final int secondSeriesYValue;
  final int thirdSeriesYValue;
  final Color? color;
}
