import 'package:diy_boox/core/network/dio/dio_client.dart';
import 'package:diy_boox/model/api_response.dart';
import 'package:diy_boox/model/receipt/execute_category_list_response.dart';
import 'package:diy_boox/model/receipt/execute_receipt_response.dart';
import 'package:diy_boox/repo/receipt_category_repository.dart';
import 'package:diy_boox/repo/receipt_repository.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ReceiptProvider extends ChangeNotifier {
  final ReceiptRepository repo;
  final ReceiptCategoryRepository repo2;
  final SharedPreferences sharedPreferences;
  final DioClient dioClient;

  ReceiptProvider({
    required this.repo,
    required this.repo2,
    required this.sharedPreferences,
    required this.dioClient,
  });

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  List<ExecuteReceiptResponse> data = [];
  List<ExecuteReceiptResponse> get receipts => data;

  List<ExecuteCategoryListResponse> data2 = [];
  List<ExecuteCategoryListResponse> get categoryList => data2;

  Future<void> getReceiptsList() async {
    _isLoading = true;

    // notifyListeners();

    ApiResponse apiResponse = await repo.executeReceiptInboxList();

    if (apiResponse.response != null &&
        apiResponse.response?.statusCode == 200) {
      data = List<dynamic>.from(apiResponse.response!.data)
          .map((e) => ExecuteReceiptResponse.fromJson(e))
          .toList();
    } else {}

    _isLoading = false;
    notifyListeners();
  }

  Future<void> receiptCategoryList({String search = ""}) async {
    _isLoading = true;

    if (search.isNotEmpty) {
      notifyListeners();
    }

    ApiResponse apiResponse =
        await repo2.executeReceiptCategoryList(search: search);

    if (apiResponse.response != null &&
        apiResponse.response?.statusCode == 200) {
      data2 = List<dynamic>.from(apiResponse.response!.data)
          .map((e) => ExecuteCategoryListResponse.fromJson(e))
          .toList();
    } else {}

    _isLoading = false;
    notifyListeners();
  }

  Future<void> receiptCategoryMultipleDelete(String uId) async {
    _isLoading = true;

    notifyListeners();

    ApiResponse apiResponse = await repo2.multipleDelete(uId);

    if (apiResponse.response != null &&
        apiResponse.response?.statusCode == 200) {
      receiptCategoryList();
    } else {}

    _isLoading = false;
    notifyListeners();
  }

  Future<void> executeDuplicateReceipt({String search = ""}) async {
    _isLoading = true;
    if (search.isNotEmpty) {
      notifyListeners();
    }

    ApiResponse apiResponse =
        await repo.executeDuplicateReceiptList(search: search);

    if (apiResponse.response != null &&
        apiResponse.response?.statusCode == 200) {
    } else {}

    _isLoading = false;
    notifyListeners();
  }
}
