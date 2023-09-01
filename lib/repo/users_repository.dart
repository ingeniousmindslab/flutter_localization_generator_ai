import 'package:dio/dio.dart';

import '../core/network/dio/dio_client.dart';
import '../core/utils/app_constants.dart';
import '../model/api_response.dart';

class UsersRepository {
  final DioClient dioClient;

  UsersRepository({required this.dioClient});

  Future<ApiResponse> getUsersList() async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.getUsersList,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getAllUsers() async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.getAllUsers,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getUserNotes({required String userId}) async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.getUserNotes + userId,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getUserById({required String universalId}) async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.getUserById + universalId,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getUserPermissions() async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.getUserPermissions,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getUserList() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.getUserList,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> saveUser() async {
    try {
      Response response = await dioClient.put(
        AppConstants.baseUrl + AppConstants.saveUser,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> createNote({required String userId}) async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.createNote + userId,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> userExportReport() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.userExportReport,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> copyUsers() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.copyUsers,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> importUsers() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.importUsers,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> executeUserList() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.executeUserList,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getImportUsersTemplate() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.getImportUsersTemplate,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> usersStatus() async {
    try {
      Response response = await dioClient.put(
        AppConstants.baseUrl + AppConstants.usersStatus,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> updateThemeColor() async {
    try {
      Response response = await dioClient.put(
        AppConstants.baseUrl + AppConstants.updateThemeColor,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> inviteUser({required String universalId}) async {
    try {
      Response response = await dioClient.put(
        AppConstants.baseUrl + AppConstants.inviteUser + universalId,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> deleteSpecificUser({required String universalId}) async {
    try {
      Response response = await dioClient.delete(
        AppConstants.baseUrl + AppConstants.deleteSpecificUser + universalId,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> deleteAllUsers() async {
    try {
      Response response = await dioClient.delete(
        AppConstants.baseUrl + AppConstants.deleteAllUsers,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }
}
