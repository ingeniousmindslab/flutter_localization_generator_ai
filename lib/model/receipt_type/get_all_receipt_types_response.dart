class GetAllReceiptTypesResponse {
  String universalId;
  int businessId;
  String typeName;
  bool isDeleted;
  bool isSampleData;

  GetAllReceiptTypesResponse({
    required this.universalId,
    required this.businessId,
    required this.typeName,
    required this.isDeleted,
    required this.isSampleData,
  });

  factory GetAllReceiptTypesResponse.fromJson(Map<String, dynamic> json) => GetAllReceiptTypesResponse(
    universalId: json["universalId"],
    businessId: json["businessId"],
    typeName: json["typeName"],
    isDeleted: json["isDeleted"],
    isSampleData: json["isSampleData"],
  );

  Map<String, dynamic> toJson() => {
    "universalId": universalId,
    "businessId": businessId,
    "typeName": typeName,
    "isDeleted": isDeleted,
    "isSampleData": isSampleData,
  };
}