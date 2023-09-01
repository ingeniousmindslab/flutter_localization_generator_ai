class GetListAllUsersResponse {
  String universalId;
  String fullName;
  bool isArchived;

  GetListAllUsersResponse({
    required this.universalId,
    required this.fullName,
    required this.isArchived,
  });

  factory GetListAllUsersResponse.fromJson(Map<String, dynamic> json) => GetListAllUsersResponse(
    universalId: json["universalId"],
    fullName: json["fullName"],
    isArchived: json["isArchived"],
  );

  Map<String, dynamic> toJson() => {
    "universalId": universalId,
    "fullName": fullName,
    "isArchived": isArchived,
  };
}