import 'package:dio/dio.dart';
import 'package:diy_boox/core/network/dio/dio_client.dart';

import '../core/utils/app_constants.dart';
import '../model/api_response.dart';

class ReceiptRepository {
  final DioClient dioClient;

  ReceiptRepository({required this.dioClient});

  Future<ApiResponse> isReceiptHubConnected() async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.isReceiptHubConnected,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getReceipt({required String universalId}) async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.receipt + universalId,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getReceiptsList() async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.receiptsList,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getReceiptTransaction(
      {required String universalId}) async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.receiptTransaction + universalId,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> searchReceipts() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.searchReceipts,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> executeReceiptInboxList() async {
    try {
      Response response = await dioClient.post(
          AppConstants.baseUrl + AppConstants.executeReceiptInboxList,
          data: {
            "pageNumber": 1,
            "pageSize": 50,
            "sortBy": "",
            "sortOrder": true,
            "search": "",
            "filter": -1,
            "dateFilter": 1,
            "pageload": true
          });
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> executeDuplicateReceiptList({required search}) async {
    try {
      Response response = await dioClient.post(
          AppConstants.baseUrl + AppConstants.executeDuplicateReceiptList,
          data: {
            "pageNumber": 1,
            "pageSize": 50,
            "sortBy": "",
            "sortOrder": true,
            "search": search,
            "filter": 0,
            "dateFilter": 1,
            "pageload": true
          });
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> exportReceipt() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.exportReceipt,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> processDuplicates() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.processDuplicates,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getTransactionsReceipts() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.getTransactionsReceipts,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> createBankfeedReceipt() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.createBnakfeedReceipt,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> updateTransactionReceipt(
      {required String universalId}) async {
    try {
      Response response = await dioClient.post(
        '${AppConstants.baseUrl}$universalId/transaction',
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> transactionReceipt({required String universalId}) async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.transactionReceipt + universalId,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getTransactionReceiptUrl() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.transactionReceiptUrl,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getTransactionLinkedList(
      {required String bankTransactionId}) async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl +
            AppConstants.transactionLinkedList +
            bankTransactionId,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> uploadReceipt() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.uploadReceipt,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> exportDuplicateReceipt() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.exportDuplicateReceipt,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> sendReceiptEmail() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.sendReceiptEmail,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> updateReceipt() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.receiptUpdate,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> updatePaidStatus() async {
    try {
      Response response = await dioClient.put(
        AppConstants.baseUrl + AppConstants.updatePaidStatus,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> markAsApproved() async {
    try {
      Response response = await dioClient.put(
        AppConstants.baseUrl + AppConstants.markAsApproved,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> withdrawApproval() async {
    try {
      Response response = await dioClient.put(
        AppConstants.baseUrl + AppConstants.withdrawApproval,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> updateArchiveStatus() async {
    try {
      Response response = await dioClient.put(
        AppConstants.baseUrl + AppConstants.updateArchiveStatus,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> unlinkTransaction() async {
    try {
      Response response = await dioClient.put(
        AppConstants.baseUrl + AppConstants.transactionunlink,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> unlinkBank() async {
    try {
      Response response = await dioClient.put(
        AppConstants.baseUrl + AppConstants.bankunlink,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> linkTransaction() async {
    try {
      Response response = await dioClient.put(
        AppConstants.baseUrl + AppConstants.transactionlink,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> deleteReceipts() async {
    try {
      Response response = await dioClient.delete(
        AppConstants.baseUrl + AppConstants.deleteReceipts,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }
}
