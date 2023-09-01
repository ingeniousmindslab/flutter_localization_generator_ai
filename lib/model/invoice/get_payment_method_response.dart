class GetPaymentMethodResponse {
  final String universalId;
  final int businessId;
  final String bankName;
  final String accountName;
  final int accountNumber;
  final int sortCode;
  final String createdBy;
  final DateTime createdOn;
  String? updatedBy;
  final DateTime? updatedOn;
  final bool isArchived;
  final bool isDeleted;

  GetPaymentMethodResponse({
    required this.universalId,
    required this.businessId,
    required this.bankName,
    required this.accountName,
    required this.accountNumber,
    required this.sortCode,
    required this.createdBy,
    required this.createdOn,
    this.updatedBy,
    this.updatedOn,
    required this.isArchived,
    required this.isDeleted,
  });

  factory GetPaymentMethodResponse.fromJson(Map<String, dynamic> json) {
    return GetPaymentMethodResponse(
      universalId: json['universalId'],
      businessId: json['businessId'],
      bankName: json['bankName'],
      accountName: json['accountName'],
      accountNumber: json['accountNumber'],
      sortCode: json['sortCode'],
      createdBy: json['createdBy'],
      createdOn: DateTime.parse(json['createdOn']),
      updatedBy: json['updatedBy'],
      updatedOn:
          json['updatedOn'] != null ? DateTime.parse(json['updatedOn']) : null,
      isArchived: json['isArchived'],
      isDeleted: json['isDeleted'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'universalId': universalId,
      'businessId': businessId,
      'bankName': bankName,
      'accountName': accountName,
      'accountNumber': accountNumber,
      'sortCode': sortCode,
      'createdBy': createdBy,
      'createdOn': createdOn.toIso8601String(),
      'updatedBy': updatedBy,
      'updatedOn': updatedOn?.toIso8601String(),
      'isArchived': isArchived,
      'isDeleted': isDeleted,
    };
  }
}
