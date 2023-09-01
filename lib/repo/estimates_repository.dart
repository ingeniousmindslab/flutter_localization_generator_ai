import 'package:dio/dio.dart';

import '../core/utils/app_constants.dart';
import '../model/api_response.dart';

class EstimatesRepository {
  final Dio dioClient;

  EstimatesRepository({required this.dioClient});

  Future<ApiResponse> getUniversalId(String universalId) async {
    try {
      Response response = await dioClient.get(
        "${AppConstants.baseUrl}${AppConstants.estimatesGetUniversalId}/$universalId",
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getEstimatesList() async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.estimatesList,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getEstimateTemplate() async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.getEstimateTemplate,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> viewEstimateReceipt() async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.viewEstimateRecipt,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> save() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.save,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> executeEstimateList(int filter,
      {String search = ""}) async {
    try {
      Response response = await dioClient
          .post(AppConstants.baseUrl + AppConstants.executeEstimateList, data: {
        "pageNumber": 1,
        "pageSize": 20,
        "sortBy": "",
        "sortOrder": true,
        "search": search,
        "filter": filter,
        "universalIds": [],
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

  Future<ApiResponse> estimatesAction() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.estimatesAction,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> duplicateEstimates() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.duplicateEstimatesc,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> exportToPdf() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.exportToPdf,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> exportEstimates() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.exportEstimates,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> createNote() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.note,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> sendEstimate() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.sendEstimate,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> convertToInvoice() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.convertToInvoice,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> deleteEstimates(String universalId) async {
    try {
      Response response = await dioClient.delete(
          AppConstants.baseUrl + AppConstants.deleteEstimates,
          data: [universalId]);
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }
}
