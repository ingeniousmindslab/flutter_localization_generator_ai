class UpdateReceiptSupplierResponse {
  String universalId;
  int businessId;
  String supplierName;
  bool isDeleted;
  bool isSampleData;

  UpdateReceiptSupplierResponse({
    required this.universalId,
    required this.businessId,
    required this.supplierName,
    required this.isDeleted,
    required this.isSampleData,
  });

  factory UpdateReceiptSupplierResponse.fromJson(Map<String, dynamic> json) => UpdateReceiptSupplierResponse(
    universalId: json["universalId"],
    businessId: json["businessId"],
    supplierName: json["supplierName"],
    isDeleted: json["isDeleted"],
    isSampleData: json["isSampleData"],
  );

  Map<String, dynamic> toJson() => {
    "universalId": universalId,
    "businessId": businessId,
    "supplierName": supplierName,
    "isDeleted": isDeleted,
    "isSampleData": isSampleData,
  };
}