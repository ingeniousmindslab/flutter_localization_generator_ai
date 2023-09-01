import 'package:diy_boox/model/auth/login_response.dart';
import 'package:diy_boox/model/auth/refresh_response.dart';
import 'package:diy_boox/model/auth/register_response.dart';
import 'package:diy_boox/model/auth/verify_response.dart';
import 'package:diy_boox/repo/login_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../core/network/dio/dio_client.dart';
import '../core/utils/app_constants.dart';
import '../model/api_response.dart';

class AuthProvider extends ChangeNotifier {
  final LoginRepository repo;
  final SharedPreferences sharedPreferences;
  final DioClient dioClient;

  AuthProvider(
      {required this.repo,
      required this.sharedPreferences,
      required this.dioClient});

  String _errorMessage = '';

  String get errorMessage => _errorMessage;

  int? _statusCode;
  int? get statusCode => _statusCode;

  String? _userId;
  String? get userID => _userId;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  bool? _success;
  bool? get success => _success;

  Future<void> login(email) async {
    _isLoading = true;

    notifyListeners();

    ApiResponse apiResponse = await repo.login(email);

    late LoginResponse data;

    if (apiResponse.response != null &&
        apiResponse.response?.statusCode == 200) {
      data = LoginResponse.fromJson(apiResponse.response?.data);
      _statusCode = data.statusCode;
      _userId = data.entityUId;
      sharedPreferences.setString(AppConstants.USERID, data.entityUId);
    } else {}

    _isLoading = false;

    notifyListeners();
  }

  Future<void> verify(email, otp) async {
    _statusCode = null;

    _isLoading = true;

    notifyListeners();

    ApiResponse apiResponse = await repo.verify(email, otp);

    late VerifyResponse data;

    if (apiResponse.response != null &&
        apiResponse.response?.statusCode == 200) {
      data = VerifyResponse.fromJson(apiResponse.response?.data);
    } else {}

    _success = data.isccusess;

    sharedPreferences.setString(AppConstants.TOKEN, data.accessToken!);

    sharedPreferences.setString(
        AppConstants.refreshTokenKey, data.refreshTokenId!);

    dioClient.updateToken(data.accessToken!);

    _isLoading = false;

    notifyListeners();
  }

  Future<void> register(email) async {
    _statusCode = null;

    _isLoading = true;

    notifyListeners();

    ApiResponse apiResponse = await repo.register(email);

    late RegisterResponse data;

    if (apiResponse.response != null &&
        apiResponse.response?.statusCode == 200) {
      data = RegisterResponse.fromJson(apiResponse.response?.data);
    } else {}
    _statusCode = data.statusCode;

    _isLoading = false;

    notifyListeners();
  }

  Future<void> refreshToken() async {
    _statusCode = null;

    _isLoading = true;

    notifyListeners();

    ApiResponse apiResponse = await repo.refresh();

    late RefreshResponse data;

    if (apiResponse.response != null &&
        apiResponse.response?.statusCode == 200) {
      data = RefreshResponse.fromJson(apiResponse.response?.data);
    } else {}

    if (data.accessToken != null) {
      sharedPreferences.setString(AppConstants.TOKEN, data.accessToken!);

      sharedPreferences.setString(
          AppConstants.refreshTokenKey, data.refreshTokenId!);

      dioClient.updateToken(data.accessToken!);
    }

    _isLoading = false;

    notifyListeners();
  }

  Future<bool> checkToken() async {
    bool token = false;

    String? data = sharedPreferences.getString(AppConstants.refreshTokenKey);
    if (data == null) {
      token = false;
    } else {
      token = true;
    }
    notifyListeners();
    return token;
  }
}
