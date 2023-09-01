class GetRolesListIdResponse {
  String universalId;
  String name;
  bool isArchived;
  int totalItemCount;
  List<GetRolesListIdResponseUserRole> userRoles;

  GetRolesListIdResponse({
    required this.universalId,
    required this.name,
    required this.isArchived,
    required this.totalItemCount,
    required this.userRoles,
  });

  factory GetRolesListIdResponse.fromJson(Map<String, dynamic> json) => GetRolesListIdResponse(
    universalId: json["universalId"],
    name: json["name"],
    isArchived: json["isArchived"],
    totalItemCount: json["totalItemCount"],
    userRoles: List<GetRolesListIdResponseUserRole>.from(json["userRoles"].map((x) => GetRolesListIdResponseUserRole.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "universalId": universalId,
    "name": name,
    "isArchived": isArchived,
    "totalItemCount": totalItemCount,
    "userRoles": List<dynamic>.from(userRoles.map((x) => x.toJson())),
  };
}

class GetRolesListIdResponseUserRole {
  String roleId;
  String userId;
  bool isArchived;
  String name;
  Role role;
  bool isSelected;

  GetRolesListIdResponseUserRole({
    required this.roleId,
    required this.userId,
    required this.isArchived,
    required this.name,
    required this.role,
    required this.isSelected,
  });

  factory GetRolesListIdResponseUserRole.fromJson(Map<String, dynamic> json) => GetRolesListIdResponseUserRole(
    roleId: json["roleId"],
    userId: json["userId"],
    isArchived: json["isArchived"],
    name: json["name"],
    role: Role.fromJson(json["role"]),
    isSelected: json["isSelected"],
  );

  Map<String, dynamic> toJson() => {
    "roleId": roleId,
    "userId": userId,
    "isArchived": isArchived,
    "name": name,
    "role": role.toJson(),
    "isSelected": isSelected,
  };
}

class Role {
  String universalId;
  String name;
  bool isArchived;
  int totalItemCount;
  List<RoleUserRole> userRoles;

  Role({
    required this.universalId,
    required this.name,
    required this.isArchived,
    required this.totalItemCount,
    required this.userRoles,
  });

  factory Role.fromJson(Map<String, dynamic> json) => Role(
    universalId: json["universalId"],
    name: json["name"],
    isArchived: json["isArchived"],
    totalItemCount: json["totalItemCount"],
    userRoles: List<RoleUserRole>.from(json["userRoles"].map((x) => RoleUserRole.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "universalId": universalId,
    "name": name,
    "isArchived": isArchived,
    "totalItemCount": totalItemCount,
    "userRoles": List<dynamic>.from(userRoles.map((x) => x.toJson())),
  };
}

class RoleUserRole {
  String roleId;
  String userId;
  bool isArchived;
  String name;
  String role;
  bool isSelected;

  RoleUserRole({
    required this.roleId,
    required this.userId,
    required this.isArchived,
    required this.name,
    required this.role,
    required this.isSelected,
  });

  factory RoleUserRole.fromJson(Map<String, dynamic> json) => RoleUserRole(
    roleId: json["roleId"],
    userId: json["userId"],
    isArchived: json["isArchived"],
    name: json["name"],
    role: json["role"],
    isSelected: json["isSelected"],
  );

  Map<String, dynamic> toJson() => {
    "roleId": roleId,
    "userId": userId,
    "isArchived": isArchived,
    "name": name,
    "role": role,
    "isSelected": isSelected,
  };
}