import 'package:dio/dio.dart';

import '../core/utils/app_constants.dart';
import '../model/api_response.dart';

class DummyRepository {
  final Dio dioClient;

  DummyRepository({required this.dioClient});

  Future<ApiResponse> getLoggedInUser() async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.getLoggedInUser,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }
}
