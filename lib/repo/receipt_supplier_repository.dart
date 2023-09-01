import 'package:dio/dio.dart';

import '../core/network/dio/dio_client.dart';
import '../core/utils/app_constants.dart';
import '../model/api_response.dart';

class ReceiptSupplierRepository {
  final DioClient dioClient;

  ReceiptSupplierRepository({required this.dioClient});

  Future<ApiResponse> getReceiptSupplier({required String universalId}) async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.receiptSupplier + universalId,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> deleteReceiptSupplier(
      {required String universalId}) async {
    try {
      Response response = await dioClient.delete(
        AppConstants.baseUrl + AppConstants.receiptSupplierDelete + universalId,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getAllSupplier() async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.getAllSupplier,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getSuppliersList() async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.suppliersList,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> createReceiptSupplier() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.receiptSuppliercreate,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> updateReceiptSupplier() async {
    try {
      Response response = await dioClient.put(
        AppConstants.baseUrl + AppConstants.receiptSupplierUpdate,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> executeReceiptSupplierList() async {
    try {
      Response response = await dioClient.post(
          AppConstants.baseUrl + AppConstants.executeReceiptSupplierList,
          data: {
            "pageNumber": 1,
            "pageSize": 20,
            "sortBy": "",
            "sortOrder": true,
            "search": "",
            "filter": 0,
            "dateFilter": 1,
            "pageload": true
          });
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> copyReceiptSupplier() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.copyReceiptSupplier,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> exportReceiptSupplier() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.exportReceiptSupplier,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getImportTemplateReceiptSupplier() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.getImportTemplateReceiptSupplie,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> importReceiptSupplier() async {
    try {
      FormData formData = FormData.fromMap({
        // 'file': await MultipartFile.fromFile(filePath),
      });

      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.importReceiptSupplie,
        data: formData,
      );

      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> multipleDeleteReceiptSupplier() async {
    try {
      Response response = await dioClient.delete(
        AppConstants.baseUrl + AppConstants.multipleDeleteReceiptSupplier,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }
}
