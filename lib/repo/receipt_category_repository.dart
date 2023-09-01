import 'package:dio/dio.dart';

import '../core/network/dio/dio_client.dart';
import '../core/utils/app_constants.dart';
import '../model/api_response.dart';

class ReceiptCategoryRepository {
  final DioClient dioClient;

  ReceiptCategoryRepository({required this.dioClient});

  Future<ApiResponse> getReceiptCategory({required String universalId}) async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.receiptCategory + universalId,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> deleteReceiptCategory(
      {required String universalId}) async {
    try {
      Response response = await dioClient.delete(
        AppConstants.baseUrl + AppConstants.deleteReceiptCategory + universalId,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getAllCategory() async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.getAllCategory,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getCategoryList() async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.categoryList,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> categoryReceipt() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.categoryReceipt,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> updateCategoryReceipt() async {
    try {
      Response response = await dioClient.put(
        AppConstants.baseUrl + AppConstants.categoryReceipt,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> copyReceiptCategories() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.copyReceiptCategories,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> executeReceiptCategoryList(
      {required String search}) async {
    try {
      Response response = await dioClient.post(
          AppConstants.baseUrl + AppConstants.executeReceiptCategoryList,
          data: {
            "pageNumber": 1,
            "pageSize": 50,
            "sortBy": "",
            "sortOrder": true,
            "search": search,
            "filter": 0,
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

  Future<ApiResponse> exportReceiptCategory() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.exportReceiptCategory,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getImportTemplateReceiptCategory() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.getImportTemplateReceiptCategory,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> importReceiptCategory() async {
    try {
      FormData formData = FormData.fromMap({
        // 'file': await MultipartFile.fromFile(filePath),
      });

      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.importReceiptCategory,
        data: formData,
      );

      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> multipleDelete(String uid) async {
    try {
      Response response = await dioClient.delete(
          AppConstants.baseUrl + AppConstants.multipleDelete,
          data: [uid]);
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }
}
