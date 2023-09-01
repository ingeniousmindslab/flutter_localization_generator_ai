import 'package:diy_boox/model/payment_due_term/get_payment_due_term_response.dart';
import 'package:diy_boox/repo/payment_due_terms_repository.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../core/network/dio/dio_client.dart';
import '../model/api_response.dart';

class PaymentDueProvider extends ChangeNotifier {
  final PaymentDueTermsRepository repo;
  final SharedPreferences sharedPreferences;
  final DioClient dioClient;

  PaymentDueProvider({
    required this.repo,
    required this.sharedPreferences,
    required this.dioClient,
  });

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  List<GetPaymentDueTermsResponse> _paymentDueList = [];
  List<GetPaymentDueTermsResponse> get paymentDueList => _paymentDueList;

  Future<void> getPaymentDueList() async {
    _isLoading = true;

    ApiResponse apiResponse = await repo.listPaymentDueTerms();

    if (apiResponse.response != null &&
        apiResponse.response!.statusCode == 200) {
      final data = List<dynamic>.from(apiResponse.response!.data)
          .map((e) => GetPaymentDueTermsResponse.fromJson(e));
      _paymentDueList = data.toList();
    } else {
      // Handle error cases if needed
    }
    _isLoading = false;

    notifyListeners();
  }
}
