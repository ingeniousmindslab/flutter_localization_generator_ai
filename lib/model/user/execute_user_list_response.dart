class ExecuteUserListResponse {
  String universalId;
  String fullName;
  bool isArchived;
  int totalRecords;
  String createdOn;
  String updatedOn;
  int permissionId;
  String permissionName;
  String createdByFirstName;
  int totalItemCount;

  ExecuteUserListResponse({
    required this.universalId,
    required this.fullName,
    required this.isArchived,
    required this.totalRecords,
    required this.createdOn,
    required this.updatedOn,
    required this.permissionId,
    required this.permissionName,
    required this.createdByFirstName,
    required this.totalItemCount,
  });

  factory ExecuteUserListResponse.fromJson(Map<String, dynamic> json) => ExecuteUserListResponse(
    universalId: json["universalId"],
    fullName: json["fullName"],
    isArchived: json["isArchived"],
    totalRecords: json["totalRecords"],
    createdOn: json["createdOn"],
    updatedOn: json["updatedOn"],
    permissionId: json["permissionId"],
    permissionName: json["permissionName"],
    createdByFirstName: json["createdByFirstName"],
    totalItemCount: json["totalItemCount"],
  );

  Map<String, dynamic> toJson() => {
    "universalId": universalId,
    "fullName": fullName,
    "isArchived": isArchived,
    "totalRecords": totalRecords,
    "createdOn": createdOn,
    "updatedOn": updatedOn,
    "permissionId": permissionId,
    "permissionName": permissionName,
    "createdByFirstName": createdByFirstName,
    "totalItemCount": totalItemCount,
  };
}