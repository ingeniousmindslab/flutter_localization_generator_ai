class ExpensesSummaryReportResponse {
  int totalSuppliers;
  int totalCategories;
  int totalAmount;

  ExpensesSummaryReportResponse({
    required this.totalSuppliers,
    required this.totalCategories,
    required this.totalAmount,
  });

  factory ExpensesSummaryReportResponse.fromJson(Map<String, dynamic> json) => ExpensesSummaryReportResponse(
    totalSuppliers: json["totalSuppliers"],
    totalCategories: json["totalCategories"],
    totalAmount: json["totalAmount"],
  );

  Map<String, dynamic> toJson() => {
    "totalSuppliers": totalSuppliers,
    "totalCategories": totalCategories,
    "totalAmount": totalAmount,
  };
}