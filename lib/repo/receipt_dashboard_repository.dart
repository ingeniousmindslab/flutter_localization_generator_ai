import 'package:dio/dio.dart';

import '../core/network/dio/dio_client.dart';
import '../core/utils/app_constants.dart';
import '../model/api_response.dart';

class ReceiptDashBoardRepository {
  final DioClient dioClient;

  ReceiptDashBoardRepository({required this.dioClient});

  Future<ApiResponse> getDashboard() async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.getDashboard,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> executeReceiptDashboardList() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.executeReceiptDashboardList,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }
}
