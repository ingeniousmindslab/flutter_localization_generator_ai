class CategoryExpensesReportResponse {
  int totalExpenseAmount;
  List<CategoryExpense> categoryExpenses;

  CategoryExpensesReportResponse({
    required this.totalExpenseAmount,
    required this.categoryExpenses,
  });

  factory CategoryExpensesReportResponse.fromJson(Map<String, dynamic> json) => CategoryExpensesReportResponse(
    totalExpenseAmount: json["totalExpenseAmount"],
    categoryExpenses: List<CategoryExpense>.from(json["categoryExpenses"].map((x) => CategoryExpense.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "totalExpenseAmount": totalExpenseAmount,
    "categoryExpenses": List<dynamic>.from(categoryExpenses.map((x) => x.toJson())),
  };
}

class CategoryExpense {
  String universalId;
  String categoryName;
  int totalAmount;
  List<Receipt> receipts;

  CategoryExpense({
    required this.universalId,
    required this.categoryName,
    required this.totalAmount,
    required this.receipts,
  });

  factory CategoryExpense.fromJson(Map<String, dynamic> json) => CategoryExpense(
    universalId: json["universalId"],
    categoryName: json["categoryName"],
    totalAmount: json["totalAmount"],
    receipts: List<Receipt>.from(json["receipts"].map((x) => Receipt.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "universalId": universalId,
    "categoryName": categoryName,
    "totalAmount": totalAmount,
    "receipts": List<dynamic>.from(receipts.map((x) => x.toJson())),
  };
}

class Receipt {
  String receiptId;
  String receiptNo;
  String createdOn;
  String supplierId;
  String supplierName;
  int amount;

  Receipt({
    required this.receiptId,
    required this.receiptNo,
    required this.createdOn,
    required this.supplierId,
    required this.supplierName,
    required this.amount,
  });

  factory Receipt.fromJson(Map<String, dynamic> json) => Receipt(
    receiptId: json["receiptId"],
    receiptNo: json["receiptNo"],
    createdOn: json["createdOn"],
    supplierId: json["supplierId"],
    supplierName: json["supplierName"],
    amount: json["amount"],
  );

  Map<String, dynamic> toJson() => {
    "receiptId": receiptId,
    "receiptNo": receiptNo,
    "createdOn": createdOn,
    "supplierId": supplierId,
    "supplierName": supplierName,
    "amount": amount,
  };
}