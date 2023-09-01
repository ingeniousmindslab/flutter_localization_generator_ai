import 'package:dio/dio.dart';

import '../core/network/dio/dio_client.dart';
import '../core/utils/app_constants.dart';
import '../model/api_response.dart';

class ReportRepository {
  final DioClient dioClient;

  ReportRepository({required this.dioClient});

  Future<ApiResponse> getClientSalesReport() async {
    try {
      Response response = await dioClient
          .post(AppConstants.baseUrl + AppConstants.clientSalesReport, data: {
        "pageNumber": 0,
        "pageSize": 0,
        "sortBy": "",
        "sortOrder": false,
        "search": "",
        "startDate": "",
        "endDate": "",
        "dateFilter": 1,
        "pageLoad": true
      });
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getSalesSummary() async {
    try {
      Response response = await dioClient.get(
        "${AppConstants.baseUrl}${AppConstants.salesSummary}?DateFilter=1&StartDate=&EndDate=&PageLoad=true",
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> exportSalesReport() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.exportSalesReport,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getSuppliersExpensesReport() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.suppliersExpensesReport,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> categoryExpensesReport() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.categoryExpensesReport,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getExpensesSummary() async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.expensesSummary,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> exportExpensesReport() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.exportExpensesReport,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getProfitAndSalesSummary() async {
    try {
      Response response = await dioClient.get(
        "${AppConstants.baseUrl}${AppConstants.profitAndSalesSummary}?SalesFilter=1&ExpenseFilter=1&DateFilter=1&StartDate=&EndDate=&PageLoad=true",
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getClientSalesReports(String? search) async {
    try {
      Response response = await dioClient
          .post(AppConstants.baseUrl + AppConstants.clientSalesReports, data: {
        "pageNumber": 0,
        "pageSize": 0,
        "sortBy": "",
        "sortOrder": false,
        "search": search,
        "startDate": "",
        "endDate": "",
        "dateFilter": 1,
        "pageLoad": true
      });
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getItemSalesReport() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.itemSalesReport,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getSupplierExpensesReport() async {
    try {
      Response response = await dioClient.post(
          AppConstants.baseUrl + AppConstants.supplierExpensesReport,
          data: {
            "pageNumber": 0,
            "pageSize": 0,
            "sortBy": "",
            "sortOrder": false,
            "search": "",
            "startDate": "",
            "endDate": "",
            "dateFilter": 1,
            "pageLoad": true
          });

      if (response.statusCode == 200) {
        return ApiResponse.withSuccess(response);
      } else {
        return ApiResponse.withError(response);
      }
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getCategoryExpensesReport() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.categoryProfitReport,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> exportProfitAndLossReport() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.exportProfitAndLossReport,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }
}
