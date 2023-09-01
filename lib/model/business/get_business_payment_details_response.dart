class GetBusinessPaymentDetailsResponse {
  String universalId;
  int businessId;
  String bankName;
  String accountName;
  double accountNumber;
  double sortCode;
  String createdBy;
  String createdOn;
  String updatedBy;
  String updatedOn;
  bool isArchived;
  bool isDeleted;

  GetBusinessPaymentDetailsResponse({
    required this.universalId,
    required this.businessId,
    required this.bankName,
    required this.accountName,
    required this.accountNumber,
    required this.sortCode,
    required this.createdBy,
    required this.createdOn,
    required this.updatedBy,
    required this.updatedOn,
    required this.isArchived,
    required this.isDeleted,
  });

  factory GetBusinessPaymentDetailsResponse.fromJson(Map<String, dynamic> json) => GetBusinessPaymentDetailsResponse(
    universalId: json["universalId"],
    businessId: json["businessId"],
    bankName: json["bankName"],
    accountName: json["accountName"],
    accountNumber: json["accountNumber"]?.toDouble(),
    sortCode: json["sortCode"]?.toDouble(),
    createdBy: json["createdBy"],
    createdOn: json["createdOn"],
    updatedBy: json["updatedBy"],
    updatedOn: json["updatedOn"],
    isArchived: json["isArchived"],
    isDeleted: json["isDeleted"],
  );

  Map<String, dynamic> toJson() => {
    "universalId": universalId,
    "businessId": businessId,
    "bankName": bankName,
    "accountName": accountName,
    "accountNumber": accountNumber,
    "sortCode": sortCode,
    "createdBy": createdBy,
    "createdOn": createdOn,
    "updatedBy": updatedBy,
    "updatedOn": updatedOn,
    "isArchived": isArchived,
    "isDeleted": isDeleted,
  };
}