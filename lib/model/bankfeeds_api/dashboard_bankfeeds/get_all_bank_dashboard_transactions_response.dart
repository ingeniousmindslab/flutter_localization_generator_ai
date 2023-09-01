class GetAllBankDashboardTransactionResponse {
  int? id;
  String? credit;
  String? debit;
  int? year;
  String? month;
  int? dateFilter;

  GetAllBankDashboardTransactionResponse({
    this.id,
    this.credit,
    this.debit,
    this.year,
    this.month,
    this.dateFilter,
  });

  factory GetAllBankDashboardTransactionResponse.fromJson(
          Map<String, dynamic> json) =>
      GetAllBankDashboardTransactionResponse(
        id: json["id"],
        credit: json["credit"],
        debit: json["debit"],
        year: json["year"],
        month: json["month"],
        dateFilter: json["dateFilter"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "credit": credit,
        "debit": debit,
        "year": year,
        "month": month,
        "dateFilter": dateFilter,
      };
}

class GetAllBankDashboardTransactionData {
  List<GetAllBankDashboardTransactionResponse> data;

  GetAllBankDashboardTransactionData({required this.data});

  factory GetAllBankDashboardTransactionData.fromJson(dynamic json) {
    if (json is List) {
      // Response with data (array containing content)
      List<GetAllBankDashboardTransactionResponse> data = json
          .map((item) => GetAllBankDashboardTransactionResponse.fromJson(item))
          .toList();
      return GetAllBankDashboardTransactionData(data: data);
    } else {
      // Response with empty array or other unexpected data
      return GetAllBankDashboardTransactionData(data: []);
    }
  }

  Map<String, dynamic> toJson() {
    return {
      "data": data.map((item) => item.toJson()).toList(),
    };
  }
}
