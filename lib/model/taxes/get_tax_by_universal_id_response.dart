class GetTaxByUniversalIdResponse {
  String universalId;
  String name;
  int rate;
  bool isDefault;
  bool isCompound;
  bool isArchived;
  bool isDeleted;
  int totalRecords;
  int totalItemCount;
  bool isSampleData;

  GetTaxByUniversalIdResponse({
    required this.universalId,
    required this.name,
    required this.rate,
    required this.isDefault,
    required this.isCompound,
    required this.isArchived,
    required this.isDeleted,
    required this.totalRecords,
    required this.totalItemCount,
    required this.isSampleData,
  });

  factory GetTaxByUniversalIdResponse.fromJson(Map<String, dynamic> json) => GetTaxByUniversalIdResponse(
    universalId: json["universalId"],
    name: json["name"],
    rate: json["rate"],
    isDefault: json["isDefault"],
    isCompound: json["isCompound"],
    isArchived: json["isArchived"],
    isDeleted: json["isDeleted"],
    totalRecords: json["totalRecords"],
    totalItemCount: json["totalItemCount"],
    isSampleData: json["isSampleData"],
  );

  Map<String, dynamic> toJson() => {
    "universalId": universalId,
    "name": name,
    "rate": rate,
    "isDefault": isDefault,
    "isCompound": isCompound,
    "isArchived": isArchived,
    "isDeleted": isDeleted,
    "totalRecords": totalRecords,
    "totalItemCount": totalItemCount,
    "isSampleData": isSampleData,
  };
}