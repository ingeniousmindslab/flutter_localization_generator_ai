import 'package:flutter/material.dart';

import '../../../../core/utils/color_constant.dart';
import '../../../../widgets/common_image_view.dart';

class PurchasesScreen extends StatefulWidget {
  const PurchasesScreen({Key? key}) : super(key: key);

  @override
  State<PurchasesScreen> createState() => _PurchasesScreenState();
}

class _PurchasesScreenState extends State<PurchasesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFBFBFB),
      body: SafeArea(
        child: Column(
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
            // Padding(
            //   padding: EdgeInsets.fromLTRB(10, 20, 20, 0),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Container(
            //         height: 46,
            //         width: MediaQuery.of(context).size.width * 0.6,
            //         decoration: BoxDecoration(
            //             color: Colors.white,
            //             borderRadius: BorderRadius.circular(10),
            //             boxShadow: [
            //               BoxShadow(
            //                 blurRadius: 1,
            //               )
            //             ]),
            //         child: Padding(
            //           padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            //           child: Row(
            //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //             children: [
            //               Text(
            //                 'Search',
            //                 style: TextStyle(
            //                   color: Color(0xff828282),
            //                   fontWeight: FontWeight.w400,
            //                   fontFamily: 'Sans',
            //                   fontSize: 16,
            //                 ),
            //               ),
            //               Icon(
            //                 Icons.search,
            //                 color: Color(0xff828282),
            //               ),
            //             ],
            //           ),
            //         ),
            //       ),
            //       Container(
            //         height: 46,
            //         width: 46,
            //         decoration: BoxDecoration(
            //             color: Colors.white,
            //             borderRadius: BorderRadius.circular(10),
            //             boxShadow: [
            //               BoxShadow(
            //                 blurRadius: 1,
            //               )
            //             ]),
            //         child: Icon(
            //           Icons.calendar_month_outlined,
            //           color: Color(0xff828282),
            //         ),
            //       ),
            //       Container(
            //         height: 46,
            //         width: 46,
            //         decoration: BoxDecoration(
            //             color: Colors.white,
            //             borderRadius: BorderRadius.circular(10),
            //             boxShadow: [
            //               BoxShadow(
            //                 blurRadius: 1,
            //               )
            //             ]),
            //         child: Icon(
            //           Icons.more_vert,
            //           color: Color(0xff828282),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            // Padding(
            //   padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Container(
            //         padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            //         height: 30,
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(30),
            //           color: ColorConstant.primaryColor,
            //         ),
            //         child: Center(
            //           child: Text(
            //             'All',
            //             style: TextStyle(
            //               fontSize: 14,
            //               fontFamily: 'Sans',
            //               fontWeight: FontWeight.w400,
            //               color: Colors.white,
            //             ),
            //           ),
            //         ),
            //       ),
            //       Text('Overdue'),
            //       Text('Paid'),
            //       Text('Sent'),
            //       Text('Partially Paid'),
            //     ],
            //   ),
            // ),
            // Padding(
            //   padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            //   child: Slidable(
            //     // Specify a key if the Slidable is dismissible.
            //     key: const ValueKey(0),
            //
            //     // The start action pane is the one at the left or the top side.
            //     startActionPane: ActionPane(
            //       // A motion is a widget used to control how the pane animates.
            //       motion: const ScrollMotion(),
            //
            //       // A pane can dismiss the Slidable.
            //       dismissible: DismissiblePane(onDismissed: () {}),
            //
            //       // All actions are defined in the children parameter.
            //       children: [
            //         // A SlidableAction can have an icon and/or a label.
            //         SlidableAction(
            //           borderRadius: BorderRadius.only(
            //               topLeft: Radius.circular(10),
            //               bottomLeft: Radius.circular(10)),
            //           // An action can be bigger than the others.
            //           onPressed: myFunction,
            //           backgroundColor: Color(0xFFD8D8D8),
            //           foregroundColor: Colors.black,
            //           icon: Icons.archive,
            //           label: 'Archive',
            //         ),
            //       ],
            //     ),
            //
            //     // The end action pane is the one at the right or the bottom side.
            //     endActionPane: ActionPane(
            //       motion: ScrollMotion(),
            //       children: [
            //         SlidableAction(
            //           borderRadius: BorderRadius.only(
            //               topRight: Radius.circular(10),
            //               bottomRight: Radius.circular(10)),
            //           onPressed: myFunction,
            //           backgroundColor: Color(0xFFFE4A49),
            //           foregroundColor: Colors.white,
            //           icon: Icons.delete,
            //           label: 'Delete',
            //         ),
            //       ],
            //     ),
            //
            //     // The child of the Slidable is what the user sees when the
            //     // component is not dragged.
            //     child: Padding(
            //       padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            //       child: GestureDetector(
            //         onTap: () {
            //           Navigator.push(
            //               context,
            //               MaterialPageRoute(
            //                   builder: (context) => InvoicesSummaryScreen()));
            //         },
            //         child: Container(
            //           padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            //           height: 207,
            //           width: MediaQuery.of(context).size.width,
            //           decoration: BoxDecoration(
            //               boxShadow: [
            //                 BoxShadow(
            //                   blurRadius: 1,
            //                 )
            //               ],
            //               color: Colors.white,
            //               borderRadius: BorderRadius.circular(10)),
            //           child: Column(
            //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //             children: [
            //               Row(
            //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                 children: [
            //                   Column(
            //                     crossAxisAlignment: CrossAxisAlignment.start,
            //                     children: [
            //                       Text(
            //                         'ID',
            //                         style: TextStyle(
            //                           fontWeight: FontWeight.w400,
            //                           fontSize: 14,
            //                           fontFamily: 'Sans',
            //                           color: Color(0xff828282),
            //                         ),
            //                       ),
            //                       Text(
            //                         'INV001',
            //                         style: TextStyle(
            //                           fontWeight: FontWeight.w600,
            //                           fontSize: 14,
            //                           fontFamily: 'Sans',
            //                         ),
            //                       ),
            //                     ],
            //                   ),
            //                   Row(
            //                     children: [
            //                       Container(
            //                         height: 24,
            //                         width: 70,
            //                         decoration: BoxDecoration(
            //                           borderRadius: BorderRadius.circular(5),
            //                           color: Color(0xffFFDADA),
            //                         ),
            //                         child: Center(
            //                           child: Text(
            //                             'Overdue',
            //                             style: TextStyle(
            //                               fontSize: 14,
            //                               fontWeight: FontWeight.w400,
            //                               fontFamily: 'Sans',
            //                               color: Color(0xffFF0000),
            //                             ),
            //                           ),
            //                         ),
            //                       ),
            //                       Icon(
            //                         Icons.more_vert,
            //                       ),
            //                     ],
            //                   )
            //                 ],
            //               ),
            //               Row(
            //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                 children: [
            //                   Column(
            //                     crossAxisAlignment: CrossAxisAlignment.start,
            //                     children: [
            //                       Text(
            //                         'Customer',
            //                         style: TextStyle(
            //                           fontWeight: FontWeight.w400,
            //                           fontSize: 14,
            //                           fontFamily: 'Sans',
            //                           color: Color(0xff828282),
            //                         ),
            //                       ),
            //                       Text(
            //                         'A Limited',
            //                         style: TextStyle(
            //                           fontWeight: FontWeight.w600,
            //                           fontSize: 14,
            //                           fontFamily: 'Sans',
            //                         ),
            //                       ),
            //                     ],
            //                   ),
            //                   Column(
            //                     crossAxisAlignment: CrossAxisAlignment.center,
            //                     children: [
            //                       Text(
            //                         'Total (GBP)',
            //                         style: TextStyle(
            //                           fontWeight: FontWeight.w400,
            //                           fontSize: 14,
            //                           fontFamily: 'Sans',
            //                           color: Color(0xff828282),
            //                         ),
            //                       ),
            //                       Text(
            //                         '2148.00',
            //                         style: TextStyle(
            //                           fontWeight: FontWeight.w600,
            //                           fontSize: 14,
            //                           fontFamily: 'Sans',
            //                         ),
            //                       ),
            //                     ],
            //                   ),
            //                   Column(
            //                     crossAxisAlignment: CrossAxisAlignment.end,
            //                     children: [
            //                       Text(
            //                         'Date',
            //                         style: TextStyle(
            //                           fontWeight: FontWeight.w400,
            //                           fontSize: 14,
            //                           fontFamily: 'Sans',
            //                           color: Color(0xff828282),
            //                         ),
            //                       ),
            //                       Text(
            //                         '06-Dec-2023',
            //                         style: TextStyle(
            //                           fontWeight: FontWeight.w600,
            //                           fontSize: 14,
            //                           fontFamily: 'Sans',
            //                         ),
            //                       ),
            //                     ],
            //                   )
            //                 ],
            //               ),
            //               Row(
            //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                 children: [
            //                   Column(
            //                     crossAxisAlignment: CrossAxisAlignment.start,
            //                     children: [
            //                       Text(
            //                         'Amount due (GBP)',
            //                         style: TextStyle(
            //                           fontWeight: FontWeight.w400,
            //                           fontSize: 14,
            //                           fontFamily: 'Sans',
            //                           color: Color(0xff828282),
            //                         ),
            //                       ),
            //                       Text(
            //                         '2148.00',
            //                         style: TextStyle(
            //                           fontWeight: FontWeight.w600,
            //                           fontSize: 14,
            //                           fontFamily: 'Sans',
            //                         ),
            //                       ),
            //                     ],
            //                   ),
            //                   Column(
            //                     crossAxisAlignment: CrossAxisAlignment.center,
            //                     children: [
            //                       Text(
            //                         'Due (days)',
            //                         style: TextStyle(
            //                           fontWeight: FontWeight.w400,
            //                           fontSize: 14,
            //                           fontFamily: 'Sans',
            //                           color: Color(0xff828282),
            //                         ),
            //                       ),
            //                       Text(
            //                         '16',
            //                         style: TextStyle(
            //                           fontWeight: FontWeight.w600,
            //                           fontSize: 14,
            //                           fontFamily: 'Sans',
            //                           color: Color(0xffFF0000),
            //                         ),
            //                       ),
            //                     ],
            //                   ),
            //                   Column(
            //                     crossAxisAlignment: CrossAxisAlignment.end,
            //                     children: [
            //                       Text(
            //                         'Last Received on',
            //                         style: TextStyle(
            //                           fontWeight: FontWeight.w400,
            //                           fontSize: 14,
            //                           fontFamily: 'Sans',
            //                           color: Color(0xff828282),
            //                         ),
            //                       ),
            //                       Text(
            //                         '2148.00',
            //                         style: TextStyle(
            //                           fontWeight: FontWeight.w600,
            //                           fontSize: 14,
            //                           fontFamily: 'Sans',
            //                         ),
            //                       ),
            //                     ],
            //                   )
            //                 ],
            //               ),
            //               Row(
            //                 children: [
            //                   Column(
            //                     crossAxisAlignment: CrossAxisAlignment.start,
            //                     children: [
            //                       Text(
            //                         'Sent on',
            //                         style: TextStyle(
            //                           fontWeight: FontWeight.w400,
            //                           fontSize: 14,
            //                           fontFamily: 'Sans',
            //                           color: Color(0xff828282),
            //                         ),
            //                       ),
            //                       Text(
            //                         '06-Dec-2023',
            //                         style: TextStyle(
            //                           fontWeight: FontWeight.w600,
            //                           fontSize: 14,
            //                           fontFamily: 'Sans',
            //                         ),
            //                       ),
            //                     ],
            //                   )
            //                 ],
            //               ),
            //             ],
            //           ),
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
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
