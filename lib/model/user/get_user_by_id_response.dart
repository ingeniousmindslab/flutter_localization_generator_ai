class GetUserByIdResponse {
  String universalId;
  String userName;
  String email;
  int permissionId;
  String password;
  bool isArchived;
  int totalRecords;
  int roleId;
  bool isAssigned;
  String createdOn;
  String permissionName;
  String createdByFirstName;
  bool isEmployee;
  String photo;
  String photoUrl;
  List<String> roleuniversalIds;
  String fullName;

  GetUserByIdResponse({
    required this.universalId,
    required this.userName,
    required this.email,
    required this.permissionId,
    required this.password,
    required this.isArchived,
    required this.totalRecords,
    required this.roleId,
    required this.isAssigned,
    required this.createdOn,
    required this.permissionName,
    required this.createdByFirstName,
    required this.isEmployee,
    required this.photo,
    required this.photoUrl,
    required this.roleuniversalIds,
    required this.fullName,
  });

  factory GetUserByIdResponse.fromJson(Map<String, dynamic> json) => GetUserByIdResponse(
    universalId: json["universalId"],
    userName: json["userName"],
    email: json["email"],
    permissionId: json["permissionId"],
    password: json["password"],
    isArchived: json["isArchived"],
    totalRecords: json["totalRecords"],
    roleId: json["roleId"],
    isAssigned: json["isAssigned"],
    createdOn: json["createdOn"],
    permissionName: json["permissionName"],
    createdByFirstName: json["createdByFirstName"],
    isEmployee: json["isEmployee"],
    photo: json["photo"],
    photoUrl: json["photoURL"],
    roleuniversalIds: List<String>.from(json["roleuniversalIds"].map((x) => x)),
    fullName: json["fullName"],
  );

  Map<String, dynamic> toJson() => {
    "universalId": universalId,
    "userName": userName,
    "email": email,
    "permissionId": permissionId,
    "password": password,
    "isArchived": isArchived,
    "totalRecords": totalRecords,
    "roleId": roleId,
    "isAssigned": isAssigned,
    "createdOn": createdOn,
    "permissionName": permissionName,
    "createdByFirstName": createdByFirstName,
    "isEmployee": isEmployee,
    "photo": photo,
    "photoURL": photoUrl,
    "roleuniversalIds": List<dynamic>.from(roleuniversalIds.map((x) => x)),
    "fullName": fullName,
  };
}