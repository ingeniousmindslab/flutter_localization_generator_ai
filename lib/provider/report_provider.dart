import 'package:diy_boox/model/client/get_all_client_response.dart';
import 'package:diy_boox/model/report/get_client_sales_report_response.dart';
import 'package:diy_boox/model/report/get_profit_report_response.dart';
import 'package:diy_boox/model/report/get_sales_summary_response.dart';
import 'package:diy_boox/model/report/get_supplier_expense_report_response.dart';
import 'package:diy_boox/repo/report_repository.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../core/network/dio/dio_client.dart';
import '../model/api_response.dart';

class ReportProvider extends ChangeNotifier {
  final ReportRepository repo;
  final SharedPreferences sharedPreferences;
  final DioClient dioClient;

  ReportProvider({
    required this.repo,
    required this.sharedPreferences,
    required this.dioClient,
  });

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  GetClientSaleReportResponse? _clientSalesReportList;
  GetClientSaleReportResponse? get clientSalesReportList =>
      _clientSalesReportList;

  GetProfitReportResponse? _profitAndSalesSummary;
  GetProfitReportResponse get profitAndSalesSummary => _profitAndSalesSummary!;

  GetSupplierExpenseReportResponse? _supplierExpenseReport;
  GetSupplierExpenseReportResponse? get supplierExpenseReport =>
      _supplierExpenseReport;

  GetSalesSummaryResponse? _salesSummary;
  GetSalesSummaryResponse? get salesSummary => _salesSummary;

  GetClientSaleReportResponse? _clientSalesRpt;
  GetClientSaleReportResponse get clientSalesRpt => _clientSalesRpt!;

  GetClientSalesReportResponse? _clientSalesReport;
  GetClientSalesReportResponse? get clientSalesReport => _clientSalesReport;

  Future<void> getClientSalesReport({String search = ""}) async {
    _isLoading = true;
    if (search.isNotEmpty) {
      notifyListeners();
    }

    ApiResponse apiResponse = await repo.getClientSalesReports(search);

    if (apiResponse.response != null &&
        apiResponse.response!.statusCode == 200) {
      _clientSalesReportList =
          GetClientSaleReportResponse.fromJson(apiResponse.response!.data);
    } else {
      // Handle error cases if needed
    }
    _isLoading = false;

    notifyListeners();
  }

  Future<void> getProfitAndSalesSummary() async {
    _isLoading = true;

    ApiResponse apiResponse = await repo.getProfitAndSalesSummary();

    if (apiResponse.response != null &&
        apiResponse.response!.statusCode == 200) {
      _profitAndSalesSummary =
          GetProfitReportResponse.fromJson(apiResponse.response!.data);
    } else {
      // Handle error cases if needed
    }
    _isLoading = false;

    notifyListeners();
  }

  Future<void> getSupplierExpenseReport() async {
    _isLoading = true;

    ApiResponse apiResponse = await repo.getSupplierExpensesReport();

    if (apiResponse.response != null &&
        apiResponse.response!.statusCode == 200) {
      _supplierExpenseReport =
          GetSupplierExpenseReportResponse.fromJson(apiResponse.response!.data);
    } else {
      // Handle error cases if needed
    }
    _isLoading = false;

    notifyListeners();
  }

  Future<void> getReportSalesSummary() async {
    _isLoading = true;

    ApiResponse apiResponse = await repo.getSalesSummary();

    if (apiResponse.response != null &&
        apiResponse.response!.statusCode == 200) {
      _salesSummary =
          GetSalesSummaryResponse.fromJson(apiResponse.response!.data);
    } else {
      // Handle error cases if needed
    }
    await getClientSalesRpt();
    _isLoading = false;

    notifyListeners();
  }

  Future<void> getClientSalesRpt() async {
    _isLoading = true;

    ApiResponse apiResponse = await repo.getClientSalesReport();

    if (apiResponse.response != null &&
        apiResponse.response!.statusCode == 200) {
      _clientSalesReport =
          GetClientSalesReportResponse.fromJson(apiResponse.response!.data);
    } else {
      // Handle error cases if needed
      _clientSalesReport = GetClientSalesReportResponse(
          clientSales: [],
          totalSalesAmount: 0,
          totalSalesReceivedAmount: 0,
          totalSalestDueAmount: 0,
          dateFilter: 0);
    }
    _isLoading = false;

    notifyListeners();
  }
}
