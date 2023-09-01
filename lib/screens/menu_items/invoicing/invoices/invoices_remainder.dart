import 'dart:io';

import 'package:diy_boox/core/utils/app_extenshions.dart';
import 'package:diy_boox/provider/client_provider.dart';
import 'package:diy_boox/provider/invoices_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../../../core/utils/color_constant.dart';
import '../../../notification_screen.dart';

class InvoicesReminder extends StatefulWidget {
  const InvoicesReminder({super.key});

  @override
  State<InvoicesReminder> createState() => _InvoicesReminderState();
}

class _InvoicesReminderState extends State<InvoicesReminder> {
  final List<String> items = [
    'Axis Bank',
    'Model - I',
    'Model - F',
    'Model - E',
  ];
  String? selectedValue = "Axis Bank";

  @override
  Widget build(BuildContext context) {
    final cProvider = Provider.of<ClientProvider>(context);
    final iProvider = Provider.of<InvoicesProvider>(context);

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
          'Reminder',
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
              icon: Icon(Icons.notifications_none))
        ],
      ),
      body: Stack(
        children: [
          Container(
            height: 260,
            color: ColorConstant.primaryColor,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              cProvider.selectedClient?.name ?? '',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'Source Sans Pro',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              iProvider.tempInvoice['invoiceNo'] ?? '',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Sans',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 90,
                              height: 24,
                              decoration: ShapeDecoration(
                                color: Color(0xFFECF9E2),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Partially Paid',
                                  style: TextStyle(
                                    color: Color(0xFF1F8B24),
                                    fontSize: Platform.isAndroid ? 10 : 14,
                                    fontFamily: 'Source Sans Pro',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                    Container(
                      width: 124,
                      height: 40,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/invoices/record.svg'),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Reminder',
                            style: TextStyle(
                              color: Color(0xFF6D41A1),
                              fontSize: 16,
                              fontFamily: 'Sans',
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x0F000000),
                        blurRadius: 6,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 15, 20, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Total Amount',
                                  style: TextStyle(
                                    color: Color(0xFF3F4852),
                                    fontSize: 14,
                                    fontFamily: 'Sans',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  '£ ${iProvider.tempInvoice['totalAmount'] ?? ''}',
                                  style: TextStyle(
                                    color: Color(0xFF0A1825),
                                    fontSize: 20,
                                    fontFamily: 'Sans',
                                    fontWeight: FontWeight.w600,
                                  ),
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Amount Due',
                                  style: TextStyle(
                                    color: Color(0xFF3F4852),
                                    fontSize: 14,
                                    fontFamily: 'Sans',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  '£ ${iProvider.tempInvoice['paidAmount'] - iProvider.tempInvoice['totalAmount']}',
                                  style: TextStyle(
                                    color: Color(0xFF0A1825),
                                    fontSize: 20,
                                    fontFamily: 'Sans',
                                    fontWeight: FontWeight.w600,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Divider(
                          thickness: 1,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 15, 20, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Date',
                                  style: TextStyle(
                                    color: Color(0xFF3F4852),
                                    fontSize: 14,
                                    fontFamily: 'Sans',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  DateTime.now().toString().toDateTimeFormat(),
                                  style: TextStyle(
                                    color: Color(0xFF0A1825),
                                    fontSize: 18,
                                    fontFamily: 'Sans',
                                    fontWeight: FontWeight.w600,
                                  ),
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Due On',
                                  style: TextStyle(
                                    color: Color(0xFF3F4852),
                                    fontSize: 14,
                                    fontFamily: 'Sans',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  DateTime.now().toString().toDateTimeFormat(),
                                  style: TextStyle(
                                    color: Color(0xFF0A1825),
                                    fontSize: 18,
                                    fontFamily: 'Sans',
                                    fontWeight: FontWeight.w600,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                        child: Row(
                          children: [
                            Text(
                              'Invoice for',
                              style: TextStyle(
                                color: Color(0xFF3F4852),
                                fontSize: 14,
                                fontFamily: 'Source Sans Pro',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
                        child: Row(
                          children: [
                            CircleAvatar(),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  cProvider.selectedClient?.name ?? '',
                                  style: TextStyle(
                                    color: Color(0xFF0A1825),
                                    fontSize: 16,
                                    fontFamily: 'Sans',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      cProvider.selectedClient?.email ?? '',
                                      style: TextStyle(
                                        color: Color(0xFF3F4852),
                                        fontSize: 14,
                                        fontFamily: 'Sans',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      'View Activity',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        color: Color(0xFF007BFF),
                                        fontSize: 14,
                                        fontFamily: 'Source Sans Pro',
                                        fontWeight: FontWeight.w400,
                                        decoration: TextDecoration.underline,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 46,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x0F000000),
                        blurRadius: 6,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Last Received',
                          style: TextStyle(
                            color: Color(0xFF0A1825),
                            fontSize: 16,
                            fontFamily: 'Sans',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          '20-Feb-2023',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xFF3F4852),
                            fontSize: 16,
                            fontFamily: 'Sans',
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 46,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x0F000000),
                        blurRadius: 6,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Last Received',
                          style: TextStyle(
                            color: Color(0xFF0A1825),
                            fontSize: 16,
                            fontFamily: 'Sans',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          DateTime.now().toString().toDateTimeFormat(),
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xFF3F4852),
                            fontSize: 16,
                            fontFamily: 'Sans',
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 46,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x0F000000),
                        blurRadius: 6,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Last Received',
                          style: TextStyle(
                            color: Color(0xFF0A1825),
                            fontSize: 16,
                            fontFamily: 'Sans',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          DateTime.now().toString().toDateTimeFormat(),
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xFF3F4852),
                            fontSize: 16,
                            fontFamily: 'Sans',
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
              // Padding(
              //   padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
              //   child: Row(
              //     children: [
              //       Text(
              //         'Repeat this invoice',
              //         style: TextStyle(
              //           color: Color(0xFF0A1825),
              //           fontSize: 16,
              //           fontFamily: 'Sans',
              //           fontWeight: FontWeight.w600,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // Padding(
              //   padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
              //   child: Container(
              //       height: 46,
              //       width: MediaQuery.of(context).size.width,
              //       decoration: BoxDecoration(
              //         color: Colors.white,
              //         borderRadius: BorderRadius.circular(5),
              //         boxShadow: [
              //           BoxShadow(
              //             color: Color(0x1E000000),
              //             blurRadius: 5,
              //             offset: Offset(0, 0),
              //             spreadRadius: 0,
              //           )
              //         ],
              //       ),
              //       child: DropdownButtonHideUnderline(
              //         child: DropdownButton2(
              //           style: TextStyle(
              //             fontWeight: FontWeight.w300,
              //             fontSize: 14,
              //             fontFamily: 'Sans',
              //             color: Color(0xff404A5F),
              //           ),
              //           items: items
              //               .map((item) => DropdownMenuItem<String>(
              //                     value: item,
              //                     child: Text(
              //                       item,
              //                       style: const TextStyle(
              //                         fontSize: 14,
              //                       ),
              //                     ),
              //                   ))
              //               .toList(),
              //           value: selectedValue,
              //           onChanged: (value) {},
              //         ),
              //       )),
              // ),
              // Padding(
              //   padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     crossAxisAlignment: CrossAxisAlignment.center,
              //     children: [
              //       Container(
              //         width: 120,
              //         height: 1,
              //         decoration: BoxDecoration(color: Color(0xFFE2E2E2)),
              //       ),
              //       Text(
              //         'every',
              //         style: TextStyle(
              //           color: Color(0xFF8F8F8F),
              //           fontSize: 14,
              //           fontFamily: 'Sans',
              //           fontWeight: FontWeight.w400,
              //         ),
              //       ),
              //       Container(
              //         width: 120,
              //         height: 1,
              //         decoration: BoxDecoration(color: Color(0xFFE2E2E2)),
              //       ),
              //     ],
              //   ),
              // ),
              // Padding(
              //   padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
              //   child: Row(
              //     children: [
              //       Text(
              //         'Create first invoice on',
              //         style: TextStyle(
              //           color: Color(0xFF0A1825),
              //           fontSize: 16,
              //           fontFamily: 'Sans',
              //           fontWeight: FontWeight.w600,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // Padding(
              //   padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
              //   child: Container(
              //     width: MediaQuery.of(context).size.width,
              //     height: 40,
              //     decoration: ShapeDecoration(
              //       shadows: [
              //         BoxShadow(
              //           color: Color(0x1E000000),
              //           blurRadius: 5,
              //           offset: Offset(0, 0),
              //           spreadRadius: 0,
              //         )
              //       ],
              //       color: Colors.white,
              //       shape: RoundedRectangleBorder(
              //           borderRadius: BorderRadius.circular(6)),
              //     ),
              //     child: Padding(
              //       padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              //       child: Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //         children: [
              //           Text(
              //             '24-jun-2022',
              //             style: TextStyle(
              //               color: Color(0xFF3F4852),
              //               fontSize: 16,
              //               fontFamily: 'Source Sans Pro',
              //               fontWeight: FontWeight.w400,
              //             ),
              //           ),
              //           SvgPicture.asset('assets/invoices/calander.svg'),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
              // Padding(
              //   padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     crossAxisAlignment: CrossAxisAlignment.center,
              //     children: [
              //       Container(
              //         width: 120,
              //         height: 1,
              //         decoration: BoxDecoration(color: Color(0xFFE2E2E2)),
              //       ),
              //       Text(
              //         'end',
              //         style: TextStyle(
              //           color: Color(0xFF8F8F8F),
              //           fontSize: 14,
              //           fontFamily: 'Sans',
              //           fontWeight: FontWeight.w400,
              //         ),
              //       ),
              //       Container(
              //         width: 120,
              //         height: 1,
              //         decoration: BoxDecoration(color: Color(0xFFE2E2E2)),
              //       ),
              //     ],
              //   ),
              // ),
              // Padding(
              //   padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       Container(
              //           height: 46,
              //           width: MediaQuery.of(context).size.width / 2.4,
              //           decoration: BoxDecoration(
              //             color: Colors.white,
              //             borderRadius: BorderRadius.circular(5),
              //             boxShadow: [
              //               BoxShadow(
              //                 color: Color(0x1E000000),
              //                 blurRadius: 5,
              //                 offset: Offset(0, 0),
              //                 spreadRadius: 0,
              //               )
              //             ],
              //           ),
              //           child: DropdownButtonHideUnderline(
              //             child: DropdownButton2(
              //               style: TextStyle(
              //                 fontWeight: FontWeight.w300,
              //                 fontSize: 14,
              //                 fontFamily: 'Sans',
              //                 color: Color(0xff404A5F),
              //               ),
              //               items: items
              //                   .map((item) => DropdownMenuItem<String>(
              //                         value: item,
              //                         child: Text(
              //                           item,
              //                           style: const TextStyle(
              //                             fontSize: 14,
              //                           ),
              //                         ),
              //                       ))
              //                   .toList(),
              //               value: selectedValue,
              //               onChanged: (value) {},
              //             ),
              //           )),
              //       Container(
              //         width: MediaQuery.of(context).size.width / 2.4,
              //         height: 40,
              //         decoration: ShapeDecoration(
              //           shadows: [
              //             BoxShadow(
              //               color: Color(0x1E000000),
              //               blurRadius: 5,
              //               offset: Offset(0, 0),
              //               spreadRadius: 0,
              //             )
              //           ],
              //           color: Colors.white,
              //           shape: RoundedRectangleBorder(
              //               borderRadius: BorderRadius.circular(6)),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
