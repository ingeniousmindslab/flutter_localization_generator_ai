class GetReceiptsListResponse {
  int status;
  String dueDate;
  String universalId;
  String name;

  GetReceiptsListResponse({
    required this.status,
    required this.dueDate,
    required this.universalId,
    required this.name,
  });

  factory GetReceiptsListResponse.fromJson(Map<String, dynamic> json) => GetReceiptsListResponse(
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