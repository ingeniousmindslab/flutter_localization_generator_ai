import 'package:dio/dio.dart';

import '../core/utils/app_constants.dart';
import '../model/api_response.dart';

class ClientRepository {
  final Dio dioClient;

  ClientRepository({required this.dioClient});

  Future<ApiResponse> getAllClient() async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.getAllClient,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getUniversalId({required String id}) async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.getUniversalId + id,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> clientsList() async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.clientsList,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> allClients() async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.allClients,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> create() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.create,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> executeClientList(int filter,
      {String search = ""}) async {
    try {
      Response response = await dioClient
          .post(AppConstants.baseUrl + AppConstants.executeClientList, data: {
        "pageNumber": 1,
        "pageSize": 20,
        "sortBy": "",
        "sortOrder": true,
        "search": search,
        "filter": filter,
        "universalIds": []
      });
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> copyClients() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.cpoyClients,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> export() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.export,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getImportTemplate() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.getImportTemplate,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> import() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.import,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> update() async {
    try {
      Response response = await dioClient.put(
        AppConstants.baseUrl + AppConstants.update,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> status() async {
    try {
      Response response = await dioClient.put(
        AppConstants.baseUrl + AppConstants.status,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> deleteClients(String uId) async {
    try {
      Response response = await dioClient.delete(
          AppConstants.baseUrl + AppConstants.deleteClients,
          data: [uId]);
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }
}
