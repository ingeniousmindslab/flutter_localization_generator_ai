class GetImportListResponse {
  String universalId;
  String fileName;
  String fileUrl;
  String fileSize;
  int moduleId;
  String moduleName;
  bool status;
  String createdBy;
  String createdByUserName;
  String createdOn;
  bool isDeleted;
  int businessId;

  GetImportListResponse({
    required this.universalId,
    required this.fileName,
    required this.fileUrl,
    required this.fileSize,
    required this.moduleId,
    required this.moduleName,
    required this.status,
    required this.createdBy,
    required this.createdByUserName,
    required this.createdOn,
    required this.isDeleted,
    required this.businessId,
  });

  factory GetImportListResponse.fromJson(Map<String, dynamic> json) => GetImportListResponse(
    universalId: json["universalId"],
    fileName: json["fileName"],
    fileUrl: json["fileUrl"],
    fileSize: json["fileSize"],
    moduleId: json["moduleId"],
    moduleName: json["moduleName"],
    status: json["status"],
    createdBy: json["createdBy"],
    createdByUserName: json["createdByUserName"],
    createdOn: json["createdOn"],
    isDeleted: json["isDeleted"],
    businessId: json["businessId"],
  );

  Map<String, dynamic> toJson() => {
    "universalId": universalId,
    "fileName": fileName,
    "fileUrl": fileUrl,
    "fileSize": fileSize,
    "moduleId": moduleId,
    "moduleName": moduleName,
    "status": status,
    "createdBy": createdBy,
    "createdByUserName": createdByUserName,
    "createdOn": createdOn,
    "isDeleted": isDeleted,
    "businessId": businessId,
  };
}