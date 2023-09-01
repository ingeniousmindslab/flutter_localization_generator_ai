import 'package:dio/dio.dart';

import '../core/network/dio/dio_client.dart';
import '../core/utils/app_constants.dart';
import '../model/api_response.dart';

class PaymentRepository {
  final DioClient dioClient;

  PaymentRepository({required this.dioClient});

  Future<ApiResponse> handleStripePaymentWebhook() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.stripePaymentWebhook,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> disconnectPaymentAccount() async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.disconnectPaymentAccount,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }
}
