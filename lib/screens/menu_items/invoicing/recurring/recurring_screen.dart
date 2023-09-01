import 'package:diy_boox/core/utils/app_extenshions.dart';
import 'package:diy_boox/provider/recurring_provider.dart';
import 'package:diy_boox/widgets/custom_tool_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';

import '../../../../core/utils/color_constant.dart';
import '../../../../widgets/common_image_view.dart';
import '../invoices/invoices_summary_screen.dart';

class RecurringScreen extends StatefulWidget {
  const RecurringScreen({Key? key}) : super(key: key);

  @override
  State<RecurringScreen> createState() => _RecurringScreenState();
}

class _RecurringScreenState extends State<RecurringScreen> {
  int selectedIndex = 0;

  @override
  void initState() {
    final provider = Provider.of<RecurringProvider>(context, listen: false);
    provider.getRecurringList(-1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final rp = Provider.of<RecurringProvider>(context, listen: false);

    return Scaffold(
      backgroundColor: Color(0xffFBFBFB),
      body: SafeArea(
        child: Column(
          children: [
            CustomToolBar(
                searchText: (e) {
                  rp.getRecurringList(-1, search: e);
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
                            rp.getRecurringList(-1);
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
                            rp.getRecurringList(1);
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
                              'Inactive',
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
                            rp.getRecurringList(0);
                          },
                          child: const Text(
                            'Inactive',
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
            Consumer<RecurringProvider>(
              builder: (context, value, child) {
                if (value.isLoading) {
                  child = Center(
                    child: CircularProgressIndicator(
                      color: Color(0xff6661B8),
                    ),
                  );
                } else if (value.list.isEmpty) {
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
                    ],
                  );
                } else {
                  child = Column(
                    children: value.list
                        .map((e) => Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                                  child: Slidable(
                                    // Specify a key if the Slidable is dismissible.
                                    key: const ValueKey(0),

                                    // The start action pane is the one at the left or the top side.
                                    startActionPane: ActionPane(
                                      // A motion is a widget used to control how the pane animates.
                                      motion: const ScrollMotion(),

                                      // A pane can dismiss the Slidable.
                                      dismissible:
                                          DismissiblePane(onDismissed: () {}),

                                      // All actions are defined in the children parameter.
                                      children: [
                                        // A SlidableAction can have an icon and/or a label.
                                        SlidableAction(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(10),
                                              bottomLeft: Radius.circular(10)),
                                          // An action can be bigger than the others.
                                          onPressed: (e) {},
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
                                          onPressed: (e) {},
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
                                                  builder: (context) =>
                                                      InvoicesSummaryScreen()));
                                        },
                                        child: Container(
                                          padding: EdgeInsets.fromLTRB(
                                              10, 10, 10, 10),
                                          height: 207,
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
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'ID',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 14,
                                                          fontFamily: 'Sans',
                                                          color:
                                                              Color(0xff828282),
                                                        ),
                                                      ),
                                                      Text(
                                                        e.invoiceNo,
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w600,
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
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5),
                                                          color:
                                                              Color(0xffFFDADA),
                                                        ),
                                                        child: Center(
                                                          child: Text(
                                                            'Overdue',
                                                            style: TextStyle(
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              fontFamily:
                                                                  'Sans',
                                                              color: Color(
                                                                  0xffFF0000),
                                                            ),
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
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Customer',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 14,
                                                          fontFamily: 'Sans',
                                                          color:
                                                              Color(0xff828282),
                                                        ),
                                                      ),
                                                      Text(
                                                        e.clientName,
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
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        'Total (GBP)',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 14,
                                                          fontFamily: 'Sans',
                                                          color:
                                                              Color(0xff828282),
                                                        ),
                                                      ),
                                                      Text(
                                                        e.totalAmount
                                                            .toString(),
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
                                                      Text(
                                                        'Created Date',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 14,
                                                          fontFamily: 'Sans',
                                                          color:
                                                              Color(0xff828282),
                                                        ),
                                                      ),
                                                      Text(
                                                        e.startDate
                                                            .toDateTimeFormat(),
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 14,
                                                          fontFamily: 'Sans',
                                                        ),
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Schedule',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 14,
                                                          fontFamily: 'Sans',
                                                          color:
                                                              Color(0xff828282),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 50,
                                                        child: Text(
                                                          e.scheduleMessage
                                                              .toString(),
                                                          maxLines: 2,
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 14,
                                                            fontFamily: 'Sans',
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        'First Invoice ',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 14,
                                                          fontFamily: 'Sans',
                                                          color:
                                                              Color(0xff828282),
                                                        ),
                                                      ),
                                                      Text(
                                                        e.startDate
                                                            .toDateTimeFormat(),
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 14,
                                                          fontFamily: 'Sans',
                                                          color:
                                                              Color(0xff828282),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      Text(
                                                        'Last invoice date',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 14,
                                                          fontFamily: 'Sans',
                                                          color:
                                                              Color(0xff828282),
                                                        ),
                                                      ),
                                                      Text(
                                                        e.nextRecurrenceDate
                                                            .toDateTimeFormat(),
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w600,
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
                                ),
                              ],
                            ))
                        .toList(),
                  );
                }
                return child;
              },
            ),
          ],
        ),
      ),
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
