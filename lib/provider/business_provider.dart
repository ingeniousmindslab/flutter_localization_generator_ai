import 'dart:io';

import 'package:diy_boox/core/utils/app_constants.dart';
import 'package:diy_boox/core/utils/custom_toast.dart';
import 'package:diy_boox/model/api_response.dart';
import 'package:diy_boox/model/business/get_business_response.dart';
import 'package:diy_boox/model/business/get_business_tax_response.dart';
import 'package:diy_boox/model/business/get_countrie_list_response.dart';
import 'package:diy_boox/model/business/get_currency_list_response.dart';
import 'package:diy_boox/model/business/get_titles_response.dart';
import 'package:diy_boox/model/file/upload_file_response.dart';
import 'package:diy_boox/repo/business_repository.dart';
import 'package:diy_boox/repo/file_repository.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../core/network/dio/dio_client.dart';

class BusinessProvider extends ChangeNotifier {
  final BusinessRepository repo;
  final FileRepository fileRepo;
  final SharedPreferences sharedPreferences;
  final DioClient dioClient;

  BusinessProvider({
    required this.repo,
    required this.fileRepo,
    required this.sharedPreferences,
    required this.dioClient,
  });

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  List<GetBusinessResponse> _businessList = [];
  List<GetBusinessResponse> get businessList => _businessList;

  GetBusinessResponse? _selectedBusiness;
  GetBusinessResponse get selectedBusiness => _selectedBusiness!;

  List<GetTitlesResponse> _selectedTitle = [];
  List<GetTitlesResponse> get selectedTitle => _selectedTitle;

  List<GetCountrieListResponse> _countriesList = [];
  List<GetCountrieListResponse> get countriesList => _countriesList;

  GetCountrieListResponse? _selectedCountrie;
  GetCountrieListResponse get selectedCountries => _selectedCountrie!;

  GetCurrencyListResponse? _selectedCurrency;
  GetCurrencyListResponse get selectedCurrency => _selectedCurrency!;

  List<GetCurrencyListResponse> _currencyList = [];
  List<GetCurrencyListResponse> get currencyList => _currencyList;

  List<GetBusinessTaxResponse> _businessTaxList = [];
  List<GetBusinessTaxResponse> get businessTaxList => _businessTaxList;

  UploadFileResponseResponse? uploadedFile;

  Future<void> getBusinessList({bool loadOthers = true}) async {
    _isLoading = true;

    ApiResponse response = await repo.businessGet();
    if (loadOthers) {
      await getTitles();
    }

    try {
      if (response.response != null && response.response?.statusCode == 200) {
        _selectedBusiness =
            GetBusinessResponse.fromJson(response.response!.data);
        if (loadOthers) {
          await getCountriesList();
          await getCurrencyList();
        }
      } else {}
    } catch (e) {
      print(e);
    }
    _isLoading = false;
    notifyListeners();
  }

  Future<void> getTitles() async {
    _isLoading = true;

    ApiResponse response = await repo.getTitle();

    if (response.response != null && response.response?.statusCode == 200) {
      _selectedTitle = List<GetTitlesResponse>.from(
          response.response!.data.map((x) => GetTitlesResponse.fromJson(x)));
    } else {}
    _isLoading = false;
    notifyListeners();
  }

  Future<void> getCountriesList() async {
    _isLoading = true;

    ApiResponse response = await repo.getContrieList();

    if (response.response != null && response.response?.statusCode == 200) {
      _countriesList = List<GetCountrieListResponse>.from(response
          .response!.data
          .map((x) => GetCountrieListResponse.fromJson(x)));

      _selectedCountrie = countriesList
          .firstWhere((element) => element.id == selectedBusiness.countryId);
    } else {}
    _isLoading = false;
    notifyListeners();
  }

  Future<void> getCurrencyList() async {
    _isLoading = true;

    ApiResponse response = await repo.getCurrencyList();

    if (response.response != null && response.response?.statusCode == 200) {
      _currencyList = List<GetCurrencyListResponse>.from(response.response!.data
          .map((x) => GetCurrencyListResponse.fromJson(x))).toSet().toList();

      _selectedCurrency = currencyList
          .firstWhere((element) => element.id == selectedBusiness.currencyId);
    } else {}
    _isLoading = false;
    notifyListeners();
  }

  uploadFiles(File file) async {
    _isLoading = true;
    notifyListeners();

    final userId = sharedPreferences.getString(AppConstants.USERID);

    ApiResponse response = await fileRepo.multiFileUpload(file, userId!);

    if (response.response != null && response.response?.statusCode == 200) {
      uploadedFile =
          UploadFileResponseResponse.fromJson(response.response!.data);
    } else {}
    _isLoading = false;
    notifyListeners();
  }

  Future<void> updateUserProfileInfo(Object body) async {
    _isLoading = true;
    notifyListeners();

    ApiResponse response =
        await repo.updateBasicInfo(body, uploadedFile?.fileUrl);

    if (response.response != null && response.response?.statusCode == 200) {
    } else {}
    _isLoading = false;
    notifyListeners();
  }

  updateSelectedType(bool isAutoGenerated) {
    _selectedBusiness!.isInvoiceIdAutoGenerated = isAutoGenerated;
    notifyListeners();
  }

  updateVAT(bool isAutoGenerated) {
    _selectedBusiness!.isVatRegistered = isAutoGenerated;
    notifyListeners();
  }

  updateFooter(String text) {
    _selectedBusiness!.invoiceFooter = text;
    notifyListeners();
  }

  updateEFooter(String text) {
    _selectedBusiness!.estimateFooter = text;
    notifyListeners();
  }

  Future<void> updateEstimateInfo(Object body) async {
    _isLoading = true;

    ApiResponse apiResponse = await repo.updateEstimateInfo(body);
    if (apiResponse.response != null &&
        apiResponse.response!.statusCode == 200) {}

    _isLoading = false;

    notifyListeners();
  }

  Future<void> getBusinessTax() async {
    _isLoading = true;

    ApiResponse apiResponse = await repo.getBusinessTax();
    if (apiResponse.response != null &&
        apiResponse.response!.statusCode == 200) {
      final data = List<dynamic>.from(apiResponse.response!.data)
          .map((e) => GetBusinessTaxResponse.fromJson(e));
      _businessTaxList = data.toList();
    }

    _isLoading = false;

    notifyListeners();
  }

  Future<void> updateInvoiceInfo(Object body) async {
    _isLoading = true;

    ApiResponse apiResponse = await repo.updateInvoiceInfo(body);
    if (apiResponse.response != null &&
        apiResponse.response!.statusCode == 200) {}

    _isLoading = false;

    notifyListeners();
  }
}
