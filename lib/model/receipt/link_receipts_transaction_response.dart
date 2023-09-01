class LinkReceiptsTransactionResponse {
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

  LinkReceiptsTransactionResponse({
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

  factory LinkReceiptsTransactionResponse.fromJson(Map<String, dynamic> json) => LinkReceiptsTransactionResponse(
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