class GetSalesSummaryResponse {
  int totalClient;
  double totalRaisedAmount;
  double totalPaidAmount;
  double totalDueAmount;
  int totalItems;

  GetSalesSummaryResponse({
    required this.totalClient,
    required this.totalRaisedAmount,
    required this.totalPaidAmount,
    required this.totalDueAmount,
    required this.totalItems,
  });

  factory GetSalesSummaryResponse.fromJson(Map<String, dynamic> json) =>
      GetSalesSummaryResponse(
        totalClient: json["totalClient"],
        totalRaisedAmount: json["totalRaisedAmount"],
        totalPaidAmount: json["totalPaidAmount"],
        totalDueAmount: json["totalDueAmount"],
        totalItems: json["totalItems"],
      );

  Map<String, dynamic> toJson() => {
        "totalClient": totalClient,
        "totalRaisedAmount": totalRaisedAmount,
        "totalPaidAmount": totalPaidAmount,
        "totalDueAmount": totalDueAmount,
        "totalItems": totalItems,
      };
}
