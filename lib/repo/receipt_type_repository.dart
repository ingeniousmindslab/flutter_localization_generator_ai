import 'package:dio/dio.dart';

import '../core/network/dio/dio_client.dart';
import '../core/utils/app_constants.dart';
import '../model/api_response.dart';

class ReceiptTypeRepository {
  final DioClient dioClient;

  ReceiptTypeRepository({required this.dioClient});

  Future<ApiResponse> getReceiptTypeList() async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.receipttypeList,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getReceiptType({required String universalId}) async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.getReceiptType + universalId,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getAllReceiptType() async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.getAllReceiptType,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> executeReceiptTypeList() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.executeReceiptTypeList,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> createReceiptType() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.createReceiptType,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> copyReceiptType() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.copyReceiptType,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> exportReceiptType() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.exportReceiptType,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getImportTemplateReceiptType() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.getImportTemplateReceiptType,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> importReceiptType() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.importReceiptType,
      );

      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> updateReceiptType() async {
    try {
      Response response = await dioClient.put(
        AppConstants.baseUrl + AppConstants.updateReceiptType,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> deleteReceiptType() async {
    try {
      Response response = await dioClient.delete(
        AppConstants.baseUrl + AppConstants.deleteReceiptType,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }
}
