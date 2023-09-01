import 'package:diy_boox/core/utils/app_constants.dart';
import 'package:diy_boox/core/utils/app_extenshions.dart';
import 'package:diy_boox/core/utils/custom_toast.dart';
import 'package:diy_boox/model/client/excute_client_response.dart';
import 'package:diy_boox/model/client/get_all_client_response.dart';
import 'package:diy_boox/provider/client_provider.dart';
import 'package:diy_boox/provider/invoices_provider.dart';
import 'package:diy_boox/provider/products_provider.dart';
import 'package:diy_boox/screens/menu_items/invoicing/invoices/add_product.dart';
import 'package:diy_boox/screens/menu_items/invoicing/invoices/invoice_created.dart';
import 'package:diy_boox/widgets/common_text_field.dart';
import 'package:diy_boox/widgets/custom_card_details.dart';
import 'package:diy_boox/widgets/custom_drop_down_button.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';

import '../../../../core/utils/color_constant.dart';
import '../../../../widgets/custom_add_card.dart';
import '../../../../widgets/custom_small_button.dart';
import '../../../../widgets/custom_small_trans_button.dart';
import '../../../../widgets/custom_tile.dart';
import '../../../notification_screen.dart';

class NewInvoice extends StatefulWidget {
  final String? invNumber;
  const NewInvoice({this.invNumber, Key? key}) : super(key: key);

  @override
  State<NewInvoice> createState() => _NewInvoiceState();
}

class _NewInvoiceState extends State<NewInvoice> {
  List<GetAllClientResponse> clientsList = [];
  String? footer;
  bool showCost = false;
  String? paymentCost;

  @override
  void initState() {
    final customer = Provider.of<ClientProvider>(context, listen: false);
    customer.getAllClients2().whenComplete(() => setState(() {
          clientsList = customer.allClientList;
        }));
    customer.getAllClients(0);

    Provider.of<InvoicesProvider>(context, listen: false).getPaymentDetails();

    super.initState();
  }

  final List<String> items = [
    'Axis Bank',
    'Model - I',
    'Model - F',
    'Model - E',
  ];
  String? selectedValue;

  bool valuee = false;

  bool isSelectedClient = false;
  String? selectedClient;

  bool isSelectedProduct = false;
  String? selectedProduct;

  @override
  Widget build(BuildContext context) {
    CustomToast.init(context);
    final pProvider = Provider.of<ProductsProvider>(context);
    final iProvider = Provider.of<InvoicesProvider>(context);
    final clientProvider = Provider.of<ClientProvider>(context);

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
          'New Invoice (${widget.invNumber})',
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
        child: Column(
          children: [
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
              leading: 'PO/Reference',
              trailing: 'INV012',
              onTap: () {},
            ),
            CustomTile(
              leading: 'Payment Due',
              trailing: 'On Receipt',
              onTap: () {},
            ),
            selectedClient == null
                ? CustomAddCard(
                    name: 'Add Customer',
                    onTap: () {
                      setState(() {
                        isSelectedClient = !isSelectedClient;
                      });
                    },
                  )
                : CustomAddCard(
                    name: 'Customer',
                    onTap: () {
                      setState(() {
                        isSelectedClient = !isSelectedClient;
                      });
                    },
                    last: selectedClient?.split(" ").first,
                    svgPath: 'assets/user2.svg',
                  ),
            isSelectedClient
                ? Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Consumer<ClientProvider>(
                      builder: (context, value, child) {
                        if (value.clientList.isEmpty) {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                        child = CustomDropDownButton(
                            items: value.clientList
                                .map((e) => ("${e.name ?? ""}"))
                                .toList(),
                            selectedValue:
                                selectedClient ?? value.clientList[0].name,
                            onChanged: (selcted) {
                              value.updateClient(value.clientList.firstWhere(
                                  (element) => element.name == selcted));
                              setState(() {
                                isSelectedClient = false;
                                selectedClient = selcted;
                              });
                            },
                            width: MediaQuery.of(context).size.width - 40,
                            height: 60);
                        return child;
                      },
                    ),
                  )
                : const SizedBox.shrink(),
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
              name: 'Add Product / Service ',
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
              padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Subtotal (GBP)',
                    style: TextStyle(
                      fontFamily: 'Sans',
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
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
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: Divider(
                thickness: 2,
              ),
            ),
            CustomAddCard(
              name: 'Add Discount',
              onTap: () {},
            ),
            CustomAddCard(
              name: 'Add Cost',
              onTap: () {
                setState(() {
                  showCost = !showCost;
                });
              },
              last: paymentCost ?? '£ 0.00',
            ),
            showCost
                ? Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 10),
                    child: CommonTextField(
                      controller: TextEditingController(text: paymentCost),
                      // kType: TextInputType.number,
                      onChanged: (e) {
                        paymentCost = e.toString();
                      },
                    ),
                  )
                : const SizedBox.shrink(),
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: Divider(
                thickness: 2,
              ),
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 15),
                  child: Text(
                    'Payment Details',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontFamily: 'Sans',
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
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
                            valuee = value!;
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
              padding: EdgeInsets.fromLTRB(20, 15, 20, 0),
              child: Divider(
                thickness: 2,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
              child: Row(
                children: [
                  Text(
                    'Footer',
                    style: TextStyle(
                      fontFamily: 'Sans',
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 16),
              child: CommonTextField(
                  controller: TextEditingController(text: footer),
                  onChanged: (e) {
                    footer = e;
                  }),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
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
                                .toDateTimeFormat(format: 'dd/MM/yyyy'),
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
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomSmallTransButton(
                    onTap: () {
                      if (selectedClient == null) {
                        CustomToast.showToast(
                          message: "Select Client",
                          iconData: Icons.error,
                          backgroundColor: Colors.blue,
                          textColor: Colors.white,
                          gravity: ToastGravity.BOTTOM,
                        );
                        return;
                      }
                      if (pProvider.selectedPlist.isEmpty) {
                        CustomToast.showToast(
                          message: "Add Product",
                          iconData: Icons.error,
                          backgroundColor: Colors.blue,
                          textColor: Colors.white,
                          gravity: ToastGravity.BOTTOM,
                        );
                        return;
                      }

                      final ff = pProvider.selectedPlist.keys.map((e) {
                        final b = e.toJson();
                        b.putIfAbsent("price", () => e.unitPrice.toString());
                        b.putIfAbsent("amount", () => e.unitPrice.toString());
                        return b;
                      }).toList();

                      final body = {
                        "toCompanyDetails": [clientsList.first.toJson()],
                        "clientId":
                            clientProvider.selectedClient?.universalId ?? "",
                        "address": "Apt. 315",
                        "userId": pProvider.sharedPreferences
                            .getString(AppConstants.USERID),
                        "invoiceNo": widget.invNumber,
                        "invoiceDate": DateTime.now()
                            .toString()
                            .toDateTimeFormat(format: "yyyy-MM-dd"),
                        "dueDate": DateTime.now()
                            .toString()
                            .toDateTimeFormat(format: 'yyyy-MM-dd'),
                        "paymentDueTermsId":
                            "1bc32bfb-aa70-ed11-ac20-0050f217c77c",
                        "totalAmount": pProvider.totalAmount,
                        "paidAmount": double.parse(paymentCost ?? "0.0"),
                        "externalEstimateId": "",
                        "status": 0,
                        "invoiceDetails": ff,
                        "isRecurring": false,
                        "footer": footer,
                        "isSaveAndSend": false,
                        "discountName": null,
                        "discountAmount": "0.00",
                        "isDiscountInPercentage": false,
                        "taxId": "7a0c56ae-9b4d-4d75-8229-44dab8a39684",
                        "paymentDetailId": null,
                        "isCapiumPayPayment": true,
                        "fromCompanyDetails": null
                      };
                      iProvider.preivewBody(body);

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  InvoiceCreated(invNumber: widget.invNumber)));
                    },
                    text: 'Preview',
                  ),
                  CustomSmallButton(
                    text: 'Save',
                    onTap: () {
                      if (selectedClient == null) {
                        CustomToast.showToast(
                          message: "Select Client",
                          iconData: Icons.error,
                          backgroundColor: Colors.blue,
                          textColor: Colors.white,
                          gravity: ToastGravity.BOTTOM,
                        );
                        return;
                      }

                      if (pProvider.selectedPlist.isEmpty) {
                        CustomToast.showToast(
                          message: "Select one product",
                          iconData: Icons.error,
                          backgroundColor: Colors.blue,
                          textColor: Colors.white,
                          gravity: ToastGravity.BOTTOM,
                        );
                        return;
                      }

                      final ff = pProvider.selectedPlist.keys.map((e) {
                        final b = e.toJson();
                        b.putIfAbsent("price", () => e.unitPrice.toString());
                        b.putIfAbsent("amount", () => e.unitPrice.toString());
                        return b;
                      }).toList();
                      final body2 = {
                        "toCompanyDetails": [clientsList.first.toJson()],
                        "clientId":
                            clientProvider.selectedClient?.universalId ?? "",
                        "address": "Apt. 315",
                        "userId": pProvider.sharedPreferences
                            .getString(AppConstants.USERID),
                        "invoiceNo": widget.invNumber,
                        "invoiceDate": DateTime.now()
                            .toString()
                            .toDateTimeFormat(format: "yyyy-MM-dd"),
                        "dueDate": DateTime.now()
                            .toString()
                            .toDateTimeFormat(format: 'yyyy-MM-dd'),
                        "paymentDueTermsId":
                            "1bc32bfb-aa70-ed11-ac20-0050f217c77c",
                        "totalAmount": pProvider.totalAmount,
                        "paidAmount": double.parse(paymentCost ?? "0.0"),
                        "externalEstimateId": "",
                        "status": 0,
                        "invoiceDetails": ff,
                        "isRecurring": false,
                        "footer": footer,
                        "isSaveAndSend": false,
                        "discountName": null,
                        "discountAmount": "0.00",
                        "isDiscountInPercentage": false,
                        "taxId": "7a0c56ae-9b4d-4d75-8229-44dab8a39684",
                        "paymentDetailId": null,
                        "isCapiumPayPayment": true,
                        "fromCompanyDetails": null
                      };

                      iProvider.saveInvoice(body2).whenComplete(() {
                        CustomToast.showToast(
                          message: "Invoice Saved",
                          iconData: Icons.info,
                          backgroundColor: Colors.blue,
                          textColor: Colors.white,
                          gravity: ToastGravity.BOTTOM,
                        );
                        // pProvider.selectedPlist.clear();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => InvoiceCreated(
                                    invNumber: widget.invNumber)));

                        setState(() {
                          selectedClient = null;
                        });

                        // loading all invoice on invoice list screen.
                        iProvider.getInvoicesList(-1);
                      });
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
