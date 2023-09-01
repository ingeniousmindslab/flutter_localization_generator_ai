import 'package:diy_boox/model/client/excute_client_response.dart';
import 'package:diy_boox/model/client/get_all_client_response.dart';
import 'package:diy_boox/repo/client_repository.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../core/network/dio/dio_client.dart';
import '../model/api_response.dart';

class ClientProvider extends ChangeNotifier {
  final ClientRepository repo;
  final SharedPreferences sharedPreferences;
  final DioClient dioClient;

  ClientProvider({
    required this.repo,
    required this.sharedPreferences,
    required this.dioClient,
  });

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  List<ExecuteClientResponse> _clientsList = [];
  List<ExecuteClientResponse> _clientListTemp = [];

  List<ExecuteClientResponse> get clientList => _clientsList;
  List<ExecuteClientResponse> get clientListTemp => _clientListTemp;

  List<GetAllClientResponse> _allClientsList = [];
  List<GetAllClientResponse> get allClientList => _allClientsList;

  Future<void> getAllClients(int filter, {String search = ""}) async {
    _isLoading = true;

    ApiResponse apiResponse =
        await repo.executeClientList(filter, search: search);

    if (apiResponse.response != null &&
        apiResponse.response?.statusCode == 200) {
      final models = (apiResponse.response?.data as List)
          .map((e) => ExecuteClientResponse.fromJson(e))
          .toList();
      _clientsList = models;
      _clientListTemp = models;
    } else {}

    _isLoading = false;

    notifyListeners();
  }

  Future<void> getAllClients2() async {
    _isLoading = true;

    ApiResponse apiResponse = await repo.getAllClient();

    if (apiResponse.response != null &&
        apiResponse.response?.statusCode == 200) {
      final models = (apiResponse.response?.data as List)
          .map((e) => GetAllClientResponse.fromJson(e))
          .toList();
      _allClientsList = models;
    } else {}

    _isLoading = false;

    notifyListeners();
  }

  Future<void> deleteClient(String uId) async {
    _isLoading = true;

    ApiResponse apiResponse = await repo.deleteClients(uId);

    if (apiResponse.response != null &&
        apiResponse.response?.statusCode == 200) {
      _clientsList.removeWhere((element) => element.universalId == uId);
    } else {}

    _isLoading = false;

    notifyListeners();
  }

  searchByInv(String text) async {
    _isLoading = true;
    notifyListeners();
    await Future.delayed(const Duration(seconds: 1));
    if (text.isEmpty) {
      _clientsList = _clientListTemp;
    } else {
      _clientsList = _clientListTemp
          .where((element) =>
              element.name.toLowerCase().contains(text.toLowerCase()))
          .toList();
    }

    _isLoading = false;
    notifyListeners();
  }

  ExecuteClientResponse? _selectedClient;
  ExecuteClientResponse? get selectedClient => _selectedClient;

  updateClient(ExecuteClientResponse client) {
    _selectedClient = client;
    notifyListeners();
  }
}
