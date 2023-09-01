import 'package:diy_boox/model/receipt_supplier/execute_supplier_list_response.dart';
import 'package:diy_boox/repo/receipt_supplier_repository.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../core/network/dio/dio_client.dart';
import '../model/api_response.dart';

class SupplierProvider extends ChangeNotifier {
  final ReceiptSupplierRepository repo;
  final SharedPreferences sharedPreferences;
  final DioClient dioClient;

  SupplierProvider({
    required this.repo,
    required this.sharedPreferences,
    required this.dioClient,
  });

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  List<ExecuteSupplierListResponse> _list = [];
  List<ExecuteSupplierListResponse> _listTemp = [];
  List<ExecuteSupplierListResponse> get suppliersList => _list;
  List<ExecuteSupplierListResponse> get suppliersListTemp => _listTemp;

  Future<void> getSuppliersList() async {
    _isLoading = true;

    ApiResponse apiResponse = await repo.executeReceiptSupplierList();
    if (apiResponse.response != null &&
        apiResponse.response?.statusCode == 200) {
      final data = (apiResponse.response!.data as List)
          .map((e) => ExecuteSupplierListResponse.fromJson(e))
          .toList();
      _list = data;
      _listTemp = data;
      // _list.removeWhere((e) => e.universalId == uId);
    } else {
      print("error");
    }

    _isLoading = false;
    notifyListeners();
  }

  searchByInv(String text) async {
    _isLoading = true;
    notifyListeners();
    await Future.delayed(const Duration(seconds: 1));
    if (text.isEmpty) {
      _list = suppliersListTemp;
    } else {
      _list = suppliersListTemp
          .where((element) =>
              element.supplierName.toLowerCase().contains(text.toLowerCase()))
          .toList();
    }

    _isLoading = false;
    notifyListeners();
  }
}
