class ProfitAndSalesSummaryResponse {
  int totalInvoices;
  int totalReceipts;
  int profitAmount;

  ProfitAndSalesSummaryResponse({
    required this.totalInvoices,
    required this.totalReceipts,
    required this.profitAmount,
  });

  factory ProfitAndSalesSummaryResponse.fromJson(Map<String, dynamic> json) => ProfitAndSalesSummaryResponse(
    totalInvoices: json["totalInvoices"],
    totalReceipts: json["totalReceipts"],
    profitAmount: json["profitAmount"],
  );

  Map<String, dynamic> toJson() => {
    "totalInvoices": totalInvoices,
    "totalReceipts": totalReceipts,
    "profitAmount": profitAmount,
  };
}