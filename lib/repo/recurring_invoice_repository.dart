import 'package:dio/dio.dart';

import '../core/network/dio/dio_client.dart';
import '../core/utils/app_constants.dart';
import '../model/api_response.dart';

class RecurringInvoiceRepository {
  final DioClient dioClient;

  RecurringInvoiceRepository({required this.dioClient});

  Future<ApiResponse> getRecurringInvoiceByUniversalId(
      {required String universalId}) async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl +
            AppConstants.getRecurringInvoiceByUniversalId +
            universalId,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> executeRecurringInvoiceList(int filter,
      {String search = ""}) async {
    try {
      Response response = await dioClient.post(
          AppConstants.baseUrl + AppConstants.executeRecurringInvoiceList,
          data: {
            "pageNumber": 1,
            "pageSize": 50,
            "sortBy": "",
            "sortOrder": true,
            "search": search,
            "filter": filter,
            "isRecurring": true,
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

  Future<ApiResponse> getScheduleSettingByInvoiceId(
      {required String universalId}) async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl +
            AppConstants.getScheduleSettingByInvoiceId +
            universalId,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getScheduleSettingByUniversalId(
      {required String universalId}) async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl +
            AppConstants.getScheduleSettingByUniversalId +
            universalId,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> saveInvoiceScheduleSetting() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.saveInvoiceScheduleSetting,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> saveRecurringInvoiceScheduleSetting() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.saveRecurringInvoiceScheduleSetting,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> saveRecurringInvoice() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.saveRecurringInvoice,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getRecurringInvoiceList() async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.getRecurringInvoiceList,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> updateRecurringInvoiceStatus() async {
    try {
      Response response = await dioClient.put(
        AppConstants.baseUrl + AppConstants.updateRecurringInvoiceStatus,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> duplicateInvoicesByUniversalId() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.duplicateInvoicesByUniversalId,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> deleteRecurringInvoice() async {
    try {
      Response response = await dioClient.delete(
        AppConstants.baseUrl + AppConstants.deleteRecurringInvoice,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }
}
