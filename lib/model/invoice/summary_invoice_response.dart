class SummaryInvoiceResponse {
  int totalClients;
  int totalInvoices;
  int totalInvoiceAmount;
  int totalInvoiceReceivedAmount;
  int totalInvoiceDueAmount;

  SummaryInvoiceResponse({
    required this.totalClients,
    required this.totalInvoices,
    required this.totalInvoiceAmount,
    required this.totalInvoiceReceivedAmount,
    required this.totalInvoiceDueAmount,
  });

  factory SummaryInvoiceResponse.fromJson(Map<String, dynamic> json) => SummaryInvoiceResponse(
    totalClients: json["totalClients"],
    totalInvoices: json["totalInvoices"],
    totalInvoiceAmount: json["totalInvoiceAmount"],
    totalInvoiceReceivedAmount: json["totalInvoiceReceivedAmount"],
    totalInvoiceDueAmount: json["totalInvoiceDueAmount"],
  );

  Map<String, dynamic> toJson() => {
    "totalClients": totalClients,
    "totalInvoices": totalInvoices,
    "totalInvoiceAmount": totalInvoiceAmount,
    "totalInvoiceReceivedAmount": totalInvoiceReceivedAmount,
    "totalInvoiceDueAmount": totalInvoiceDueAmount,
  };
}