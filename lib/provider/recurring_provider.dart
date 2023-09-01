import 'package:diy_boox/model/api_response.dart';
import 'package:diy_boox/model/recurring_invoice/execute_recurring_invoice_list_response.dart';
import 'package:diy_boox/repo/recurring_invoice_repository.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../core/network/dio/dio_client.dart';

class RecurringProvider extends ChangeNotifier {
  final RecurringInvoiceRepository repo;
  final SharedPreferences sharedPreferences;
  final DioClient dioClient;

  RecurringProvider({
    required this.repo,
    required this.sharedPreferences,
    required this.dioClient,
  });

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  List<ExecuteRecurringInvoiceListResponse> _list = [];
  List<ExecuteRecurringInvoiceListResponse> get list => _list;

  Future<void> getRecurringList(int filter, {String search = ""}) async {
    _isLoading = true;

    if (search.isNotEmpty || filter > -1) {
      notifyListeners();
    }

    ApiResponse apiResponse =
        await repo.executeRecurringInvoiceList(filter, search: search);

    if (apiResponse.response != null &&
        apiResponse.response!.statusCode == 200) {
      _list = List<dynamic>.from(apiResponse.response!.data)
          .map((e) => ExecuteRecurringInvoiceListResponse.fromJson(e))
          .toList();
    } else {
      // Handle error cases if needed
    }

    _isLoading = false;
    notifyListeners();
  }
}
