import 'package:diy_boox/model/api_response.dart';
import 'package:diy_boox/model/estimates/execute_estimate_list_response.dart';
import 'package:diy_boox/model/estimates/get_estimates_response.dart';
import 'package:diy_boox/repo/estimates_repository.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../core/network/dio/dio_client.dart';

class EstimatesProvider extends ChangeNotifier {
  final EstimatesRepository repo;
  final SharedPreferences sharedPreferences;
  final DioClient dioClient;

  EstimatesProvider({
    required this.repo,
    required this.sharedPreferences,
    required this.dioClient,
  });

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  List<ExecuteEstimateListResponse> _estimatesList = [];
  List<ExecuteEstimateListResponse> get estimatesList => _estimatesList;
  ExecuteEstimateListResponse? estimatesListTemp;
  // List<GetEstimatesResponse> get estimatesList => _estimatesList;

  Future<void> getEstimatesList(int filter, {String search = ""}) async {
    _isLoading = true;

    if (search.isNotEmpty || filter > 0) {
      notifyListeners();
    }

    ApiResponse apiResponse =
        await repo.executeEstimateList(filter, search: search);

    if (apiResponse.response != null &&
        apiResponse.response!.statusCode == 200) {
      _estimatesList = List<dynamic>.from(apiResponse.response!.data["data"])
          .map((e) => ExecuteEstimateListResponse.fromJson(e))
          .toList();

      // estimatesListTemp = updatedInvoicesList;
    } else {
      // Handle error cases if needed
    }
    _isLoading = false;
    notifyListeners();
  }

  Future<void> deleteEstimate(String universalId) async {
    _isLoading = true;

    ApiResponse apiResponse = await repo.deleteEstimates(universalId);
    if (apiResponse.response != null &&
        apiResponse.response!.statusCode == 200) {
      // _estimatesList
      //     .removeWhere((element) => element.universalId == universalId);
    }

    _isLoading = false;
    notifyListeners();
  }

  searchByInv(String text) async {
    _isLoading = true;
    notifyListeners();
    await Future.delayed(const Duration(seconds: 1));
    if (text.isEmpty) {
      // _estimatesList = estimatesListTemp;
    } else {
      // _estimatesList = estimatesListTemp
      //     .where((element) =>
      //         element.estimateId.toLowerCase().contains(text.toLowerCase()))
      //     .toList();
    }

    _isLoading = false;
    notifyListeners();
  }
}
