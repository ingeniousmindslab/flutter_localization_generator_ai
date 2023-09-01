// ... Previous code ...

import 'package:dio/dio.dart';

import '../core/network/dio/dio_client.dart';
import '../core/utils/app_constants.dart';
import '../model/api_response.dart';

class PaymentDueTermsRepository {
  final DioClient dioClient;

  PaymentDueTermsRepository({required this.dioClient});

  Future<ApiResponse> listPaymentDueTerms() async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.listPaymentDueTerms,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getPaymentDueTerms({required String universalId}) async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.getPaymentDueTerms +universalId,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> createPaymentDueTerm(
      ) async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.paymentDueTerm,

      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> updatePaymentDueTerms(
      ) async {
    try {
      Response response = await dioClient.put(
        AppConstants.baseUrl + AppConstants.updatePaymentDueTerms,

      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }
}
