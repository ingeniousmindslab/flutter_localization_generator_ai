class SupplierExpensesReportResponse {
  String universalid;
  String supplierName;
  int totalAmount;
  List<Receipt> receipts;

  SupplierExpensesReportResponse({
    required this.universalid,
    required this.supplierName,
    required this.totalAmount,
    required this.receipts,
  });

  factory SupplierExpensesReportResponse.fromJson(Map<String, dynamic> json) => SupplierExpensesReportResponse(
    universalid: json["universalid"],
    supplierName: json["supplierName"],
    totalAmount: json["totalAmount"],
    receipts: List<Receipt>.from(json["receipts"].map((x) => Receipt.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "universalid": universalid,
    "supplierName": supplierName,
    "totalAmount": totalAmount,
    "receipts": List<dynamic>.from(receipts.map((x) => x.toJson())),
  };
}

class Receipt {
  String receiptId;
  String receiptNo;
  String createdOn;
  String categoryId;
  String categoryName;
  int amount;

  Receipt({
    required this.receiptId,
    required this.receiptNo,
    required this.createdOn,
    required this.categoryId,
    required this.categoryName,
    required this.amount,
  });

  factory Receipt.fromJson(Map<String, dynamic> json) => Receipt(
    receiptId: json["receiptId"],
    receiptNo: json["receiptNo"],
    createdOn: json["createdOn"],
    categoryId: json["categoryId"],
    categoryName: json["categoryName"],
    amount: json["amount"],
  );

  Map<String, dynamic> toJson() => {
    "receiptId": receiptId,
    "receiptNo": receiptNo,
    "createdOn": createdOn,
    "categoryId": categoryId,
    "categoryName": categoryName,
    "amount": amount,
  };
}