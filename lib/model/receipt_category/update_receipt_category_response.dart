class UpdateReceiptCategoryResponse {
  String universalId;
  int businessId;
  String categoryName;
  bool isDeleted;
  bool isSampleData;

  UpdateReceiptCategoryResponse({
    required this.universalId,
    required this.businessId,
    required this.categoryName,
    required this.isDeleted,
    required this.isSampleData,
  });

  factory UpdateReceiptCategoryResponse.fromJson(Map<String, dynamic> json) => UpdateReceiptCategoryResponse(
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