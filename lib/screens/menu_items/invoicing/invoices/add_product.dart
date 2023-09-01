import 'package:diy_boox/core/utils/custom_toast.dart';
import 'package:diy_boox/provider/products_provider.dart';
import 'package:diy_boox/widgets/custom_drop_down_button.dart';
import 'package:diy_boox/widgets/custom_small_button.dart';
import 'package:diy_boox/widgets/custom_small_trans_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/utils/color_constant.dart';
import '../../../../widgets/common_text_field.dart';
import '../../../notification_screen.dart';

class AddProduct extends StatefulWidget {
  final String? invNum;
  const AddProduct({this.invNum, Key? key}) : super(key: key);

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  TextEditingController qty = TextEditingController();
  TextEditingController price = TextEditingController();
  TextEditingController amount = TextEditingController();
  String? selectedValue;

  @override
  void initState() {
    final itemProvider = Provider.of<ProductsProvider>(context, listen: false);
    itemProvider.getItemsList(-1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    CustomToast.init(context);
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
          'Details (${widget.invNum})',
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
      body: SingleChildScrollView(child: Consumer<ProductsProvider>(
        builder: (context, value, child) {
          if (value.isLoading) {
            return Center(child: CircularProgressIndicator());
          } else {
            price.value = TextEditingValue(
                text: selectedValue == null
                    ? ""
                    : value.itemList
                        .firstWhere(
                            (element) => element.itemName == selectedValue)
                        .unitPrice
                        .toString());
            child = Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 0, 10),
                  child: Text(
                    'Type',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Sans',
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                  child: CustomDropDownButton(
                    items: value.itemList.map((e) => e.itemName).toList(),
                    selectedValue: selectedValue ?? value.itemList[0].itemName,
                    onChanged: (value) {
                      setState(() {
                        selectedValue = value;
                      });
                    },
                    width: MediaQuery.of(context).size.width,
                    height: 46,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 10, 0, 10),
                  child: Text(
                    'Description',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Sans',
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                    child: Text(
                      selectedValue == null
                          ? ""
                          : value.itemList
                              .firstWhere(
                                (element) => element.itemName == selectedValue,
                              )
                              .description,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Sans',
                        fontSize: 16,
                      ),
                    )),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 10, 0, 10),
                  child: Text(
                    'Qty',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Sans',
                      fontSize: 16,
                    ),
                  ),
                ),
                CommonTextField(
                  controller: qty,
                  kType: TextInputType.number,
                  onChanged: (value) {
                    if (selectedValue == null || price.text.isEmpty || value == "") {
                      amount.text = "";
                      return;
                    } else {
                      amount.text =
                          (double.parse(value) * double.parse(price.text))
                              .toStringAsFixed(2);
                    }
                  },
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 10, 0, 10),
                  child: Text(
                    'Price (GBP)',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Sans',
                      fontSize: 16,
                    ),
                  ),
                ),
                CommonTextField(
                  controller: price,
                  onChanged: (v) {},
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 10, 0, 10),
                  child: Text(
                    'Amount (GBP)',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Sans',
                      fontSize: 16,
                    ),
                  ),
                ),
                CommonTextField(
                  controller: amount,
                  onChanged: (v) {},
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomSmallTransButton(onTap: () {
                        Navigator.pop(context);
                      }, text: 'Cancel'),
                      CustomSmallButton(
                          text: 'Save',
                          onTap: () {
                            if (qty.text.isEmpty) {
                              CustomToast.showToast(
                                  message: "Product quantity requried");
                              return;
                            }
                            value.selectedProduct(selectedValue!, qty.text);
                            Navigator.pop(context);
                          }),
                    ],
                  ),
                ),
              ],
            );
          }
          return child;
        },
      )),
    );
  }
}
