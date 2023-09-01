class GetTransactionByIdResponse {
  String id;
  String universalId;
  String bankDetailId;
  String transactionId;
  String transactionType;
  String transactionCategory;
  int amount;
  String transactionDate;
  String description;
  String currency;
  int currentAmount;
  String tenantId;
  String businessId;
  String bankAccountId;
  String bankAccountName;

  GetTransactionByIdResponse({
    required this.id,
    required this.universalId,
    required this.bankDetailId,
    required this.transactionId,
    required this.transactionType,
    required this.transactionCategory,
    required this.amount,
    required this.transactionDate,
    required this.description,
    required this.currency,
    required this.currentAmount,
    required this.tenantId,
    required this.businessId,
    required this.bankAccountId,
    required this.bankAccountName,
  });

  factory GetTransactionByIdResponse.fromJson(Map<String, dynamic> json) => GetTransactionByIdResponse(
    id: json["id"],
    universalId: json["universalId"],
    bankDetailId: json["bankDetailId"],
    transactionId: json["transactionId"],
    transactionType: json["transactionType"],
    transactionCategory: json["transactionCategory"],
    amount: json["amount"],
    transactionDate: json["transactionDate"],
    description: json["description"],
    currency: json["currency"],
    currentAmount: json["currentAmount"],
    tenantId: json["tenantId"],
    businessId: json["businessId"],
    bankAccountId: json["bankAccountId"],
    bankAccountName: json["bankAccountName"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "universalId": universalId,
    "bankDetailId": bankDetailId,
    "transactionId": transactionId,
    "transactionType": transactionType,
    "transactionCategory": transactionCategory,
    "amount": amount,
    "transactionDate": transactionDate,
    "description": description,
    "currency": currency,
    "currentAmount": currentAmount,
    "tenantId": tenantId,
    "businessId": businessId,
    "bankAccountId": bankAccountId,
    "bankAccountName": bankAccountName,
  };
}