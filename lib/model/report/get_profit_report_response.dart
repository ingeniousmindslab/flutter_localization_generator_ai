class GetProfitReportResponse {
  double profitAmount;
  int totalInvoices;
  int totalReceipts;
  int dateFilter;

  GetProfitReportResponse({
    required this.profitAmount,
    required this.totalInvoices,
    required this.totalReceipts,
    this.dateFilter = 0,
  });

  factory GetProfitReportResponse.fromJson(Map<String, dynamic> json) =>
      GetProfitReportResponse(
        profitAmount: json["profitAmount"],
        totalInvoices: json["totalInvoices"],
        totalReceipts: json["totalReceipts"],
        dateFilter: json["dateFilter"],
      );

  Map<String, dynamic> toJson() => {
        "profitAmount": profitAmount,
        "totalInvoices": totalInvoices,
        "totalReceipts": totalReceipts,
        "dateFilter": dateFilter,
      };
}

class GetClientSaleReportResponse {
  List<Client> clients;
  int totalCustomers;
  double totalProfitAmount;
  int dateFilter;

  GetClientSaleReportResponse({
    required this.clients,
    this.totalCustomers = 0,
    this.totalProfitAmount = 0,
    this.dateFilter = 0,
  });

  factory GetClientSaleReportResponse.fromJson(Map<String, dynamic> json) =>
      GetClientSaleReportResponse(
        clients:
            List<Client>.from(json["clients"].map((x) => Client.fromJson(x))),
        totalCustomers: json["totalCustomers"],
        totalProfitAmount: json["totalProfitAmount"],
        dateFilter: json["dateFilter"],
      );

  Map<String, dynamic> toJson() => {
        "clients": List<dynamic>.from(clients.map((x) => x.toJson())),
        "totalCustomers": totalCustomers,
        "totalProfitAmount": totalProfitAmount,
        "dateFilter": dateFilter,
      };
}

class Client {
  String universalId, cLientFullName;
  double amount;
  // List<dynamic> invoices;

  Client({
    required this.universalId,
    required this.cLientFullName,
    required this.amount,
    // required this.invoices,
  });

  factory Client.fromJson(Map<String, dynamic> json) => Client(
        universalId: json["universalId"],
        cLientFullName: json["cLientFullName"],
        amount: json["amount"],

        // invoices: List<dynamic>.from(json["invoices"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "universalId": universalId,
        "cLientFullName": cLientFullName,
        "amount": amount,
      };
}
