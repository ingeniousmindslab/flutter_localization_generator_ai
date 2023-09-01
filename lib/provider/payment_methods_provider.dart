import 'package:diy_boox/repo/payment_methods_repository.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../core/network/dio/dio_client.dart';
import '../model/api_response.dart';

class PaymentMethodsProvider extends ChangeNotifier {
  final PaymentMethodsRepository repo;
  final SharedPreferences sharedPreferences;
  final DioClient dioClient;

  PaymentMethodsProvider({
    required this.repo,
    required this.sharedPreferences,
    required this.dioClient,
  });

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future<void> getPaymentList() async {
    _isLoading = true;

    // notifyListeners();

    ApiResponse apiResponse = await repo.exportPaymentMethods();

    if (apiResponse.response != null &&
        apiResponse.response!.statusCode == 200) {
      //   List<GetInvoiceResponse> updatedInvoicesList = [];
      //   List<dynamic> invoicesData = apiResponse.response!.data;

      //   for (dynamic element in invoicesData) {
      //     ApiResponse invoiceApiResponse = await repo.getInvoice(
      //       universalId: element["universalId"],
      //     );

      //     if (invoiceApiResponse.response != null &&
      //         invoiceApiResponse.response!.statusCode == 200) {
      //       updatedInvoicesList.add(
      //         GetInvoiceResponse.fromJson(invoiceApiResponse.response!.data),
      //       );
      //     }
    }

    //   _invoicesList = updatedInvoicesList;
    //   invoicesListTemp = updatedInvoicesList;
    // } else {
    //   // Handle error cases if needed
    // }
    _isLoading = false;

    notifyListeners();
  }
}
