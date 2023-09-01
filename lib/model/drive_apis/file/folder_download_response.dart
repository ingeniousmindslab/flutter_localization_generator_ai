class FolderDownloadResponse {
  String filterPath;
  String name;
  String parentId;
  String mimeType;

  FolderDownloadResponse({
    required this.filterPath,
    required this.name,
    required this.parentId,
    required this.mimeType,
  });

  factory FolderDownloadResponse.fromJson(Map<String, dynamic> json) => FolderDownloadResponse(
    filterPath: json["filterPath"],
    name: json["name"],
    parentId: json["parentId"],
    mimeType: json["mimeType"],
  );

  Map<String, dynamic> toJson() => {
    "filterPath": filterPath,
    "name": name,
    "parentId": parentId,
    "mimeType": mimeType,
  };
}