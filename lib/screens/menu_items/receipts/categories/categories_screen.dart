import 'package:diy_boox/core/utils/app_extenshions.dart';
import 'package:diy_boox/provider/receipt_provider.dart';
import 'package:diy_boox/widgets/custom_tool_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/utils/color_constant.dart';
import '../../../../widgets/common_image_view.dart';
import '../../../../widgets/custom_slider.dart';
import '../../invoicing/invoices/add_product.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  void initState() {
    final receiptProvider =
        Provider.of<ReceiptProvider>(context, listen: false);
    receiptProvider.receiptCategoryList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFBFBFB),
      body: SafeArea(
          child: Column(
        children: [
          CustomToolBar(
              searchText: (e) {
                Provider.of<ReceiptProvider>(context, listen: false)
                    .receiptCategoryList(search: e);
              },
              search: () {},
              controller: TextEditingController(),
              onTap1: () {},
              onTap2: () {}),
          Consumer<ReceiptProvider>(
            builder: (context, value, child) {
              if (value.isLoading) {
                child = Center(
                  child: CircularProgressIndicator(
                    color: ColorConstant.primaryColor,
                  ),
                );
              } else if (value.data2.isEmpty) {
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
                    children: value.data2
                        .map((e) => Padding(
                              padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                              child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                AddProduct()));
                                  },
                                  child: CustomSlider(
                                    widget: Container(
                                      padding:
                                          EdgeInsets.fromLTRB(10, 10, 10, 10),
                                      height: 110,
                                      width: MediaQuery.of(context).size.width,
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
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  const Text(
                                                    'Category',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 14,
                                                      fontFamily: 'Sans',
                                                      color: Color(0xff828282),
                                                    ),
                                                  ),
                                                  Text(
                                                    e.categoryName,
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 14,
                                                      fontFamily: 'Sans',
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  const Text(
                                                    'Created On',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 14,
                                                      fontFamily: 'Sans',
                                                      color: Color(0xff828282),
                                                    ),
                                                  ),
                                                  Text(
                                                    e.createdOn
                                                        .toString()
                                                        .toDateTimeFormat(),
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 14,
                                                      fontFamily: 'Sans',
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  const Text(
                                                    'Created By',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 14,
                                                      fontFamily: 'Sans',
                                                      color: Color(0xff828282),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 100,
                                                    child: Text(
                                                      e.createdByName,
                                                      maxLines: 3,
                                                      textAlign:
                                                          TextAlign.right,
                                                      softWrap: true,
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 14,
                                                        fontFamily: 'Sans',
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    archive: () {},
                                    delete: () {
                                      value.receiptCategoryMultipleDelete(
                                          e.universalId);
                                    },
                                  )),
                            ))
                        .toList());
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
