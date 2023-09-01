// ... Previous code ...

import 'package:dio/dio.dart';

import '../core/network/dio/dio_client.dart';
import '../core/utils/app_constants.dart';
import '../model/api_response.dart';

class ProviderAccountRepository {
  final DioClient dioClient;

  ProviderAccountRepository({required this.dioClient});

  Future<ApiResponse> reAuthenticte({required String universalId}) async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.reAuthenticte + universalId,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> prepareStripe() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.prepareStripe,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> stripeRedirect() async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.stripeRedirect,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> prepareGoogle() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.prepareGoogle,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> googleRedirect() async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.googleRedirect,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> prepareOffice() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.prepareOffice,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> officeRedirect() async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.officeRedirect,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getAllMail({required String providerId}) async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.getAllMail + providerId,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> deleteMail({required String universalId}) async {
    try {
      Response response = await dioClient.delete(
        AppConstants.baseUrl + AppConstants.deleteMail + universalId,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> defaultMail() async {
    try {
      Response response = await dioClient.put(
        AppConstants.baseUrl + AppConstants.defaultMail,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getAllMails() async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.getAllMails,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }
}
