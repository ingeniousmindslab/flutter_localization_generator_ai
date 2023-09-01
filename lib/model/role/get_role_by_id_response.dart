class GetRoleByIdResponse {
  String universalId;
  String name;
  bool isArchived;
  int totalItemCount;
  List<GetRoleByIdResponseUserRole> userRoles;

  GetRoleByIdResponse({
    required this.universalId,
    required this.name,
    required this.isArchived,
    required this.totalItemCount,
    required this.userRoles,
  });

  factory GetRoleByIdResponse.fromJson(Map<String, dynamic> json) => GetRoleByIdResponse(
    universalId: json["universalId"],
    name: json["name"],
    isArchived: json["isArchived"],
    totalItemCount: json["totalItemCount"],
    userRoles: List<GetRoleByIdResponseUserRole>.from(json["userRoles"].map((x) => GetRoleByIdResponseUserRole.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "universalId": universalId,
    "name": name,
    "isArchived": isArchived,
    "totalItemCount": totalItemCount,
    "userRoles": List<dynamic>.from(userRoles.map((x) => x.toJson())),
  };
}

class GetRoleByIdResponseUserRole {
  String roleId;
  String userId;
  bool isArchived;
  String name;
  Role role;
  bool isSelected;

  GetRoleByIdResponseUserRole({
    required this.roleId,
    required this.userId,
    required this.isArchived,
    required this.name,
    required this.role,
    required this.isSelected,
  });

  factory GetRoleByIdResponseUserRole.fromJson(Map<String, dynamic> json) => GetRoleByIdResponseUserRole(
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