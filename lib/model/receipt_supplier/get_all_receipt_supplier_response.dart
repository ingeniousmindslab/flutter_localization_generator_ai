class GetAllReceiptSupplierResponse {
  String universalId;
  int businessId;
  String supplierName;
  bool isDeleted;
  bool isSampleData;

  GetAllReceiptSupplierResponse({
    required this.universalId,
    required this.businessId,
    required this.supplierName,
    required this.isDeleted,
    required this.isSampleData,
  });

  factory GetAllReceiptSupplierResponse.fromJson(Map<String, dynamic> json) => GetAllReceiptSupplierResponse(
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