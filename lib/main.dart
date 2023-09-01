import 'package:diy_boox/core/utils/custom_toast.dart';
import 'package:diy_boox/provider/auth_provider.dart';
import 'package:diy_boox/provider/business_provider.dart';
import 'package:diy_boox/provider/client_provider.dart';
import 'package:diy_boox/provider/dashboard_provider.dart';
import 'package:diy_boox/provider/drive_file_provider.dart';
import 'package:diy_boox/provider/estimates_provider.dart';
import 'package:diy_boox/provider/invoices_provider.dart';
import 'package:diy_boox/provider/payment_due_provider.dart';
import 'package:diy_boox/provider/payment_methods_provider.dart';
import 'package:diy_boox/provider/products_provider.dart';
import 'package:diy_boox/provider/receipt_provider.dart';
import 'package:diy_boox/provider/recurring_provider.dart';
import 'package:diy_boox/provider/report_provider.dart';
import 'package:diy_boox/provider/supplier_provider.dart';
import 'package:diy_boox/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'di_container.dart' as di;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => di.sl<AuthProvider>()),
        ChangeNotifierProvider(create: (ctx) => di.sl<DashboardProvider>()),
        ChangeNotifierProvider(create: (ctx) => di.sl<ReceiptProvider>()),
        ChangeNotifierProvider(create: (ctx) => di.sl<InvoicesProvider>()),
        ChangeNotifierProvider(create: (ctx) => di.sl<RecurringProvider>()),
        ChangeNotifierProvider(create: (ctx) => di.sl<EstimatesProvider>()),
        ChangeNotifierProvider(create: (ctx) => di.sl<ProductsProvider>()),
        ChangeNotifierProvider(create: (ctx) => di.sl<ClientProvider>()),
        ChangeNotifierProvider(create: (ctx) => di.sl<SupplierProvider>()),
        ChangeNotifierProvider(
            create: (ctx) => di.sl<PaymentMethodsProvider>()),
        ChangeNotifierProvider(create: (ctx) => di.sl<BusinessProvider>()),
        ChangeNotifierProvider(create: (ctx) => di.sl<PaymentDueProvider>()),
        ChangeNotifierProvider(create: (ctx) => di.sl<ReportProvider>()),
        ChangeNotifierProvider(create: (ctx) => di.sl<DriveFileProvider>()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Capium',
      home: SplashScreen(),
    );
  }
}
