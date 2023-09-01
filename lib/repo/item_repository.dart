// ... Previous code ...

import 'package:dio/dio.dart';

import '../core/network/dio/dio_client.dart';
import '../core/utils/app_constants.dart';
import '../model/api_response.dart';

class ItemRepository {
  final DioClient dioClient;

  ItemRepository({required this.dioClient});

  Future<ApiResponse> getItemList() async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.list,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getItem({required String universalId}) async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.getItem + universalId,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getItemsList() async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.itemsList,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getAllItems() async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.getAllItem,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> createItem(
      {required Map<String, dynamic> itemData}) async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.createItem,
        data: itemData,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> executeItemList(int filter, {String search = ""}) async {
    try {
      Response response = await dioClient
          .post(AppConstants.baseUrl + AppConstants.executeItemList, data: {
        "pageNumber": 1,
        "pageSize": 20,
        "sortBy": "",
        "sortOrder": true,
        "search": "",
        "filter": 0,
        "startDate": "",
        "endDate": "",
        "dateFilter": 1,
        "universalIds": [],
        "pageLoad": true
      });
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> exportItems() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.exportItem,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> isItemCodeExistInCompany(
      {required String itemCode}) async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.isItemCodeExistInCompany + itemCode,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> copyItems({required List<String> itemIds}) async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.copyItems,
        data: itemIds,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getImportTemplateItem() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.getImportTemplateItem,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> importItem() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.importItem,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> updateItem(
      {required String itemId, required Map<String, dynamic> itemData}) async {
    try {
      Response response = await dioClient.put(
        AppConstants.baseUrl + AppConstants.updateItem + itemId,
        data: itemData,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> changeItemStatus() async {
    try {
      Response response =
          await dioClient.put(AppConstants.baseUrl + AppConstants.statusItem);
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> deleteItem({required String universalId}) async {
    try {
      Response response = await dioClient.delete(
        AppConstants.baseUrl + AppConstants.deleteItem + universalId,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> deleteItems() async {
    try {
      Response response = await dioClient.delete(
        AppConstants.baseUrl + AppConstants.deleteItems,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }
}
