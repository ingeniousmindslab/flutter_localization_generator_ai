import 'dart:convert';

import 'package:diy_boox/model/item/get_all_item_response.dart';
import 'package:diy_boox/repo/item_repository.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../core/network/dio/dio_client.dart';
import '../model/api_response.dart';

class ProductsProvider extends ChangeNotifier {
  final ItemRepository repo;
  final SharedPreferences sharedPreferences;
  final DioClient dioClient;

  ProductsProvider({
    required this.repo,
    required this.sharedPreferences,
    required this.dioClient,
  });

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  bool _isError = false;
  bool get isError => _isError;

  String? _error;
  String? get error => _error;

  List<GetAllItemResponse> _list = [];
  List<GetAllItemResponse> _listTemp = [];

  List<GetAllItemResponse> get itemList => _list;
  List<GetAllItemResponse> get itemListTemp => _listTemp;

  Map<GetAllItemResponse, String> _selectedPL = {};
  Map<GetAllItemResponse, String> get selectedPlist => _selectedPL;

  double get totalAmount => selectedPlist.entries
      .map((e) => e.key.unitPrice * double.parse(e.value))
      .toList()
      .reduce((value, element) => value + element);
  String get getWithTax => (totalAmount * 0.12).toStringAsFixed(2);
  String get getAmountWithTax =>
      (totalAmount - double.parse(getWithTax)).toStringAsFixed(2);

  void selectedProduct(String value, String qty) {
    final item = _list.firstWhere((element) => value == element.itemName);
    _selectedPL.putIfAbsent(item, () => qty);
    _selectedPL;
    notifyListeners();
  }

  Future<void> getItemsList(int filter, {String search = ""}) async {
    _isLoading = true;

    if (search.isNotEmpty || filter >= 0) {
      notifyListeners();
    }

    ApiResponse apiResponse =
        await repo.executeItemList(filter, search: search);
    if (apiResponse.response != null &&
        apiResponse.response?.statusCode == 200) {
      final data = (apiResponse.response!.data as List)
          .map((e) => GetAllItemResponse.fromJson(e))
          .toList();
      _list = data;
      _listTemp = data;
    } else {}

    _isLoading = false;
    notifyListeners();
  }

  void filters(int index) {
    _isLoading = true;
    // invoicesListTemp = invoicesList;
    if (index == 1) {
      _list = _listTemp
          .where((element) => !element.isArchived && !element.isDeleted)
          .toList();
    } else if (index == 2) {
      _list = _listTemp.where((element) => element.isArchived).toList();
    } else {
      _list = _listTemp;
    }
    _isLoading = false;
    notifyListeners();
  }

  Future<void> deleteItem(String uId) async {
    _isLoading = true;

    ApiResponse apiResponse = await repo.deleteItem(universalId: uId);
    if (apiResponse.response != null &&
        apiResponse.response?.statusCode == 200) {
      _list.removeWhere((e) => e.universalId == uId);
    } else {
      _isError = true;
      _error = jsonDecode(apiResponse.error.toString())["Message"];
    }
    _isLoading = false;
    notifyListeners();
  }

  searchByInv(String text, {int selectedI = 0}) async {
    _isLoading = true;
    notifyListeners();
    await Future.delayed(const Duration(seconds: 1));

    if (selectedI == 1) {
      _list = _listTemp
          .where((element) => !element.isArchived && !element.isDeleted)
          .toList();
    } else if (selectedI == 2) {
      _list = _listTemp.where((element) => element.isArchived).toList();
    } else {
      _list = _listTemp;
    }
    _list = itemList
        .where((element) =>
            element.itemName.toLowerCase().contains(text.toLowerCase()))
        .toList();

    _isLoading = false;
    notifyListeners();
  }
}
