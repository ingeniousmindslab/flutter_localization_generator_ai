class ProfitCategoryExpenseReportResponse {
  int totalExpenseAmount;
  List<Category> categories;

  ProfitCategoryExpenseReportResponse({
    required this.totalExpenseAmount,
    required this.categories,
  });

  factory ProfitCategoryExpenseReportResponse.fromJson(Map<String, dynamic> json) => ProfitCategoryExpenseReportResponse(
    totalExpenseAmount: json["totalExpenseAmount"],
    categories: List<Category>.from(json["categories"].map((x) => Category.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "totalExpenseAmount": totalExpenseAmount,
    "categories": List<dynamic>.from(categories.map((x) => x.toJson())),
  };
}

class Category {
  String universalId;
  String categoryName;
  int amount;

  Category({
    required this.universalId,
    required this.categoryName,
    required this.amount,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
    universalId: json["universalId"],
    categoryName: json["categoryName"],
    amount: json["amount"],
  );

  Map<String, dynamic> toJson() => {
    "universalId": universalId,
    "categoryName": categoryName,
    "amount": amount,
  };
}