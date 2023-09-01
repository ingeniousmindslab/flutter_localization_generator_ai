class CreateBankFeedReceiptsResponse {
  String receiptSupplierId;
  String receiptCategoryId;
  int transactionAmount;
  String receiptDate;
  Transaction transaction;
  List<String> receiptFiles;

  CreateBankFeedReceiptsResponse({
    required this.receiptSupplierId,
    required this.receiptCategoryId,
    required this.transactionAmount,
    required this.receiptDate,
    required this.transaction,
    required this.receiptFiles,
  });

  factory CreateBankFeedReceiptsResponse.fromJson(Map<String, dynamic> json) => CreateBankFeedReceiptsResponse(
    receiptSupplierId: json["receiptSupplierId"],
    receiptCategoryId: json["receiptCategoryId"],
    transactionAmount: json["transactionAmount"],
    receiptDate: json["receiptDate"],
    transaction: Transaction.fromJson(json["transaction"]),
    receiptFiles: List<String>.from(json["receiptFiles"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "receiptSupplierId": receiptSupplierId,
    "receiptCategoryId": receiptCategoryId,
    "transactionAmount": transactionAmount,
    "receiptDate": receiptDate,
    "transaction": transaction.toJson(),
    "receiptFiles": List<dynamic>.from(receiptFiles.map((x) => x)),
  };
}

class Transaction {
  String universalId;
  String receiptId;
  String bankDetailId;
  String bankTransactionId;
  String transactionType;
  String accountName;
  String transactionDescription;
  String transactionCategory;
  int transactionAmount;
  String transactionDate;

  Transaction({
    required this.universalId,
    required this.receiptId,
    required this.bankDetailId,
    required this.bankTransactionId,
    required this.transactionType,
    required this.accountName,
    required this.transactionDescription,
    required this.transactionCategory,
    required this.transactionAmount,
    required this.transactionDate,
  });

  factory Transaction.fromJson(Map<String, dynamic> json) => Transaction(
    universalId: json["universalId"],
    receiptId: json["receiptId"],
    bankDetailId: json["bankDetailId"],
    bankTransactionId: json["bankTransactionId"],
    transactionType: json["transactionType"],
    accountName: json["accountName"],
    transactionDescription: json["transactionDescription"],
    transactionCategory: json["transactionCategory"],
    transactionAmount: json["transactionAmount"],
    transactionDate: json["transactionDate"],
  );

  Map<String, dynamic> toJson() => {
    "universalId": universalId,
    "receiptId": receiptId,
    "bankDetailId": bankDetailId,
    "bankTransactionId": bankTransactionId,
    "transactionType": transactionType,
    "accountName": accountName,
    "transactionDescription": transactionDescription,
    "transactionCategory": transactionCategory,
    "transactionAmount": transactionAmount,
    "transactionDate": transactionDate,
  };
}