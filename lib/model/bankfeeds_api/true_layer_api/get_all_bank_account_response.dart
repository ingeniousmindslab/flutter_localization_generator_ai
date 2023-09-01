class GetAllBankAccountResponse {
  String universalId;
  String accountId;
  String accountName;
  String accountType;
  String currency;
  String accountNo;
  String branchCode;
  String accountCode;
  String providerId;
  String logoUrl;
  String businessId;
  String createdOn;
  bool isExpired;
  bool isDefault;
  String tenantId;
  int credited;
  int debited;
  int currentBalance;

  GetAllBankAccountResponse({
    required this.universalId,
    required this.accountId,
    required this.accountName,
    required this.accountType,
    required this.currency,
    required this.accountNo,
    required this.branchCode,
    required this.accountCode,
    required this.providerId,
    required this.logoUrl,
    required this.businessId,
    required this.createdOn,
    required this.isExpired,
    required this.isDefault,
    required this.tenantId,
    required this.credited,
    required this.debited,
    required this.currentBalance,
  });

  factory GetAllBankAccountResponse.fromJson(Map<String, dynamic> json) => GetAllBankAccountResponse(
    universalId: json["universalId"],
    accountId: json["accountId"],
    accountName: json["accountName"],
    accountType: json["accountType"],
    currency: json["currency"],
    accountNo: json["accountNo"],
    branchCode: json["branchCode"],
    accountCode: json["accountCode"],
    providerId: json["providerId"],
    logoUrl: json["logoUrl"],
    businessId: json["businessId"],
    createdOn: json["createdOn"],
    isExpired: json["isExpired"],
    isDefault: json["isDefault"],
    tenantId: json["tenantId"],
    credited: json["credited"],
    debited: json["debited"],
    currentBalance: json["currentBalance"],
  );

  Map<String, dynamic> toJson() => {
    "universalId": universalId,
    "accountId": accountId,
    "accountName": accountName,
    "accountType": accountType,
    "currency": currency,
    "accountNo": accountNo,
    "branchCode": branchCode,
    "accountCode": accountCode,
    "providerId": providerId,
    "logoUrl": logoUrl,
    "businessId": businessId,
    "createdOn": createdOn,
    "isExpired": isExpired,
    "isDefault": isDefault,
    "tenantId": tenantId,
    "credited": credited,
    "debited": debited,
    "currentBalance": currentBalance,
  };
}