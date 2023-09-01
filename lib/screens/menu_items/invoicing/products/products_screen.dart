import 'package:diy_boox/core/utils/app_extenshions.dart';
import 'package:diy_boox/core/utils/custom_toast.dart';
import 'package:diy_boox/provider/products_provider.dart';
import 'package:diy_boox/screens/menu_items/invoicing/invoices/add_product.dart';
import 'package:diy_boox/widgets/custom_tool_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';

import '../../../../core/utils/color_constant.dart';
import '../../../../widgets/common_image_view.dart';
import '../invoices/invoices_summary_screen.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  int selectedIndex = 0;

  @override
  void initState() {
    Provider.of<ProductsProvider>(context, listen: false).getItemsList(-1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProductsProvider>(context, listen: false);
    CustomToast.init(context);

    return Scaffold(
      backgroundColor: Color(0xffFBFBFB),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            CustomToolBar(
                searchText: (value) {
                  provider.getItemsList(-1, search: value);
                },
                search: () {},
                controller: TextEditingController(),
                onTap1: () {},
                onTap2: () {}),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
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
                            provider.getItemsList(-1);
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
                              'Active',
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
                            provider.getItemsList(0);
                          },
                          child: const Text(
                            'Active',
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
                              'Archive',
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
                            provider.getItemsList(1);
                          },
                          child: const Text(
                            'Archive',
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
            Consumer<ProductsProvider>(
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
                } else if (value.itemList.isEmpty) {
                  child = Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CommonImageView(
                          svgPath: 'assets/no_record_found.svg',
                        ),
                        const Padding(
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
                        const Padding(
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
                      ]);
                } else {
                  child = Column(
                    children: value.itemList.map((e) {
                      return Padding(
                        padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                        child: Slidable(
                          // Specify a key if the Slidable is dismissible.
                          key: const ValueKey(0),

                          // The start action pane is the one at the left or the top side.
                          startActionPane: ActionPane(
                            // A motion is a widget used to control how the pane animates.
                            motion: const ScrollMotion(),

                            // A pane can dismiss the Slidable.
                            dismissible: DismissiblePane(onDismissed: () {}),

                            // All actions are defined in the children parameter.
                            children: [
                              // A SlidableAction can have an icon and/or a label.
                              SlidableAction(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    bottomLeft: Radius.circular(10)),
                                // An action can be bigger than the others.
                                onPressed: (c) {
                                  print("object");
                                },
                                backgroundColor: Color(0xFFD8D8D8),
                                foregroundColor: Colors.black,
                                icon: Icons.archive,
                                label: 'Archive',
                              ),
                            ],
                          ),

                          // The end action pane is the one at the right or the bottom side.
                          endActionPane: ActionPane(
                            motion: ScrollMotion(),
                            children: [
                              SlidableAction(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10)),
                                onPressed: (c) {
                                  // value.deleteItem(e.universalId);
                                  CustomToast.showToast(
                                      message: 'Product is in use.');
                                },
                                backgroundColor: Color(0xFFFE4A49),
                                foregroundColor: Colors.white,
                                icon: Icons.delete,
                                label: 'Delete',
                              ),
                            ],
                          ),

                          // The child of the Slidable is what the user sees when the
                          // component is not dragged.
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => AddProduct(
                                              invNum: e.code,
                                            )));
                              },
                              child: Container(
                                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                height: 180,
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
                                            const Text(
                                              'Name',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14,
                                                fontFamily: 'Sans',
                                                color: Color(0xff828282),
                                              ),
                                            ),
                                            Text(
                                              e.itemName,
                                              style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 14,
                                                fontFamily: 'Sans',
                                              ),
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
                                                child: Text(
                                                  'Overdue',
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w400,
                                                    fontFamily: 'Sans',
                                                    color: Color(0xffFF0000),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
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
                                              'Product Code',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14,
                                                fontFamily: 'Sans',
                                                color: Color(0xff828282),
                                              ),
                                            ),
                                            Text(
                                              e.code,
                                              style: TextStyle(
                                                fontWeight: FontWeight.w600,
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
                                              'Description',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14,
                                                fontFamily: 'Sans',
                                                color: Color(0xff828282),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 100,
                                              child: Text(
                                                e.description,
                                                maxLines: 3,
                                                textAlign: TextAlign.right,
                                                softWrap: true,
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 14,
                                                  fontFamily: 'Sans',
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
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
                                              'Price (GBP)',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14,
                                                fontFamily: 'Sans',
                                                color: Color(0xff828282),
                                              ),
                                            ),
                                            Text(
                                              e.unitPrice.toString(),
                                              style: TextStyle(
                                                fontWeight: FontWeight.w600,
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
                                              'Date',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14,
                                                fontFamily: 'Sans',
                                                color: Color(0xff828282),
                                              ),
                                            ),
                                            Text(
                                              e.createdOn.toDateTimeFormat(),
                                              style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 14,
                                                fontFamily: 'Sans',
                                              ),
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
                        ),
                      );
                    }).toList(),
                  );
                }
                return child;
              },
            ),
            // Consumer<ProductsProvider>(
            //   builder: (context, value, child) {
            //     if (value.isError) {
            //       CustomToast.showToast(message: value.error!);
            //       child = const Center(
            //         child: Text('Something went wrong!'),
            //       );
            //     } else {
            //       child = Container();
            //     }
            //     return child;
            //   },
            // )
          ],
        ),
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
