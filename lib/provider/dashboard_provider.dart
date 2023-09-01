import 'package:diy_boox/core/network/dio/dio_client.dart';
import 'package:diy_boox/model/api_response.dart';
import 'package:diy_boox/model/dashboard/get_invoice_history_rsponse.dart';
import 'package:diy_boox/repo/dashboard_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../model/bankfeeds_api/dashboard_bankfeeds/get_all_bank_dashboard_response.dart';
import '../model/bankfeeds_api/dashboard_bankfeeds/get_all_bank_dashboard_transactions_response.dart';
import '../model/dashboard/get_dashboard_info_response.dart';
import '../model/dashboard/get_top_earning_by_clients_response.dart';
import '../model/dashboard/get_top_expenses_by_categories_response.dart';

class DashboardProvider extends ChangeNotifier {
  final DashboardRepository repo;
  final SharedPreferences sharedPreferences;
  final DioClient dioClient;

  DashboardProvider({
    required this.repo,
    required this.sharedPreferences,
    required this.dioClient,
  });

  String _errorMessage = '';
  String get errorMessage => _errorMessage;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Summary? _summary;
  List<LineChart> _lineCharts = [];

  Summary? get summary => _summary;
  List<LineChart> get lineCharts => _lineCharts;

  List<GetTopEarningByClientsResponse> _topEarning = [];
  List<GetTopEarningByClientsResponse> get topEarning => _topEarning;

  List<GetTopExpensesByCategoriesResponse> _topExpenses = [];
  List<GetTopExpensesByCategoriesResponse> get topExpenses => _topExpenses;

  List<GetDashboardBankFeedResponse> _bankDashboard = [];
  List<GetDashboardBankFeedResponse> get bankDashboard => _bankDashboard;

  List<GetAllBankDashboardTransactionResponse> _allBankDashboardTransactions =
      [];
  List<GetAllBankDashboardTransactionResponse>
      get allBankDashboardTransactions => _allBankDashboardTransactions;

  String? _transactionsSelectedValue;
  String? get transactionsSelectedValue => _transactionsSelectedValue;

  String? _universalIdValue;
  String? get universalIdValue => _universalIdValue;

  set transactionsSelectedValue(String? value) {
    _transactionsSelectedValue = value;
    notifyListeners();
  }

  set universalId(String? value) {
    _universalIdValue = value;
    notifyListeners();
  }

  Future<void> getInvoiceHistory(String filter) async {
    _isLoading = true;

    notifyListeners();

    ApiResponse apiResponse = await repo.getInvoiceHistory(filter);

    late GetInvoiceHistoryResponse data;

    if (apiResponse.response != null &&
        apiResponse.response?.statusCode == 200) {
      data = GetInvoiceHistoryResponse.fromJson(apiResponse.response?.data);
    } else {}

    _summary = data.summary;

    _lineCharts = data.lineCharts;

    _isLoading = false;

    notifyListeners();
  }

  Future<void> getDashboardInfo(String filter) async {
    _isLoading = true;

    notifyListeners();

    ApiResponse apiResponse = await repo.getDashboardInfo(filter);

    late GetDashboardInfoResponse data;

    if (apiResponse.response != null &&
        apiResponse.response?.statusCode == 200) {
      data = GetDashboardInfoResponse.fromJson(apiResponse.response?.data);
    } else {}

    _isLoading = false;

    notifyListeners();
  }

  Future<void> getTopEarningByClients(String filter) async {
    _isLoading = true;

    notifyListeners();

    ApiResponse apiResponse = await repo.getTopEarningByClients(filter);

    late GetTopEarningByClientsData data;

    if (apiResponse.response != null &&
        apiResponse.response?.statusCode == 200) {
      data = GetTopEarningByClientsData.fromJson(apiResponse.response?.data);
    } else {}

    _topEarning = data.data;

    _isLoading = false;

    notifyListeners();
  }

  Future<void> getTopExpensesBycategories(String filter) async {
    _isLoading = true;

    notifyListeners();

    ApiResponse apiResponse = await repo.getTopExpensesBycategories(filter);

    late GetTopExpensesByCategoriesData data;

    if (apiResponse.response != null &&
        apiResponse.response?.statusCode == 200) {
      data =
          GetTopExpensesByCategoriesData.fromJson(apiResponse.response?.data);
    } else {}

    _topExpenses = data.data;

    _isLoading = false;

    notifyListeners();
  }

  Future<void> getAllBankDashboard() async {
    _isLoading = true;

    notifyListeners();

    ApiResponse apiResponse = await repo.getAllBankDashboard();

    late GetDashboardBankFeedData data;

    if (apiResponse.response != null &&
        apiResponse.response?.statusCode == 200) {
      data = GetDashboardBankFeedData.fromJson(apiResponse.response?.data);
    } else {}

    _bankDashboard = data.data;

    if (_bankDashboard.isNotEmpty) {
      _transactionsSelectedValue = _bankDashboard.first.accountName;
      _universalIdValue = _bankDashboard.first.universalId;
      getDashboadBankFeed(_bankDashboard.first.universalId, 1);
    }

    _isLoading = false;

    notifyListeners();
  }

  Future<void> getDashboadBankFeed(String bankID, int filter) async {
    _isLoading = true;

    _allBankDashboardTransactions = [];

    notifyListeners();

    ApiResponse apiResponse = await repo.getDashboardBankFeed(bankID, filter);

    print(bankID);
    print(filter);
    print('jakfjfladsf');

    late GetAllBankDashboardTransactionData data;

    if (apiResponse.response != null &&
        apiResponse.response?.statusCode == 200) {
      data = GetAllBankDashboardTransactionData.fromJson(
          apiResponse.response?.data);
    } else {}

    _allBankDashboardTransactions = data.data;

    _isLoading = false;

    notifyListeners();
  }
}
