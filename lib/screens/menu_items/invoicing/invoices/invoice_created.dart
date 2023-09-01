import 'dart:io';

import 'package:diy_boox/core/utils/app_extenshions.dart';
import 'package:diy_boox/provider/client_provider.dart';
import 'package:diy_boox/provider/invoices_provider.dart';
import 'package:diy_boox/provider/products_provider.dart';
import 'package:diy_boox/screens/menu_items/invoicing/invoices/add_product.dart';
import 'package:diy_boox/screens/menu_items/invoicing/invoices/invoice_schedule.dart';
import 'package:diy_boox/screens/menu_items/invoicing/invoices/invoices_record_payment.dart';
import 'package:diy_boox/screens/menu_items/invoicing/invoices/invoices_remainder.dart';
import 'package:diy_boox/widgets/common_text_field.dart';
import 'package:diy_boox/widgets/custom_add_card.dart';
import 'package:diy_boox/widgets/custom_card_details.dart';
import 'package:diy_boox/widgets/invoicing/invoice/custom_logo_drop_down.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:material_dialogs/widgets/buttons/icon_button.dart';
import 'package:provider/provider.dart';

import '../../../../core/utils/color_constant.dart';
import '../../../../widgets/custom_tile.dart';
import '../../../notification_screen.dart';

class InvoiceCreated extends StatefulWidget {
  final String? invNumber;
  const InvoiceCreated({this.invNumber, super.key});

  @override
  State<InvoiceCreated> createState() => _InvoiceCreatedState();
}

class _InvoiceCreatedState extends State<InvoiceCreated> {
  final List<String> items = [
    'Axis Bank',
    'Model - I',
    'Model - F',
    'Model - E',
  ];
  String? selectedValue;
  String? addCost;

  bool valuee = false;

  @override
  Widget build(BuildContext context) {
    final pProvider = Provider.of<ProductsProvider>(context);
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
          'Invoices Details',
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
      body: SingleChildScrollView(
        child: Stack(
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
                      Row(
                        children: [
                          IconButton(
                            padding: EdgeInsets.zero,
                            constraints: BoxConstraints(),
                            onPressed: () {},
                            icon: Icon(
                              Icons.share,
                              size: 20,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          IconButton(
                            padding: EdgeInsets.zero,
                            constraints: BoxConstraints(),
                            onPressed: () {},
                            icon: Icon(
                              Icons.edit,
                              size: 20,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          IconButton(
                            padding: EdgeInsets.zero,
                            constraints: BoxConstraints(),
                            onPressed: () {},
                            icon: Icon(
                              Icons.more_vert,
                              size: 20,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            widget.invNumber!,
                            style: const  TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'Sans',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(
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
                      IconsButton(
                        iconColor: Colors.white,
                        iconData: Icons.remove_red_eye,
                        onPressed: () {},
                        text: 'Preview',
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Source Sans Pro',
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.underline,
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
                                    '£ ${pProvider.totalAmount.toStringAsFixed(2)}',
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
                                    '£ ${pProvider.totalAmount - iProvider.tempInvoice['paidAmount'] ?? 0.0 }',
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
                       const  Padding(
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
                                    DateTime.now()
                                        .toString()
                                        .toDateTimeFormat(),
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
                                    DateTime.now()
                                        .toString()
                                        .toDateTimeFormat(),
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
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => InvoiceSchedule()));
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.28,
                          height: 78,
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
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset('assets/invoices/schedule.svg'),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Schedule',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF6D41A1),
                                  fontSize: 16,
                                  fontFamily: 'Sans',
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      InvoicesRecordPayment()));
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.28,
                          height: 78,
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
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset('assets/invoices/payment.svg'),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Payment',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF6D41A1),
                                  fontSize: 16,
                                  fontFamily: 'Sans',
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => InvoicesReminder()));
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.28,
                          height: 78,
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
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset('assets/invoices/reminder.svg'),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Reminder',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF6D41A1),
                                  fontSize: 16,
                                  fontFamily: 'Sans',
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                CustomTile(
                  leading: 'Invoice Date',
                  trailing: DateTime.now().toString().toDateTimeFormat(),
                  onTap: () {},
                ),
                CustomTile(
                  leading: 'Invoice ID',
                  trailing: widget.invNumber!,
                  onTap: () {},
                ),
                CustomTile(
                  leading: 'P/O Reference',
                  trailing: '',
                  onTap: () {},
                ),
                CustomTile(
                  leading: 'Payment Due',
                  trailing: 'On Receipt',
                  onTap: () {},
                ),
                Consumer<ClientProvider>(
                    builder: (context, value, child) => CustomLogoDropDown(
                          leading:
                              value.selectedClient?.name.split(" ").first ??
                                  'Customer',
                          name: 'Customer',
                          onTap: () {},
                        )),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 10, 0, 10),
                  child: Row(
                    children: [
                      Text(
                        'Details',
                        style: TextStyle(
                          color: Color(0xFF0A1825),
                          fontSize: 20,
                          fontFamily: 'Sans',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                Consumer<ProductsProvider>(
                  builder: (context, value, child) {
                    if (value.selectedPlist.isEmpty) {
                      child = SizedBox.shrink();
                    } else {
                      child = Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: const EdgeInsets.only(top: 10.0, left: 20),
                            child: Text("Details",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600)),
                          ),
                          ListView.builder(
                            shrinkWrap: true,
                            itemCount: value.selectedPlist.length,
                            itemBuilder: (context, index) {
                              return CustomCardDetails(
                                name: value.selectedPlist.keys
                                    .toList()[index]
                                    .itemName,
                                desc:
                                    "${value.selectedPlist.values.toList()[index]} x ${value.selectedPlist.keys.toList()[index].unitPrice}",
                                last: (double.parse(value.selectedPlist.values
                                            .toList()[index]) *
                                        value.selectedPlist.keys
                                            .toList()[index]
                                            .unitPrice)
                                    .toStringAsFixed(2),
                                onTap: () {},
                              );
                            },
                          ),
                        ],
                      );
                    }
                    return child;
                  },
                ),
                CustomAddCard(
                  name: 'Add more Product / Service',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AddProduct(
                                  invNum: widget.invNumber,
                                )));
                  },
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Subtotal (GBP)',
                            style: TextStyle(
                              color: Color(0xFF0A1825),
                              fontSize: 20,
                              fontFamily: 'Sans',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            pProvider.selectedPlist.isEmpty
                                ? '£ 0.00'
                                : '£ ${pProvider.totalAmount.toStringAsFixed(2)}',
                            style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Sans',
                              fontSize: 20,
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Tax (Reduced - 12.5%)',
                            style: TextStyle(
                              color: Color(0xFF0A1825),
                              fontSize: 16,
                              fontFamily: 'Sans',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            '£ ${pProvider.getWithTax}',
                            style: TextStyle(
                              color: Color(0xFF3F4852),
                              fontSize: 16,
                              fontFamily: 'Source Sans Pro',
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Amount',
                            style: TextStyle(
                              color: Color(0xFF0A1825),
                              fontSize: 16,
                              fontFamily: 'Sans',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            '£ ${pProvider.getAmountWithTax}',
                            style: TextStyle(
                              color: Color(0xFF3F4852),
                              fontSize: 16,
                              fontFamily: 'Source Sans Pro',
                              fontWeight: FontWeight.w400,
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
                    thickness: 2,
                  ),
                ),
                CustomAddCard(name: 'Add Discount', onTap: () {}),
                CustomAddCard(name: 'Add Cost', onTap: () {}),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Divider(
                    thickness: 2,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 10, 0, 10),
                  child: Row(
                    children: [
                      Text(
                        'Payment Details',
                        style: TextStyle(
                          color: Color(0xFF0A1825),
                          fontSize: 20,
                          fontFamily: 'Sans',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
               Consumer<InvoicesProvider>(
              builder: (context, value, child) {
                if (value.isLoading) {
                  child = Center(
                    child: CircularProgressIndicator(),
                  );
                } else {
                  child = Padding(
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                    child: Container(
                        height: 46,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(blurRadius: 1, spreadRadius: 0.1)
                            ]),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton2(
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 14,
                              fontFamily: 'Sans',
                              color: Color(0xff404A5F),
                            ),
                            items: value.paymentMethods
                                .map((item) => DropdownMenuItem<String>(
                                      value: item.bankName,
                                      child: Text(
                                        item.bankName,
                                        style: const TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                    ))
                                .toList(),
                            value: selectedValue ??
                                value.paymentMethods[0].bankName,
                            onChanged: (value) {},
                          ),
                        )),
                  );
                }
                return child;
              },
            ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 24,
                        height: 24,
                        child: Checkbox(
                            activeColor: Colors.grey,
                            checkColor: Colors.black,
                            value: valuee,
                            onChanged: (value) {
                              setState(() {
                                this.valuee = value!;
                              });
                            }),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Flexible(
                        child: Text(
                          'Accept a card payment with stripe for this invoice',
                          maxLines: 2,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Sans',
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 10, 0, 10),
                  child: Row(
                    children: [
                      Text(
                        'Footer',
                        style: TextStyle(
                          color: Color(0xFF0A1825),
                          fontSize: 20,
                          fontFamily: 'Sans',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                CommonTextField(
                  controller: TextEditingController(text: iProvider.tempInvoice['footer']),
                  onChanged: (value) {
                    iProvider.tempInvoice['footer'] = value;
                  },
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
                  child: Container(
                    height: 64,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: ColorConstant.primaryColor,
                      ),
                      color: ColorConstant.primaryColor2,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.account_balance),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Acct_....XXXX6789',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Sans',
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                DateTime.now()
                                    .toString()
                                    .toDateTimeFormat(),
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Sans',
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(Icons.delete),
                            ],
                          )
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
    );
  }
}
