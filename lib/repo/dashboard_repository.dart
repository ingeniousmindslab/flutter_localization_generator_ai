import 'package:dio/dio.dart';

import '../core/utils/app_constants.dart';
import '../model/api_response.dart';

class DashboardRepository {
  final Dio dioClient;

  DashboardRepository({required this.dioClient});

  Future<ApiResponse> getDashboardInfo(String filter) async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.getDashboardInfo + filter,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getInvoiceHistory(String filter) async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.getInvoiceHistory + filter,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getTopEarningByClients(String filter) async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.getTopEarningByClients + filter,
      );
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

  Future<ApiResponse> getTopExpensesBycategories(String filter) async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.getTopExpensesBycategories + filter,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getAllBankDashboard() async {
    try {
      Map<String, dynamic> requestData = {
        "endDate": null,
        "startDate": null,
        "filter": 1,
        "companyId": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
        "userId": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
        "invoiceId": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
        "bankDetailId": "3fa85f64-5717-4562-b3fc-2c963f66afa6"
      };

      dioClient.options.headers['businessid'] =
          'ba83eab3-bbde-4dd7-90ce-41c68e0b4fcb';

      Response response = await dioClient.post(
        '${AppConstants.baseUrlBank}Dashboard/GetAllBankDashboard',
        data: requestData,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getDashboardBankFeed(String bankID, int filter) async {
    try {
      Map<String, dynamic> requestData = {
        "endDate": null,
        "startDate": null,
        "filterTypes": filter,
        "companyId": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
        "bankDetailsID": bankID,
        "pageLoad": true
      };

      Response response = await dioClient.post(
        '${AppConstants.baseUrlBank}Dashboard/GetAllBankDashboardTransactions',
        data: requestData,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }
}
