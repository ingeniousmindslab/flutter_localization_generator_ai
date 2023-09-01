// ... Previous code ...

import 'package:dio/dio.dart';

import '../core/network/dio/dio_client.dart';
import '../core/utils/app_constants.dart';
import '../model/api_response.dart';

class PaymentMethodsRepository {
  final DioClient dioClient;

  PaymentMethodsRepository({required this.dioClient});

  Future<ApiResponse> getPaymentMethods({required String id}) async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.getPaymentMethods + id,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> listPaymentMethods() async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.listPaymentMethods,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> exportPaymentMethods() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.exportPaymentMethods,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }
}
