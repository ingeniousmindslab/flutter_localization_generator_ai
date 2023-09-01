class ClientSalesReportResponse {
  int totalSalesAmount;
  int totalSalesReceivedAmount;
  int totalSalestDueAmount;
  List<ClientSale> clientSales;

  ClientSalesReportResponse({
    required this.totalSalesAmount,
    required this.totalSalesReceivedAmount,
    required this.totalSalestDueAmount,
    required this.clientSales,
  });

  factory ClientSalesReportResponse.fromJson(Map<String, dynamic> json) => ClientSalesReportResponse(
    totalSalesAmount: json["totalSalesAmount"],
    totalSalesReceivedAmount: json["totalSalesReceivedAmount"],
    totalSalestDueAmount: json["totalSalestDueAmount"],
    clientSales: List<ClientSale>.from(json["clientSales"].map((x) => ClientSale.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "totalSalesAmount": totalSalesAmount,
    "totalSalesReceivedAmount": totalSalesReceivedAmount,
    "totalSalestDueAmount": totalSalestDueAmount,
    "clientSales": List<dynamic>.from(clientSales.map((x) => x.toJson())),
  };
}

class ClientSale {
  String universalId;
  String clientFullName;
  int totalAmount;
  int totalReceivedAmount;
  int totalAmountDueAmount;
  List<Invoice> invoices;

  ClientSale({
    required this.universalId,
    required this.clientFullName,
    required this.totalAmount,
    required this.totalReceivedAmount,
    required this.totalAmountDueAmount,
    required this.invoices,
  });

  factory ClientSale.fromJson(Map<String, dynamic> json) => ClientSale(
    universalId: json["universalId"],
    clientFullName: json["clientFullName"],
    totalAmount: json["totalAmount"],
    totalReceivedAmount: json["totalReceivedAmount"],
    totalAmountDueAmount: json["totalAmountDueAmount"],
    invoices: List<Invoice>.from(json["invoices"].map((x) => Invoice.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "universalId": universalId,
    "clientFullName": clientFullName,
    "totalAmount": totalAmount,
    "totalReceivedAmount": totalReceivedAmount,
    "totalAmountDueAmount": totalAmountDueAmount,
    "invoices": List<dynamic>.from(invoices.map((x) => x.toJson())),
  };
}

class Invoice {
  String invoiceId;
  String invoiceNo;
  String createdOn;
  int amount;
  int paidAmount;
  int dueAmount;

  Invoice({
    required this.invoiceId,
    required this.invoiceNo,
    required this.createdOn,
    required this.amount,
    required this.paidAmount,
    required this.dueAmount,
  });

  factory Invoice.fromJson(Map<String, dynamic> json) => Invoice(
    invoiceId: json["invoiceId"],
    invoiceNo: json["invoiceNo"],
    createdOn: json["createdOn"],
    amount: json["amount"],
    paidAmount: json["paidAmount"],
    dueAmount: json["dueAmount"],
  );

  Map<String, dynamic> toJson() => {
    "invoiceId": invoiceId,
    "invoiceNo": invoiceNo,
    "createdOn": createdOn,
    "amount": amount,
    "paidAmount": paidAmount,
    "dueAmount": dueAmount,
  };
}