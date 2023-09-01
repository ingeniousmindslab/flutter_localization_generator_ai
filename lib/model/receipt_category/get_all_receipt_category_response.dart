class GetAllReceiptCategoryResponse {
  String universalId;
  int businessId;
  String categoryName;
  bool isDeleted;
  bool isSampleData;

  GetAllReceiptCategoryResponse({
    required this.universalId,
    required this.businessId,
    required this.categoryName,
    required this.isDeleted,
    required this.isSampleData,
  });

  factory GetAllReceiptCategoryResponse.fromJson(Map<String, dynamic> json) => GetAllReceiptCategoryResponse(
    universalId: json["universalId"],
    businessId: json["businessId"],
    categoryName: json["categoryName"],
    isDeleted: json["isDeleted"],
    isSampleData: json["isSampleData"],
  );

  Map<String, dynamic> toJson() => {
    "universalId": universalId,
    "businessId": businessId,
    "categoryName": categoryName,
    "isDeleted": isDeleted,
    "isSampleData": isSampleData,
  };
}