class CreateBankFeedInvoiceResponse {
  int transactionAmount;
  String invoiceDate;
  Transaction transaction;
  List<String> invoiceFiles;

  CreateBankFeedInvoiceResponse({
    required this.transactionAmount,
    required this.invoiceDate,
    required this.transaction,
    required this.invoiceFiles,
  });

  factory CreateBankFeedInvoiceResponse.fromJson(Map<String, dynamic> json) => CreateBankFeedInvoiceResponse(
    transactionAmount: json["transactionAmount"],
    invoiceDate: json["invoiceDate"],
    transaction: Transaction.fromJson(json["transaction"]),
    invoiceFiles: List<String>.from(json["invoiceFiles"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "transactionAmount": transactionAmount,
    "invoiceDate": invoiceDate,
    "transaction": transaction.toJson(),
    "invoiceFiles": List<dynamic>.from(invoiceFiles.map((x) => x)),
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