import 'package:diy_boox/screens/dashboard_screen.dart';
import 'package:diy_boox/screens/menu_items/bank_feed/bank_feed_screen.dart';
import 'package:diy_boox/screens/menu_items/documents/archived/archived_screen.dart';
import 'package:diy_boox/screens/menu_items/documents/document/documents_screen.dart';
import 'package:diy_boox/screens/menu_items/documents/starred/starred_screen.dart';
import 'package:diy_boox/screens/menu_items/documents/trash/trash_screen.dart';
import 'package:diy_boox/screens/menu_items/invoicing/customers/customer_screen.dart';
import 'package:diy_boox/screens/menu_items/invoicing/estimates/estimates_screen.dart';
import 'package:diy_boox/screens/menu_items/invoicing/products/products_screen.dart';
import 'package:diy_boox/screens/menu_items/invoicing/recurring/recurring_screen.dart';
import 'package:diy_boox/screens/menu_items/receipts/activity/activity_screen.dart';
import 'package:diy_boox/screens/menu_items/receipts/categories/categories_screen.dart';
import 'package:diy_boox/screens/menu_items/receipts/overview/overview_screen.dart';
import 'package:diy_boox/screens/menu_items/receipts/purchases/purchases_screen.dart';
import 'package:diy_boox/screens/menu_items/receipts/suppliers/suppliers_screen.dart';
import 'package:diy_boox/screens/menu_items/reports/expenses_report/expenses_report_screen.dart';
import 'package:diy_boox/screens/menu_items/reports/profit_and_loss/profit_and_loss_screen.dart';
import 'package:diy_boox/screens/menu_items/reports/sales_report/sales_report_screen.dart';
import 'package:diy_boox/screens/menu_items/settings/demo_data/sample_data.dart';
import 'package:diy_boox/screens/menu_items/settings/estimates/estimates.dart';
import 'package:diy_boox/screens/menu_items/settings/export/export_screen.dart';
import 'package:diy_boox/screens/menu_items/settings/import/import_screen.dart';
import 'package:diy_boox/screens/menu_items/settings/integration/integration_screen.dart';
import 'package:diy_boox/screens/menu_items/settings/invoices/invoices.dart';
import 'package:diy_boox/screens/menu_items/settings/my_business/business_info.dart';
import 'package:diy_boox/screens/menu_items/settings/templates/templates_screen.dart';
import 'package:diy_boox/screens/menu_items/users/users_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_expanded_tile/flutter_expanded_tile.dart';
import 'package:flutter_svg/svg.dart';

import '../core/utils/color_constant.dart';
import '../core/utils/image_constant.dart';
import '../screens/menu_items/invoicing/invoices/invoices_screen.dart';
import '../widgets/common_image_view.dart';
import '../widgets/custom_expanded_tile.dart';
import 'notification_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  late CustomExpandedTileController dashboard;
  late ExpandedTileController _controller1;
  late ExpandedTileController _controller2;
  late ExpandedTileController _controller3;
  late ExpandedTileController _controller4;
  late ExpandedTileController _controller5;

  PageController pageController = PageController();

  List<String> myData = [
    'Dashboard',
    'Invoices',
    'Recurring',
    'Estimates',
    'Products',
    'Customers',
    'Overview',
    'Purchases',
    'Activity',
    'Categories',
    'Suppliers',
    'Bank Feeds',
    'Documents',
    'Starred',
    'Archived',
    'Trash',
    'Expenses Report',
    'Sales Report',
    'Profit & Loss',
    'Business Info',
    'Sample Data',
    'Invoices',
    'Estimates',
    'Templates',
    'Integrations',
    'Import',
    'Export',
    'Users',
  ];

  String title = 'Dashboard';

  @override
  void initState() {
    // TODO: implement initState
    dashboard = CustomExpandedTileController(isExpanded: false);
    _controller1 = ExpandedTileController(isExpanded: false);
    _controller2 = ExpandedTileController(isExpanded: false);
    _controller3 = ExpandedTileController(isExpanded: false);
    _controller4 = ExpandedTileController(isExpanded: false);
    _controller5 = ExpandedTileController(isExpanded: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstant.primaryColor,
        title: Text(
          title,
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
            icon: Icon(Icons.notifications_none),
          ),
        ],
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        physics: const NeverScrollableScrollPhysics(),
        children: [
          //dashboard
          DashboardScreen(),
          //invoicing items
          InvoicesScreen(),
          RecurringScreen(),
          EstimatesScreen(),
          ProductsScreen(),
          CustomersScreen(),
          //receipts items
          OverviewScreen(),
          PurchasesScreen(),
          ActivityScreen(),
          CategoriesScreen(),
          SuppliersScreen(),
          //bank feed
          BankFeedScreen(),
          //documents items
          DocumentsScreen(),
          StarredScreen(),
          ArchivedScreen(),
          TrashScreen(),
          //reports items
          ExpensesReportScreen(),
          SalesReportScreen(),
          ProfitAndLossScreen(),
          //setting items
          BusinessInfo(),
          SampleData(),
          Invoices(),
          Estimates(),
          TemplatesScreen(),
          IntegrationScreen(),
          ImportScreen(),
          ExportScreen(),
          // InviteScreen(),
          // PreferencesScreen(),
          UsersScreen(),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 180,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: ColorConstant.primaryColor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CommonImageView(
                      imagePath: ImageConstant.logoWhite,
                      height: 38,
                    ),
                    Container(
                      height: 38,
                      width: 138,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CommonImageView(
                            height: 26,
                            imagePath: ImageConstant.profileImage,
                          ),
                          Text(
                            'Testuser1',
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Sans',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          RotatedBox(
                            quarterTurns: 1,
                            child: Icon(
                              Icons.arrow_forward_ios_sharp,
                              size: 10,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            //dashboard
            // ListTile(
            //   tileColor: selectedIndex == 0
            //       ? ColorConstant.primaryColor3
            //       : Colors.transparent,
            //   leading: SvgPicture.asset('assets/drawer_icons/Dashboard.svg'),
            //   title: Text(
            //     'Dashboard',
            //     style: TextStyle(
            //       fontWeight: FontWeight.w600,
            //       fontFamily: 'Sans',
            //       fontSize: 18,
            //       color: selectedIndex == 0
            //           ? ColorConstant.primaryColor1
            //           : Colors.black,
            //     ),
            //   ),
            //   onTap: () {
            //     pageController.jumpToPage(0);
            //     setState(() {
            //       title = myData[0];
            //     });
            //     Navigator.pop(context);
            //   },
            // ),
            CustomExpandedTile(
                onTap: () {
                  pageController.jumpToPage(0);
                  setState(() {
                    title = myData[0];
                  });
                  Navigator.pop(context);
                },
                theme: CustomExpandedTileThemeData(
                  headerColor: selectedIndex == 0
                      ? ColorConstant.primaryColor3
                      : Colors.transparent,
                ),
                leading: SvgPicture.asset('assets/drawer_icons/Dashboard.svg'),
                title: Padding(
                  padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
                  child: Text(
                    'Dashboard',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Sans',
                      fontSize: 18,
                      color: selectedIndex == 0
                          ? ColorConstant.primaryColor1
                          : Colors.black,
                    ),
                  ),
                ),
                // content: Column(),
                controller: dashboard),
            Padding(
              padding: EdgeInsets.fromLTRB(60, 0, 20, 0),
              child: Divider(
                thickness: 2,
                height: 1,
              ),
            ),
            //invoicing
            ExpandedTile(
              contentseparator: 0,
              theme: ExpandedTileThemeData(
                  contentBackgroundColor: Colors.transparent),
              controller: _controller1,
              leading: SvgPicture.asset('assets/drawer_icons/Invoicing.svg'),
              title: Padding(
                padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
                child: const Text(
                  'Invoicing',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Sans',
                    fontSize: 18,
                  ),
                ),
              ),
              content: Column(
                children: [
                  ListTile(
                    leading:
                        SvgPicture.asset('assets/drawer_icons/Invoicing.svg'),
                    tileColor: selectedIndex == 1
                        ? ColorConstant.primaryColor3
                        : Colors.transparent,
                    title: Text(
                      'Invoices',
                      style: TextStyle(
                          fontFamily: 'Sans',
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: selectedIndex == 1
                              ? ColorConstant.primaryColor1
                              : Colors.black),
                    ),
                    onTap: () {
                      pageController.jumpToPage(1);
                      setState(() {
                        title = myData[1];
                      });
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading:
                        SvgPicture.asset('assets/drawer_icons/Recurring.svg'),
                    tileColor: selectedIndex == 2
                        ? ColorConstant.primaryColor3
                        : Colors.transparent,
                    title: Text(
                      'Recurring',
                      style: TextStyle(
                          fontFamily: 'Sans',
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: selectedIndex == 2
                              ? ColorConstant.primaryColor1
                              : Colors.black),
                    ),
                    onTap: () {
                      pageController.jumpToPage(2);
                      setState(() {
                        title = myData[2];
                      });
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading:
                        SvgPicture.asset('assets/drawer_icons/Estimate.svg'),
                    tileColor: selectedIndex == 3
                        ? ColorConstant.primaryColor3
                        : Colors.transparent,
                    title: Text(
                      'Estimates',
                      style: TextStyle(
                          fontFamily: 'Sans',
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: selectedIndex == 3
                              ? ColorConstant.primaryColor1
                              : Colors.black),
                    ),
                    onTap: () {
                      pageController.jumpToPage(3);
                      setState(() {
                        title = myData[3];
                      });
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading:
                        SvgPicture.asset('assets/drawer_icons/Product.svg'),
                    tileColor: selectedIndex == 4
                        ? ColorConstant.primaryColor3
                        : Colors.transparent,
                    title: Text(
                      'Products',
                      style: TextStyle(
                          fontFamily: 'Sans',
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: selectedIndex == 4
                              ? ColorConstant.primaryColor1
                              : Colors.black),
                    ),
                    onTap: () {
                      pageController.jumpToPage(4);
                      setState(() {
                        title = myData[4];
                      });
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading:
                        SvgPicture.asset('assets/drawer_icons/Customers.svg'),
                    tileColor: selectedIndex == 5
                        ? ColorConstant.primaryColor3
                        : Colors.transparent,
                    title: Text(
                      'Customers',
                      style: TextStyle(
                          fontFamily: 'Sans',
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: selectedIndex == 5
                              ? ColorConstant.primaryColor1
                              : Colors.black),
                    ),
                    onTap: () {
                      pageController.jumpToPage(5);
                      setState(() {
                        title = myData[5];
                      });

                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(60, 0, 20, 0),
              child: Divider(
                thickness: 2,
                height: 1,
              ),
            ),
            //receipts
            ExpandedTile(
              contentseparator: 0,
              theme: ExpandedTileThemeData(
                  contentBackgroundColor: Colors.transparent),
              controller: _controller2,
              leading: SvgPicture.asset('assets/drawer_icons/Receipts.svg'),
              title: Padding(
                padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
                child: const Text(
                  'Receipts',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Sans',
                    fontSize: 18,
                  ),
                ),
              ),
              content: Column(
                children: [
                  ListTile(
                    leading:
                        SvgPicture.asset('assets/drawer_icons/Overview.svg'),
                    tileColor: selectedIndex == 6
                        ? ColorConstant.primaryColor3
                        : Colors.transparent,
                    title: Text(
                      'Overview',
                      style: TextStyle(
                          fontFamily: 'Sans',
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: selectedIndex == 6
                              ? ColorConstant.primaryColor1
                              : Colors.black),
                    ),
                    onTap: () {
                      pageController.jumpToPage(6);
                      setState(() {
                        title = myData[6];
                      });
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading:
                        SvgPicture.asset('assets/drawer_icons/inbox 1.svg'),
                    tileColor: selectedIndex == 7
                        ? ColorConstant.primaryColor3
                        : Colors.transparent,
                    title: Text(
                      'Purchases',
                      style: TextStyle(
                          fontFamily: 'Sans',
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: selectedIndex == 7
                              ? ColorConstant.primaryColor1
                              : Colors.black),
                    ),
                    onTap: () {
                      pageController.jumpToPage(7);
                      setState(() {
                        title = myData[7];
                      });
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading:
                        SvgPicture.asset('assets/drawer_icons/activity 1.svg'),
                    tileColor: selectedIndex == 8
                        ? ColorConstant.primaryColor3
                        : Colors.transparent,
                    title: Text(
                      'Activity',
                      style: TextStyle(
                          fontFamily: 'Sans',
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: selectedIndex == 8
                              ? ColorConstant.primaryColor1
                              : Colors.black),
                    ),
                    onTap: () {
                      pageController.jumpToPage(8);
                      setState(() {
                        title = myData[8];
                      });
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: SvgPicture.asset(
                        'assets/drawer_icons/tabler_category.svg'),
                    tileColor: selectedIndex == 9
                        ? ColorConstant.primaryColor3
                        : Colors.transparent,
                    title: Text(
                      'Categories',
                      style: TextStyle(
                          fontFamily: 'Sans',
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: selectedIndex == 9
                              ? ColorConstant.primaryColor1
                              : Colors.black),
                    ),
                    onTap: () {
                      pageController.jumpToPage(9);
                      setState(() {
                        title = myData[9];
                      });
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: SvgPicture.asset(
                        'assets/drawer_icons/clarity_group-line.svg'),
                    tileColor: selectedIndex == 10
                        ? ColorConstant.primaryColor3
                        : Colors.transparent,
                    title: Text(
                      'Suppliers',
                      style: TextStyle(
                          fontFamily: 'Sans',
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: selectedIndex == 10
                              ? ColorConstant.primaryColor1
                              : Colors.black),
                    ),
                    onTap: () {
                      pageController.jumpToPage(10);
                      setState(() {
                        title = myData[10];
                      });
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(60, 0, 20, 0),
              child: Divider(
                thickness: 2,
                height: 1,
              ),
            ),
            //bank feeed
            // ListTile(
            //   tileColor: selectedIndex == 11
            //       ? ColorConstant.primaryColor3
            //       : Colors.transparent,
            //   leading: SvgPicture.asset(
            //       'assets/drawer_icons/ant-design_bank-outlined.svg'),
            //   title: Text(
            //     'Bank Feeds',
            //     style: TextStyle(
            //         fontWeight: FontWeight.w600,
            //         fontFamily: 'Sans',
            //         fontSize: 18,
            //         color: selectedIndex == 11
            //             ? ColorConstant.primaryColor1
            //             : Colors.black),
            //   ),
            //   onTap: () {
            //     pageController.jumpToPage(11);
            //     setState(() {
            //       title = myData[11];
            //     });
            //     Navigator.pop(context);
            //   },
            // ),
            CustomExpandedTile(
                onTap: () {
                  pageController.jumpToPage(11);
                  setState(() {
                    title = myData[11];
                  });
                  Navigator.pop(context);
                },
                theme: CustomExpandedTileThemeData(
                  headerColor: selectedIndex == 11
                      ? ColorConstant.primaryColor3
                      : Colors.transparent,
                ),
                leading: SvgPicture.asset(
                    'assets/drawer_icons/ant-design_bank-outlined.svg'),
                title: Padding(
                  padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
                  child: Text(
                    'Bank Feeds',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Sans',
                      fontSize: 18,
                      color: selectedIndex == 11
                          ? ColorConstant.primaryColor1
                          : Colors.black,
                    ),
                  ),
                ),
                // content: Column(),
                controller: dashboard),
            Padding(
              padding: EdgeInsets.fromLTRB(60, 0, 20, 0),
              child: Divider(
                thickness: 2,
                height: 1,
              ),
            ),
            //documents
            ExpandedTile(
              contentseparator: 0,
              theme: ExpandedTileThemeData(
                  contentBackgroundColor: Colors.transparent),
              controller: _controller3,
              leading: SvgPicture.asset('assets/drawer_icons/Document.svg'),
              title: Padding(
                padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
                child: const Text(
                  'Documents',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Sans',
                    fontSize: 18,
                  ),
                ),
              ),
              content: Column(
                children: [
                  ListTile(
                    leading:
                        SvgPicture.asset('assets/drawer_icons/Starred.svg'),
                    tileColor: selectedIndex == 12
                        ? ColorConstant.primaryColor3
                        : Colors.transparent,
                    title: Text(
                      'Starred',
                      style: TextStyle(
                          fontFamily: 'Sans',
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: selectedIndex == 12
                              ? ColorConstant.primaryColor1
                              : Colors.black),
                    ),
                    onTap: () {
                      pageController.jumpToPage(12);
                      setState(() {
                        title = myData[12];
                      });
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading:
                        SvgPicture.asset('assets/drawer_icons/archive.svg'),
                    tileColor: selectedIndex == 14
                        ? ColorConstant.primaryColor3
                        : Colors.transparent,
                    title: Text(
                      'Archived',
                      style: TextStyle(
                          fontFamily: 'Sans',
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: selectedIndex == 14
                              ? ColorConstant.primaryColor1
                              : Colors.black),
                    ),
                    onTap: () {
                      pageController.jumpToPage(14);
                      setState(() {
                        title = myData[14];
                      });
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: SvgPicture.asset('assets/drawer_icons/trash.svg'),
                    tileColor: selectedIndex == 15
                        ? ColorConstant.primaryColor3
                        : Colors.transparent,
                    title: Text(
                      'Trash',
                      style: TextStyle(
                          fontFamily: 'Sans',
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: selectedIndex == 15
                              ? ColorConstant.primaryColor1
                              : Colors.black),
                    ),
                    onTap: () {
                      pageController.jumpToPage(15);
                      setState(() {
                        title = myData[15];
                      });
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(60, 0, 20, 0),
              child: Divider(
                thickness: 2,
                height: 1,
              ),
            ),
            //reports
            ExpandedTile(
              contentseparator: 0,
              theme: ExpandedTileThemeData(
                  contentBackgroundColor: Colors.transparent),
              controller: _controller4,
              leading: SvgPicture.asset('assets/drawer_icons/report-2.svg'),
              title: Padding(
                padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
                child: const Text(
                  'Reports',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Sans',
                    fontSize: 18,
                  ),
                ),
              ),
              content: Column(
                children: [
                  ListTile(
                    leading: SvgPicture.asset(
                        'assets/drawer_icons/report (3) 1.svg'),
                    tileColor: selectedIndex == 16
                        ? ColorConstant.primaryColor3
                        : Colors.transparent,
                    title: Text(
                      'Expenses Report',
                      style: TextStyle(
                          fontFamily: 'Sans',
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: selectedIndex == 16
                              ? ColorConstant.primaryColor1
                              : Colors.black),
                    ),
                    onTap: () {
                      pageController.jumpToPage(16);
                      setState(() {
                        title = myData[16];
                      });

                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading:
                        SvgPicture.asset('assets/drawer_icons/report-3.svg'),
                    tileColor: selectedIndex == 17
                        ? ColorConstant.primaryColor3
                        : Colors.transparent,
                    title: Text(
                      'Sales Report',
                      style: TextStyle(
                          fontFamily: 'Sans',
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: selectedIndex == 17
                              ? ColorConstant.primaryColor1
                              : Colors.black),
                    ),
                    onTap: () {
                      pageController.jumpToPage(17);
                      setState(() {
                        title = myData[17];
                      });
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading:
                        SvgPicture.asset('assets/drawer_icons/profit-2 1.svg'),
                    tileColor: selectedIndex == 18
                        ? ColorConstant.primaryColor3
                        : Colors.transparent,
                    title: Text(
                      'Profit & Loss',
                      style: TextStyle(
                          fontFamily: 'Sans',
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: selectedIndex == 18
                              ? ColorConstant.primaryColor1
                              : Colors.black),
                    ),
                    onTap: () {
                      pageController.jumpToPage(18);
                      setState(() {
                        title = myData[18];
                      });
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(60, 0, 20, 0),
              child: Divider(
                thickness: 2,
                height: 1,
              ),
            ),
            //settings
            ExpandedTile(
              contentseparator: 0,
              theme: ExpandedTileThemeData(
                  contentBackgroundColor: Colors.transparent),
              controller: _controller5,
              leading:
                  SvgPicture.asset('assets/drawer_icons/setting (1) 1.svg'),
              title: Padding(
                padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
                child: const Text(
                  'Settings',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Sans',
                    fontSize: 18,
                  ),
                ),
              ),
              content: Column(
                children: [
                  ListTile(
                    leading:
                        SvgPicture.asset('assets/drawer_icons/My Business.svg'),
                    tileColor: selectedIndex == 19
                        ? ColorConstant.primaryColor3
                        : Colors.transparent,
                    title: Text(
                      'My Business',
                      style: TextStyle(
                          fontFamily: 'Sans',
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: selectedIndex == 19
                              ? ColorConstant.primaryColor1
                              : Colors.black),
                    ),
                    onTap: () {
                      pageController.jumpToPage(19);
                      setState(() {
                        title = myData[19];
                      });
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading:
                        SvgPicture.asset('assets/drawer_icons/Demo Data.svg'),
                    tileColor: selectedIndex == 20
                        ? ColorConstant.primaryColor3
                        : Colors.transparent,
                    title: Text(
                      'Demo Data',
                      style: TextStyle(
                          fontFamily: 'Sans',
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: selectedIndex == 20
                              ? ColorConstant.primaryColor1
                              : Colors.black),
                    ),
                    onTap: () {
                      pageController.jumpToPage(20);
                      setState(() {
                        title = myData[20];
                      });
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading:
                        SvgPicture.asset('assets/drawer_icons/Invoice.svg'),
                    tileColor: selectedIndex == 21
                        ? ColorConstant.primaryColor3
                        : Colors.transparent,
                    title: Text(
                      'Invoices',
                      style: TextStyle(
                          fontFamily: 'Sans',
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: selectedIndex == 21
                              ? ColorConstant.primaryColor1
                              : Colors.black),
                    ),
                    onTap: () {
                      pageController.jumpToPage(21);
                      setState(() {
                        title = myData[21];
                      });
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading:
                        SvgPicture.asset('assets/drawer_icons/Estimate.svg'),
                    tileColor: selectedIndex == 22
                        ? ColorConstant.primaryColor3
                        : Colors.transparent,
                    title: Text(
                      'Estimates',
                      style: TextStyle(
                          fontFamily: 'Sans',
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: selectedIndex == 22
                              ? ColorConstant.primaryColor1
                              : Colors.black),
                    ),
                    onTap: () {
                      pageController.jumpToPage(22);
                      setState(() {
                        title = myData[22];
                      });
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading:
                        SvgPicture.asset('assets/drawer_icons/Template.svg'),
                    tileColor: selectedIndex == 23
                        ? ColorConstant.primaryColor3
                        : Colors.transparent,
                    title: Text(
                      'Templates',
                      style: TextStyle(
                          fontFamily: 'Sans',
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: selectedIndex == 23
                              ? ColorConstant.primaryColor1
                              : Colors.black),
                    ),
                    onTap: () {
                      pageController.jumpToPage(23);
                      setState(() {
                        title = myData[23];
                      });
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading:
                        SvgPicture.asset('assets/drawer_icons/Integration.svg'),
                    tileColor: selectedIndex == 24
                        ? ColorConstant.primaryColor3
                        : Colors.transparent,
                    title: Text(
                      'Integrations',
                      style: TextStyle(
                          fontFamily: 'Sans',
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: selectedIndex == 24
                              ? ColorConstant.primaryColor1
                              : Colors.black),
                    ),
                    onTap: () {
                      pageController.jumpToPage(24);
                      setState(() {
                        title = myData[24];
                      });
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: SvgPicture.asset('assets/drawer_icons/Import.svg'),
                    tileColor: selectedIndex == 25
                        ? ColorConstant.primaryColor3
                        : Colors.transparent,
                    title: Text(
                      'Import',
                      style: TextStyle(
                          fontFamily: 'Sans',
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: selectedIndex == 25
                              ? ColorConstant.primaryColor1
                              : Colors.black),
                    ),
                    onTap: () {
                      pageController.jumpToPage(25);
                      setState(() {
                        title = myData[25];
                      });
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: SvgPicture.asset('assets/drawer_icons/Export.svg'),
                    tileColor: selectedIndex == 26
                        ? ColorConstant.primaryColor3
                        : Colors.transparent,
                    title: Text(
                      'Export',
                      style: TextStyle(
                          fontFamily: 'Sans',
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: selectedIndex == 26
                              ? ColorConstant.primaryColor1
                              : Colors.black),
                    ),
                    onTap: () {
                      pageController.jumpToPage(26);
                      setState(() {
                        title = myData[26];
                      });
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(60, 0, 20, 0),
              child: Divider(
                thickness: 2,
                height: 1,
              ),
            ),
            // ListTile(
            //   tileColor: selectedIndex == 27
            //       ? ColorConstant.primaryColor3
            //       : Colors.transparent,
            //   leading: SvgPicture.asset('assets/drawer_icons/user 1.svg'),
            //   title: Text(
            //     'Users',
            //     style: TextStyle(
            //         fontWeight: FontWeight.w600,
            //         fontFamily: 'Sans',
            //         fontSize: 18,
            //         color: selectedIndex == 27
            //             ? ColorConstant.primaryColor1
            //             : Colors.black),
            //   ),
            //   onTap: () {
            //     pageController.jumpToPage(27);
            //     setState(() {
            //       title = myData[27];
            //     });
            //     Navigator.pop(context);
            //   },
            // ),
            CustomExpandedTile(
                onTap: () {
                  pageController.jumpToPage(27);
                  setState(() {
                    title = myData[27];
                  });
                  Navigator.pop(context);
                },
                theme: CustomExpandedTileThemeData(
                  headerColor: selectedIndex == 27
                      ? ColorConstant.primaryColor3
                      : Colors.transparent,
                ),
                leading: SvgPicture.asset('assets/drawer_icons/user 1.svg'),
                title: Padding(
                  padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
                  child: Text(
                    'Users',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Sans',
                        fontSize: 18,
                        color: selectedIndex == 27
                            ? ColorConstant.primaryColor1
                            : Colors.black),
                  ),
                ),
                // content: Column(),
                controller: dashboard),
            Padding(
              padding: EdgeInsets.fromLTRB(60, 0, 20, 0),
              child: Divider(
                thickness: 2,
                height: 1,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(12, 40, 12, 0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.75,
                height: 46,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: ColorConstant.primaryColor,
                ),
                child: Row(
                  children: [
                    Padding(
                        padding: EdgeInsets.fromLTRB(12, 0, 14, 0),
                        child: SvgPicture.asset('assets/logout.svg')),
                    Text(
                      'Logout',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'Sans',
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
