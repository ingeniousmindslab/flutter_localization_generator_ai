class CategoryListResponse {
  int status;
  String dueDate;
  String universalId;
  String name;

  CategoryListResponse({
    required this.status,
    required this.dueDate,
    required this.universalId,
    required this.name,
  });

  factory CategoryListResponse.fromJson(Map<String, dynamic> json) => CategoryListResponse(
    status: json["status"],
    dueDate: json["dueDate"],
    universalId: json["universalId"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "dueDate": dueDate,
    "universalId": universalId,
    "name": name,
  };
}