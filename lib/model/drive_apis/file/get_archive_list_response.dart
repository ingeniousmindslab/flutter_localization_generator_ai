class GetArchiveListResponse {
  String universalId;
  String name;
  String fileName;
  String mimeType;
  dynamic parentId;
  bool started;
  bool shared;
  bool isStared;
  bool isDeleted;
  bool isArchived;
  bool isFolder;
  String sizeWithSuffix;
  int sizeBytes;
  String createdOn;
  List<dynamic> subFolders;
  bool isDeletedPermanently;
  String createdBy;
  String updatedOn;
  int dateFilter;

  GetArchiveListResponse({
    required this.universalId,
    required this.name,
    required this.fileName,
    required this.mimeType,
    required this.parentId,
    required this.started,
    required this.shared,
    required this.isStared,
    required this.isDeleted,
    required this.isArchived,
    required this.isFolder,
    required this.sizeWithSuffix,
    required this.sizeBytes,
    required this.createdOn,
    required this.subFolders,
    required this.isDeletedPermanently,
    required this.createdBy,
    required this.updatedOn,
    required this.dateFilter,
  });

  factory GetArchiveListResponse.fromJson(Map<String, dynamic> json) {
    return GetArchiveListResponse(
      universalId: json['universalId'],
      name: json['name'],
      fileName: json['fileName'],
      mimeType: json['mimeType'],
      parentId: json['parentId'],
      started: json['started'],
      shared: json['shared'],
      isStared: json['isStared'],
      isDeleted: json['isDeleted'],
      isArchived: json['isArchived'],
      isFolder: json['isFolder'],
      sizeWithSuffix: json['sizeWithSuffix'],
      sizeBytes: json['sizeBytes'],
      createdOn: json['createdOn'],
      subFolders: json['subFolders'],
      isDeletedPermanently: json['isDeletedPermanently'],
      createdBy: json['createdBy'],
      updatedOn: json['updatedOn'],
      dateFilter: json['dateFilter'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['universalId'] = this.universalId;
    data['name'] = this.name;
    data['fileName'] = this.fileName;
    data['mimeType'] = this.mimeType;
    data['parentId'] = this.parentId;
    data['started'] = this.started;
    data['shared'] = this.shared;
    data['isStared'] = this.isStared;
    data['isDeleted'] = this.isDeleted;
    data['isArchived'] = this.isArchived;
    data['isFolder'] = this.isFolder;
    data['sizeWithSuffix'] = this.sizeWithSuffix;
    data['sizeBytes'] = this.sizeBytes;
    data['createdOn'] = this.createdOn;
    data['subFolders'] = this.subFolders;
    data['isDeletedPermanently'] = this.isDeletedPermanently;
    data['createdBy'] = this.createdBy;
    data['updatedOn'] = this.updatedOn;
    data['dateFilter'] = this.dateFilter;
    return data;
  }
}
