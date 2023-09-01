import 'package:dio/dio.dart';
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
import 'package:diy_boox/repo/bank_feeds_repository.dart';
import 'package:diy_boox/repo/business_repository.dart';
import 'package:diy_boox/repo/client_repository.dart';
import 'package:diy_boox/repo/dashboard_repository.dart';
import 'package:diy_boox/repo/drive_file_repository.dart';
import 'package:diy_boox/repo/dummy_repository.dart';
import 'package:diy_boox/repo/estimates_repository.dart';
import 'package:diy_boox/repo/file_repository.dart';
import 'package:diy_boox/repo/invoice_repository.dart';
import 'package:diy_boox/repo/item_repository.dart';
import 'package:diy_boox/repo/login_repository.dart';
import 'package:diy_boox/repo/payment_due_terms_repository.dart';
import 'package:diy_boox/repo/payment_methods_repository.dart';
import 'package:diy_boox/repo/payment_repository.dart';
import 'package:diy_boox/repo/provider_account_repository.dart';
import 'package:diy_boox/repo/receipt_category_repository.dart';
import 'package:diy_boox/repo/receipt_dashboard_repository.dart';
import 'package:diy_boox/repo/receipt_repository.dart';
import 'package:diy_boox/repo/receipt_supplier_repository.dart';
import 'package:diy_boox/repo/receipt_type_repository.dart';
import 'package:diy_boox/repo/recurring_invoice_repository.dart';
import 'package:diy_boox/repo/report_repository.dart';
import 'package:diy_boox/repo/role_repository.dart';
import 'package:diy_boox/repo/taxes_repository.dart';
import 'package:diy_boox/repo/users_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/network/dio/dio_client.dart';
import 'core/network/dio/logging_interceptor.dart';
import 'core/utils/app_constants.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerLazySingleton(() => DioClient(AppConstants.baseUrl, sl(),
      loggingInterceptor: sl(), sharedPreferences: sl()));

  //repository
  sl.registerLazySingleton(
      () => LoginRepository(dioClient: sl(), sharedPreferences: sl()));
  sl.registerLazySingleton(() => BankFeedsRepository(dioClient: sl()));
  sl.registerLazySingleton(() => BusinessRepository(dioClient: sl()));
  sl.registerLazySingleton(() => ClientRepository(dioClient: sl()));
  sl.registerLazySingleton(() => DashboardRepository(dioClient: sl()));
  sl.registerLazySingleton(() => DriveFileRepository(dioClient: sl()));
  sl.registerLazySingleton(() => DummyRepository(dioClient: sl()));
  sl.registerLazySingleton(() => EstimatesRepository(dioClient: sl()));
  sl.registerLazySingleton(() => FileRepository(dioClient: sl()));
  sl.registerLazySingleton(() => InvoiceRepository(dioClient: sl()));
  sl.registerLazySingleton(() => ItemRepository(dioClient: sl()));
  sl.registerLazySingleton(() => PaymentDueTermsRepository(dioClient: sl()));
  sl.registerLazySingleton(() => PaymentMethodsRepository(dioClient: sl()));
  sl.registerLazySingleton(() => PaymentRepository(dioClient: sl()));
  sl.registerLazySingleton(() => ProviderAccountRepository(dioClient: sl()));
  sl.registerLazySingleton(() => ReceiptCategoryRepository(dioClient: sl()));
  sl.registerLazySingleton(() => ReceiptDashBoardRepository(dioClient: sl()));
  sl.registerLazySingleton(() => ReceiptRepository(dioClient: sl()));
  sl.registerLazySingleton(() => ReceiptSupplierRepository(dioClient: sl()));
  sl.registerLazySingleton(() => ReceiptTypeRepository(dioClient: sl()));
  sl.registerLazySingleton(() => RecurringInvoiceRepository(dioClient: sl()));
  sl.registerLazySingleton(() => ReportRepository(dioClient: sl()));
  sl.registerLazySingleton(() => RoleRepository(dioClient: sl()));
  sl.registerLazySingleton(() => TaxesRepository(dioClient: sl()));
  sl.registerLazySingleton(() => UsersRepository(dioClient: sl()));

  //provider
  // sl.registerFactory(() => AuthProvider(
  //       repo: sl(),
  //       sharedPreferences: sl(),
  //       dioClient: sl(),
  //       sendDataRepository: sl(),
  //     ));
  sl.registerFactory(
      () => AuthProvider(repo: sl(), sharedPreferences: sl(), dioClient: sl()));
  sl.registerFactory(() =>
      DashboardProvider(repo: sl(), sharedPreferences: sl(), dioClient: sl()));
  sl.registerFactory(() => ReceiptProvider(
      repo: sl(), repo2: sl(), sharedPreferences: sl(), dioClient: sl()));
  sl.registerFactory(() =>
      InvoicesProvider(repo: sl(), businessRepo: sl(), sharedPreferences: sl(), dioClient: sl()));
  sl.registerFactory(() =>
      RecurringProvider(repo: sl(), sharedPreferences: sl(), dioClient: sl()));
  sl.registerFactory(() =>
      EstimatesProvider(repo: sl(), sharedPreferences: sl(), dioClient: sl()));
  sl.registerFactory(() =>
      ProductsProvider(repo: sl(), sharedPreferences: sl(), dioClient: sl()));
  sl.registerFactory(() =>
      ClientProvider(repo: sl(), sharedPreferences: sl(), dioClient: sl()));
  sl.registerFactory(() =>
      SupplierProvider(repo: sl(), sharedPreferences: sl(), dioClient: sl()));
  sl.registerFactory(() => PaymentMethodsProvider(
      repo: sl(), sharedPreferences: sl(), dioClient: sl()));
  sl.registerFactory(() => BusinessProvider(
      repo: sl(), fileRepo: sl(), sharedPreferences: sl(), dioClient: sl()));
  sl.registerFactory(() =>
      PaymentDueProvider(repo: sl(), sharedPreferences: sl(), dioClient: sl()));
  sl.registerFactory(() =>
      ReportProvider(repo: sl(), sharedPreferences: sl(), dioClient: sl()));
  sl.registerFactory(() =>
      DriveFileProvider(repo: sl(), sharedPreferences: sl(), dioClient: sl()));

  //external
  final sharedPreference = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreference);
  sl.registerLazySingleton(() => Dio());
  sl.registerLazySingleton(() => LoggingInterceptor());
}
