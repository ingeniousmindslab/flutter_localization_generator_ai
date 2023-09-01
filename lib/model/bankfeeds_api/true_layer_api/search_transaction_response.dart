class SearchTransactionResponse {
  String receiptDate;
  String supplierName;
  String categoryName;
  int amount;

  SearchTransactionResponse({
    required this.receiptDate,
    required this.supplierName,
    required this.categoryName,
    required this.amount,
  });

  factory SearchTransactionResponse.fromJson(Map<String, dynamic> json) => SearchTransactionResponse(
    receiptDate: json["receiptDate"],
    supplierName: json["supplierName"],
    categoryName: json["categoryName"],
    amount: json["amount"],
  );

  Map<String, dynamic> toJson() => {
    "receiptDate": receiptDate,
    "supplierName": supplierName,
    "categoryName": categoryName,
    "amount": amount,
  };
}