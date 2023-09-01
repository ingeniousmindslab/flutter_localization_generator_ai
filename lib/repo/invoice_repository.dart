import 'package:dio/dio.dart';

import '../core/utils/app_constants.dart';
import '../model/api_response.dart';

class InvoiceRepository {
  final Dio dioClient;

  InvoiceRepository({required this.dioClient});

  Future<ApiResponse> getInvoice({required String universalId}) async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.getInvoice + universalId,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getInvoiceSummary() async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.summary,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getInvoicePayment(
      {required String invoiceUniversalId}) async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl +
            AppConstants.getInvoicePayment +
            invoiceUniversalId,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getAmountDue({required String universalId}) async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.amountDue + universalId,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getInvoicesList() async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.invoicesList,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getInvoiceRecentHistory(
      {required String universalId}) async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl +
            AppConstants.getInvoiceRecentHistory +
            universalId,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getInvoiceTemplate() async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.getInvoiceTemplate,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  //getInvoiceReceipt
  //viewInvoiceReceipt
  //executeInvoiceList
  //createBankfeedInvoice
  //searchInvoice
  //transactionInvoice
  //save
  //SaveInvoicePayment{universalId}
  //note{universalId}
  //exportToPdf
  //export
  //duplicateInvoice

  Future<ApiResponse> getInvoiceReminders(String universalId) async {
    try {
      Response response = await dioClient.get(
        '${AppConstants.baseUrl}${AppConstants.getInvoiceReminders}$universalId',
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> viewInvoiceReceipt(String universalId) async {
    try {
      Response response = await dioClient.get(
        '${AppConstants.baseUrl}${AppConstants.viewInvoiceReceipt}$universalId',
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> executeInvoiceList(int filter,
      {String search = ""}) async {
    try {
      Response response = await dioClient
          .post(AppConstants.baseUrl + AppConstants.executeInvoiceList, data: {
        "pageNumber": 1,
        "pageSize": 50,
        "sortBy": "createdOn",
        "sortOrder": false,
        "search": search,
        "filter": filter,
        "isRecurring": false,
        "startDate": "",
        "endDate": "",
        "dateFilter": 1,
        "pageLoad": true
      });
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> createBankfeedInvoice() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.createBankfeedInvoice,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> searchInvoices() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.searchInvoices,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> transactionInvoice() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.transactionInvoice,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> saveInvoice(Object body) async {
    try {
      Response response = await dioClient
          .post(AppConstants.baseUrl + AppConstants.saveInvoice, data: body);
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> saveInvoicePayment(String universalId) async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.saveInvoicePayment + universalId,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> noteInvoice(String universalId) async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.noteInvoice + universalId,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> exportToPdfInvoice() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.exportToPdfInvoice,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> invoiceexport() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.invoiceexport,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> duplicateInvoice() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.duplicateInvoice,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> exportPaymentToPdf({required String universalId}) async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.exportPaymentToPdf + universalId,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> sendInvoiceReceipt({required String universalId}) async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.sendInvoiceReceipt + universalId,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> sendPaymentReceipt({required String universalId}) async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.sendPaymentReceipt + universalId,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> saveReminder({required String invoiceUniversalId}) async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.saveReminder + invoiceUniversalId,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

//send

  Future<ApiResponse> sendInvoice() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.invoicesend,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> sendInvoiceReminder(
      {required String invoiceUniversalId}) async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl +
            AppConstants.sendInvoiceReminder +
            invoiceUniversalId,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> listInvoicePayment() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.listInvoicePayment,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> updateStatus() async {
    try {
      Response response = await dioClient.put(
        AppConstants.baseUrl + AppConstants.updateStatus,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> deleteInvoicePayment(
      {required String universalId}) async {
    try {
      Response response = await dioClient.delete(
        AppConstants.baseUrl + AppConstants.deleteInvoicePayment + universalId,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> deleteInvoices(String universalId) async {
    try {
      Response response = await dioClient.delete(
          AppConstants.baseUrl + AppConstants.deleteInvoices,
          data: [universalId]);
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> deleteAllInvoicePayment(
      {required String universalId}) async {
    try {
      Response response = await dioClient.delete(
        AppConstants.baseUrl +
            AppConstants.deleteAllInvoicePayment +
            universalId,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> deleteReminders({required String universalId}) async {
    try {
      Response response = await dioClient.delete(
        AppConstants.baseUrl + AppConstants.deleteReminders + universalId,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> deleteAllPaymentsAndReminders(
      {required String universalId}) async {
    try {
      Response response = await dioClient.delete(
        AppConstants.baseUrl +
            AppConstants.deleteAllPaymentsAndReminders +
            universalId,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }
}
