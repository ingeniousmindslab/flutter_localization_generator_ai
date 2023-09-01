class GetDashboardBankFeedResponse {
  String universalId;
  String accountId;
  String accountName;
  String accountType;
  String currency;
  String accountNo;
  String branchCode;
  String accountCode;
  String? providerId;
  String? logoUrl;
  String? businessId;
  String? createdOn;
  bool isExpired;
  bool isDefault;
  String? tenantId;
  String credited;
  String debited;
  String? currentBalance;

  GetDashboardBankFeedResponse({
    required this.universalId,
    required this.accountId,
    required this.accountName,
    required this.accountType,
    required this.currency,
    required this.accountNo,
    required this.branchCode,
    required this.accountCode,
    this.providerId,
    this.logoUrl,
    this.businessId,
    this.createdOn,
    required this.isExpired,
    required this.isDefault,
    this.tenantId,
    required this.credited,
    required this.debited,
    this.currentBalance,
  });

  factory GetDashboardBankFeedResponse.fromJson(Map<String, dynamic> json) =>
      GetDashboardBankFeedResponse(
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

class GetDashboardBankFeedData {
  List<GetDashboardBankFeedResponse> data;

  GetDashboardBankFeedData({required this.data});

  factory GetDashboardBankFeedData.fromJson(dynamic json) {
    if (json is List) {
      // Response with data (array containing content)
      List<GetDashboardBankFeedResponse> data = json
          .map((item) => GetDashboardBankFeedResponse.fromJson(item))
          .toList();
      return GetDashboardBankFeedData(data: data);
    } else {
      // Response with empty array or other unexpected data
      return GetDashboardBankFeedData(data: []);
    }
  }

  Map<String, dynamic> toJson() {
    return {
      "data": data.map((item) => item.toJson()).toList(),
    };
  }
}
