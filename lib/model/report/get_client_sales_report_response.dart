class GetClientSalesReportResponse {
  List<ClientsResponse> clientSales;

  double totalSalesAmount, totalSalesReceivedAmount, totalSalestDueAmount;
  int dateFilter;

  GetClientSalesReportResponse(
      {required this.clientSales,
      required this.totalSalesAmount,
      required this.totalSalesReceivedAmount,
      required this.totalSalestDueAmount,
      required this.dateFilter});

  factory GetClientSalesReportResponse.fromJson(Map<String, dynamic> json) =>
      GetClientSalesReportResponse(
          clientSales: json['clientSales'] != null
              ? (json['clientSales'] as List)
                  .map((i) => ClientsResponse.fromJson(i))
                  .toList()
              : [],
          totalSalesAmount: json['totalSalesAmount'],
          totalSalesReceivedAmount: json['totalSalesReceivedAmount'],
          totalSalestDueAmount: json['totalSalestDueAmount'],
          dateFilter: json['dateFilter']);

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['clientSales'] = clientSales.map((v) => v.toJson()).toList();
    data['totalSalesAmount'] = totalSalesAmount;
    data['totalSalesReceivedAmount'] = totalSalesReceivedAmount;
    data['totalSalestDueAmount'] = totalSalestDueAmount;
    data['dateFilter'] = dateFilter;
    return data;
  }
}

class ClientsResponse {
  String clientFullName, universalId;
  double totalAmount, totalAmountDueAmount, totalReceivedAmount;
  List<InvoicesRes> invoices;

  ClientsResponse(
      {required this.clientFullName,
      required this.totalAmount,
      required this.universalId,
      required this.totalAmountDueAmount,
      required this.invoices,
      required this.totalReceivedAmount});

  factory ClientsResponse.fromJson(Map<String, dynamic> json) =>
      ClientsResponse(
          universalId: json['universalId'],
          clientFullName: json['clientFullName'],
          totalAmount: json['totalAmount'],
          totalAmountDueAmount: json['totalAmountDueAmount'],
          invoices: json['invoices'] != null
              ? (json['invoices'] as List)
                  .map((i) => InvoicesRes.fromJson(i))
                  .toList()
              : [],
          totalReceivedAmount: json['totalReceivedAmount']);

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['clientFullName'] = clientFullName;
    data['universalId'] = universalId;
    data['totalAmount'] = totalAmount;
    data['totalAmountDueAmount'] = totalAmountDueAmount;
    data['invoices'] = invoices.map((v) => v.toJson()).toList();
    data['totalReceivedAmount'] = totalReceivedAmount;
    return data;
  }
}

class InvoicesRes {
  String invoiceNo, invoiceId;
  double amount, dueAmount, paidAmount;

  InvoicesRes(
      {required this.invoiceNo,
      required this.amount,
      required this.dueAmount,
      required this.invoiceId,
      required this.paidAmount});

  factory InvoicesRes.fromJson(Map<String, dynamic> json) => InvoicesRes(
      invoiceNo: json['invoiceNo'],
      amount: json['amount'],
      dueAmount: json['dueAmount'],
      invoiceId: json['invoiceId'],
      paidAmount: json['paidAmount']);

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['invoiceNo'] = invoiceNo;
    data['amount'] = amount;
    data['dueAmount'] = dueAmount;

    data['invoiceId'] = invoiceId;
    data['paidAmount'] = paidAmount;
    return data;
  }
}
