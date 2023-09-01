import 'package:dio/dio.dart';

import '../core/network/dio/dio_client.dart';
import '../core/utils/app_constants.dart';
import '../model/api_response.dart';

class RoleRepository {
  final DioClient dioClient;

  RoleRepository({required this.dioClient});

  Future<ApiResponse> getRole({required
  String universalId}) async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.getRole + universalId,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getRoleList() async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.getRoleList,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getAllRoles() async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.allRoles,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> executeRoleList() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.executeRoleList,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> createRole() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.createRole,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> exportRole() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.exportRole,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> copyRoles() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.copyRoles,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> importRoles() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.importRoles,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getImportRoleTemplate() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.getImportRoleTemplate,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> updateRole() async {
    try {
      Response response = await dioClient.put(
        AppConstants.baseUrl + AppConstants.updateRole,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> deleteSpecificRole({required String universalId}) async {
    try {
      Response response = await dioClient.delete(
        AppConstants.baseUrl + AppConstants.deleteSpecificRole + universalId,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> deleteRole() async {
    try {
      Response response = await dioClient.delete(
        AppConstants.baseUrl + AppConstants.deleteRole,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> restoreRole() async {
    try {
      Response response = await dioClient.put(
        AppConstants.baseUrl + AppConstants.restoreRole,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }
}
