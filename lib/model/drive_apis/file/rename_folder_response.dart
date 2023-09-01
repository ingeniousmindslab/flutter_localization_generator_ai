class RenameFolderResponse {
  String universalId;
  String folderName;
  String parentFolderId;
  bool isSampleData;
  String fileName;

  RenameFolderResponse({
    required this.universalId,
    required this.folderName,
    required this.parentFolderId,
    required this.isSampleData,
    required this.fileName,
  });

  factory RenameFolderResponse.fromJson(Map<String, dynamic> json) => RenameFolderResponse(
    universalId: json["universalId"],
    folderName: json["folderName"],
    parentFolderId: json["parentFolderId"],
    isSampleData: json["isSampleData"],
    fileName: json["fileName"],
  );

  Map<String, dynamic> toJson() => {
    "universalId": universalId,
    "folderName": folderName,
    "parentFolderId": parentFolderId,
    "isSampleData": isSampleData,
    "fileName": fileName,
  };
}