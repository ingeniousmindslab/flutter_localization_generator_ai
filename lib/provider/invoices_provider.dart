import 'package:diy_boox/model/invoice/execute_invoice_list_response.dart';
import 'package:diy_boox/model/invoice/get_payment_method_response.dart';
import 'package:diy_boox/repo/invoice_repository.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../core/network/dio/dio_client.dart';
import '../model/api_response.dart';
import '../repo/business_repository.dart';

class InvoicesProvider extends ChangeNotifier {
  final InvoiceRepository repo;
  final BusinessRepository businessRepo;
  final SharedPreferences sharedPreferences;
  final DioClient dioClient;

  InvoicesProvider({
    required this.repo,
    required this.businessRepo,
    required this.sharedPreferences,
    required this.dioClient,
  });

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  List<ExecuteInvoiceListResponse> _invoicesList = [];
  List<ExecuteInvoiceListResponse> invoicesListTemp = [];
  List<ExecuteInvoiceListResponse> get invoicesList => _invoicesList;

  List<GetPaymentMethodResponse> paymentMethods = [];
  List<GetPaymentMethodResponse> get paymentMethod => paymentMethods;

  Map<String, dynamic> _tempInvoice = {};
  Map<String, dynamic> get tempInvoice => _tempInvoice;

  Future<void> getInvoicesList(int filter, {String search = ""}) async {
    _isLoading = true;
    if (filter > 0 || search.isNotEmpty) {
      notifyListeners();
    }

    ApiResponse apiResponse =
        await repo.executeInvoiceList(filter, search: search);

    if (apiResponse.response != null &&
        apiResponse.response!.statusCode == 200) {
      // List<ExecuteInvoiceListResponse> updatedInvoicesList = [];

      _invoicesList = (apiResponse.response!.data as List)
          .map((e) => ExecuteInvoiceListResponse.fromJson(e))
          .toList();

      // _invoicesList = data;
      invoicesListTemp = _invoicesList;
    } else {
      // Handle error cases if needed
    }
    _isLoading = false;

    notifyListeners();
  }

  Future<void> deleteInvoice(String universalId) async {
    _isLoading = true;

    notifyListeners();

    ApiResponse apiResponse = await repo.deleteInvoices(universalId);

    if (apiResponse.response != null &&
        apiResponse.response?.statusCode == 200) {
      invoicesList.removeWhere((e) => e.universalId == universalId);
    } else {}
    _isLoading = false;

    notifyListeners();
  }

  Future<void> saveInvoice(Map<String, dynamic> body) async {
    _isLoading = true;

    notifyListeners();

    ApiResponse apiResponse = await repo.saveInvoice(body);

    if (apiResponse.response != null &&
        apiResponse.response?.statusCode == 200) {
      print("Scuess");
      _tempInvoice = body;
    } else {
      print("Error");
    }
    _isLoading = false;

    notifyListeners();
  }

  Future<void> getPaymentDetails() async {
    _isLoading = true;

    ApiResponse apiResponse = await businessRepo.getBusinessPaymentDetails();

    if (apiResponse.response != null &&
        apiResponse.response?.statusCode == 200) {
      print("Scuess");
     paymentMethods = List<dynamic>.from(apiResponse.response!.data)
          .map((w) => GetPaymentMethodResponse.fromJson(w))
          .toList();
    } else {
      print("Error");
    }
    _isLoading = false;

    notifyListeners();
  }

  preivewBody(cost) {
    _tempInvoice = cost;
    // notifyListeners();
  }
}
