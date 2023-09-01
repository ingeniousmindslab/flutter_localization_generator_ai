class CreateReceiptTypesResponse {
  String universalId;
  int businessId;
  String typeName;
  bool isDeleted;
  bool isSampleData;

  CreateReceiptTypesResponse({
    required this.universalId,
    required this.businessId,
    required this.typeName,
    required this.isDeleted,
    required this.isSampleData,
  });

  factory CreateReceiptTypesResponse.fromJson(Map<String, dynamic> json) => CreateReceiptTypesResponse(
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