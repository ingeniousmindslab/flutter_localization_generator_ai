import 'package:dio/dio.dart';
import 'package:diy_boox/core/network/dio/dio_client.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../core/utils/app_constants.dart';
import '../model/api_response.dart';

class LoginRepository {
  final DioClient dioClient;
  final SharedPreferences sharedPreferences;

  LoginRepository({required this.dioClient, required this.sharedPreferences});

  Future<ApiResponse> login(String email) async {
    try {
      Map<String, dynamic> requestData = {
        'email': email,
      };
      Response response = await dioClient.post(
        AppConstants.baseUrlAuth + AppConstants.sendVerificationCode,
        data: requestData,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> verify(String userid, otp) async {
    try {
      Map<String, dynamic> requestData = {
        'userId': userid,
        'otpCode': otp,
        'otpProvider': 1
      };
      Response response = await dioClient.post(
        AppConstants.baseUrlAuth + AppConstants.validateVerificationCode,
        data: requestData,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> register(String email) async {
    try {
      Map<String, dynamic> requestData = {
        'email': email,
      };
      Response response = await dioClient.post(
        AppConstants.baseUrlAuth + AppConstants.registration,
        data: requestData,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> refresh() async {
    var refreshToken =
        sharedPreferences.getString(AppConstants.refreshTokenKey);

    try {
      Map<String, dynamic> requestData = {
        'refreshToken': refreshToken,
      };
      Response response = await dioClient.post(
        AppConstants.baseUrlAuth + AppConstants.refreshToken,
        data: requestData,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }
}
