import 'package:dio/dio.dart';

import '../core/network/dio/dio_client.dart';
import '../core/utils/app_constants.dart';
import '../model/api_response.dart';

class BankFeedsRepository {
  final DioClient dioClient;

  BankFeedsRepository({required this.dioClient});

  Future<ApiResponse> getAllBankDashboard() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.GetAllBankDashboard,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getAllBankDashboardTransactions() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.GetAllBankDashboardTransactions,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> trueLayerReAuthenticate(String universalId) async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl +
            AppConstants.TrueLayerreAuthenticate +
            universalId,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> trueLayerPrepareUrl() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.TrueLayerprepareUrl,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> trueLayerSuccessRequest() async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.TrueLayersucessRequest,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> trueLayerGetBankAccounts() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.TrueLayergetBankAccounts,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> trueLayerCancelRequest() async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.TrueLayercancelRequest,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> searchTransaction() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.searchTransaction,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> saveTransactionNote() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.saveTransactionNote,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> transactionNotes() async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.transactionNotes,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getAllBankAccount() async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.GetAllBankAccount,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getTransaction(String transactionId) async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl +
            AppConstants.TrueLayerApigetTransaction +
            transactionId,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getAllAccountTransation() async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.GetAllAccountTransation,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> trueLayerApiSampleData(String isAdd) async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.TrueLayerApisampleData + isAdd,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> trueLayerApiUpdateBank() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.TrueLayerApiUpdateBank,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> trueLayerApiCreateBankAccount() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.TrueLayerApiCreateBankAccount,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> refreshAccountTransation(String bankAccountId) async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl +
            AppConstants.TrueLayerApirefreshAccountTransation +
            bankAccountId,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> exportBankTransaction() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.TrueLayerApiexportBankTransaction,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> updateIsLinked() async {
    try {
      Response response = await dioClient.put(
        AppConstants.baseUrl + AppConstants.TrueLayerApiUpdateIsLinked,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> deleteBank(String universalId) async {
    try {
      Response response = await dioClient.delete(
        AppConstants.baseUrl +
            AppConstants.TrueLayerApiDeleteBank +
            universalId,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getTrueLayerCancelRequest() async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl +
            AppConstants.TrueLayerApiGetTrueLayerCancelRequest,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> weatherForecast() async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.WeatherForecast,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }
}
